document.getElementById('loginForm').addEventListener('submit', function(e) {
    e.preventDefault();

    const username = document.getElementById('username').value.trim();
    const password = document.getElementById('password').value.trim();
    const role = document.getElementById('role').value;
    const errorMessage = document.getElementById('error-message');

    // Hardcoded credentials for demo
    const adminUser = { username: "admin", password: "admin123" };
    const normalUser = { username: "user", password: "user123" };

    if (role === "admin" && username === adminUser.username && password === adminUser.password) {
        alert("Admin login successful!");
        window.location.href = "admin-dashboard.html";
    } else if (role === "user" && username === normalUser.username && password === normalUser.password) {
        alert("User login successful!");
        window.location.href = "user-dashboard.html";
    } else {
        errorMessage.textContent = "Invalid credentials or role!";
    }
});