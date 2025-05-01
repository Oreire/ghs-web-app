# ghs-web-app
Deploying Web Application for Glanik Healthcare Solutions  (GHS) Limited Using Kubernetes
docker build -t ghs-nginx-app10 .



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta
      name="description"
      content="Glanik Healthcare Solutions - Leading provider of healthcare technology and consultancy."
    />
    <title>Glanik Healthcare Solutions (GHS) Limited</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <!-- Header Section -->
    <header>
      <div class="logo">
        <img src="logo.png" alt="GHS Logo" />
      </div>
      <nav>
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#services">Services</a></li>
          <li><a href="#about">About Us</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </nav>
    </header>

    <!-- Hero Section -->
    <section id="hero">
      <h1>Empowering Healthcare with Innovation</h1>
      <p>Providing cutting-edge healthcare solutions for a better tomorrow.</p>
      <a href="#contact" class="cta-button">Get Started</a>
    </section>

    <!-- Services Section -->
    <section id="services">
      <h2>Our Services</h2>
      <div class="service-card">
        <h3>Healthcare Software Solutions</h3>
        <p>Innovative software solutions tailored for healthcare providers.</p>
      </div>
      <div class="service-card">
        <h3>Healthcare Education</h3>
        <p>
          Delivery of Healthcare-related Workshops, Traings and Education to
          Enhance Professional Competences.
        </p>
      </div>
      <div class="service-card">
        <h3>Telemedicine Solutions</h3>
        <p>Connecting patients with healthcare professionals remotely.</p>
      </div>
      <div class="service-card">
        <h3>Healthcare IT Consultancy</h3>
        <p>Expert advice on technology integration and optimization.</p>
      </div>
      <div class="service-card">
        <h3>Agency Supply Worker Solutions</h3>
        <p>Provision of Workers that are fit for Healthcare Practices.</p>
      </div>
      <div class="service-card">
        <h3>Healthcare Data Analytics</h3>
        <p>
          AI-driven insights to optimize medical processes and improve patient
          care.
        </p>
      </div>
      <div class="service-card">
        <h3>Medical Software Development</h3>
        <p>
          Customized applications for healthcare management and patient
          tracking.
        </p>
      </div>
    </section>

    <!-- Testimonials Section -->
    <section id="testimonials">
      <h2>What Our Clients Say</h2>
      <div class="testimonial">
        <p>
          "GHS transformed our healthcare operations with their innovative
          solutions!"
        </p>
        <span>- Healthcare Provider</span>
      </div>
    </section>

    <!-- Contact Section -->
    <section id="contact">
      <h2>Contact Us</h2>
      <form action="https://formspree.io/f/example" method="POST">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required />

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required />

        <label for="message">Message:</label>
        <textarea id="message" name="message" rows="4" required></textarea>

        <button type="submit">Send Message</button>
      </form>
    </section>

    <!-- Footer -->
    <footer>
      <p>&copy; 2025 Glanik Healthcare Solutions. All Rights Reserved.</p>
    </footer>

    <script src="script.js"></script>
  </body>
</html>


CSS
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}

header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: #004d99;
    padding: 15px;
}

nav ul {
    list-style: none;
    display: flex;
}

nav ul li {
    margin: 0 15px;
}

nav ul li a {
    color: white;
    text-decoration: none;
}

#hero {
    text-align: center;
    padding: 50px;
    background: url('hero-bg.jpg') no-repeat center center/cover;
    color: white;
}

.cta-button {
    display: inline-block;
    padding: 10px 20px;
    background: #ff6600;
    color: white;
    text-decoration: none;
    border-radius: 5px;
}

.service-card {
    background: white;
    padding: 20px;
    margin: 15px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
}

footer {
    text-align: center;
    padding: 20px;
    background: #004d99;
    color: white;
}
java scripts
document.addEventListener("DOMContentLoaded", function() {
    const toggleButton = document.createElement("button");
    toggleButton.textContent = "🌙 Toggle Dark Mode";
    toggleButton.style.position = "fixed";
    toggleButton.style.top = "10px";
    toggleButton.style.right = "10px";
    toggleButton.style.padding = "10px";
    toggleButton.style.background = "#ff6600";
    toggleButton.style.color = "white";
    toggleButton.style.border = "none";
    toggleButton.style.cursor = "pointer";
    document.body.appendChild(toggleButton);

    toggleButton.addEventListener("click", function() {
        document.body.classList.toggle("dark-mode");
    });
});

document.body.classList.toggle("dark-mode", {
    backgroundColor: "#333",
    color: "#fff"
});