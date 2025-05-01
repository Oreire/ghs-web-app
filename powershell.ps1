# Define Variables
$namespace = "default"
$appName = "ghs-web-app"
$image = "docker.io/library/ghs-nginx-app20:latest"  # Replace with your built application image
$deploymentName = "ghs-web-deployment"
$serviceName = "ghs-web-service"

# Check if Kubernetes is Running
Write-Host "Checking Kubernetes Cluster Status..."
kubectl cluster-info

# Apply Kubernetes Deployment using the built web app image
Write-Host "Deploying $appName to Kubernetes..."
$deploymentYaml = @"
apiVersion: apps/v1
kind: Deployment
metadata:
  name: $deploymentName
  namespace: $namespace
spec:
  replicas: 2
  selector:
    matchLabels:
      app: $appName
  template:
    metadata:
      labels:
        app: $appName
    spec:
      containers:
      - name: $appName
        image: $image
        ports:
        - containerPort: 80
"@

$deploymentYaml | kubectl apply -f -

# Wait for deployment rollout
Write-Host "Waiting for deployment to be ready..."
kubectl rollout status deployment/$deploymentName -n $namespace

# Create Kubernetes NodePort Service
Write-Host "Creating Kubernetes NodePort Service for $deploymentName..."
$serviceYaml = @"
apiVersion: v1
kind: Service
metadata:
  name: $serviceName
  namespace: $namespace
spec:
  selector:
    app: $appName
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
      nodePort: 30080  # Choose a valid NodePort in range 30000-32767
  type: NodePort
"@

$serviceYaml | kubectl apply -f -

# Verify Service Creation
Write-Host "Checking Service Status..."
kubectl get svc -n $namespace

# Get NodePort to Access Application
$nodePort = kubectl get svc $serviceName -n $namespace -o jsonpath='{.spec.ports[0].nodePort}'
Write-Host "Application accessible via: http://<NodeIP>:$nodePort"

# Monitor Deployment Status
Write-Host "Checking Deployment Status..."
kubectl get pods -n $namespace

# View Logs for Debugging
Write-Host "Retrieving Pod Logs..."
$podName = (kubectl get pods -n $namespace -o jsonpath='{.items[0].metadata.name}')
kubectl logs $podName -n $namespace