document.addEventListener("DOMContentLoaded", function () {

    // Dark Mode Toggle with Local Storage
    function toggleTheme() {
        document.body.classList.toggle("dark-mode");
        localStorage.setItem("theme", document.body.classList.contains("dark-mode") ? "dark-mode" : "light-mode");
    }

    // Load Saved Theme Preference
    if (localStorage.getItem("theme") === "dark-mode") {
        document.body.classList.add("dark-mode");
    }

    // Responsive Navigation Menu
    const navToggle = document.createElement("button");
    navToggle.innerHTML = "☰";
    navToggle.className = "nav-toggle";
    document.querySelector("nav").prepend(navToggle);

    navToggle.addEventListener("click", function () {
        document.querySelector("nav ul").classList.toggle("active");
    });

    // Smooth Scrolling to Sections
    document.querySelectorAll("nav a").forEach(link => {
        link.addEventListener("click", function (e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute("href"));
            target.scrollIntoView({ behavior: "smooth" });
        });
    });

    // Auto-scroll Chatbot Messages
    function appendMessage(text, className) {
        const chatbox = document.getElementById("chatbox");
        let message = document.createElement("p");
        message.className = className;
        message.innerText = text;
        chatbox.appendChild(message);
        chatbox.scrollTop = chatbox.scrollHeight; // Auto-scroll
    }

    // Chatbot Interaction
    function sendMessage() {
        let userInput = document.getElementById("userInput").value.trim();
        if (!userInput) return;

        appendMessage("You: " + userInput, "user-message");

        setTimeout(() => {
            let response = getBotResponse(userInput);
            appendMessage("Bot: " + response, "bot-message");
        }, 500);

        document.getElementById("userInput").value = "";
    }

    function getBotResponse(input) {
        const responses = {
            "hello": "Hi! How can I assist you today?",
            "services": "We offer healthcare IT, analytics, and telemedicine solutions.",
            "appointment": "Click on 'Get Started' to book an appointment.",
            "contact": "Reach out via our contact form or email support."
        };
        return responses[input.toLowerCase()] || "I'm not sure. Could you provide more details?";
    }

    window.sendMessage = sendMessage;
});