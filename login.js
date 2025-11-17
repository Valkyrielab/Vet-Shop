document.getElementById('loginForm').addEventListener('submit', function(e) {
    e.preventDefault();

    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;
    const errorMessage = document.getElementById('error-message');

    // Hardcoded credentials for demo
    const adminUser = "admin";
    const adminPass = "admin123";

    if (username === adminUser && password === adminPass) {
        alert("Login successful!");
        window.location.href = "admin-dashboard.html"; // Redirect to admin dashboard
    } else {
        errorMessage.textContent = "Invalid username or password!";
    }
});

document.getElementById('showPassword').addEventListener('change', function() {
    const passwordField = document.getElementById('password');  
    if (this.checked) {
        passwordField.type = "text";
    } else {
        passwordField.type = "password";
    }   
});

document.getElementById('forgotPassword').addEventListener('click', function(e) {
    e.preventDefault();
    alert("Password recovery is not implemented in this demo.");
});

