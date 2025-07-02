document.addEventListener('DOMContentLoaded', () => {
    const loginForm = document.getElementById('loginForm');
    const usernameInput = document.getElementById('username');
    const passwordInput = document.getElementById('password');
    const messageDiv = document.getElementById('message');

    loginForm.addEventListener('submit', function(event) {
        event.preventDefault(); // Prevent default form submission

        const username = usernameInput.value.trim();
        const password = passwordInput.value.trim();

        // Basic client-side validation
        if (username === '' || password === '') {
            messageDiv.textContent = 'Please enter both username and password.';
            messageDiv.className = 'mt-3 text-center text-danger'; // Bootstrap danger text
            return;
        }

        // Simulate an API call for login (replace with actual backend call)
        // For demonstration, let's say valid credentials are '1234567890' and 'password123'
        if (username === '1234567890' && password === 'password123') {
            messageDiv.textContent = 'Login successful! Redirecting...';
            messageDiv.className = 'mt-3 text-center text-success'; // Bootstrap success text
            
            // In a real application, you would redirect or load user dashboard
            setTimeout(() => {
                alert('Welcome ' + username + '!');
                // window.location.href = 'dashboard.html'; // Example redirect
            }, 1500);
        } else {
            messageDiv.textContent = 'Invalid username or password.';
            messageDiv.className = 'mt-3 text-center text-danger';
        }
    });
});
