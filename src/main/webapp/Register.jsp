<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

header {
    background-color: #333;
    color: #fff;
    padding: 1em;
    text-align: center;
}

nav ul {
    list-style: none;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: space-between;
}

nav li {
    margin-right: 20px;
}

nav a {
    color: #fff;
    text-decoration: none;
}

main {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 2em;
}

.registration-form {
    background-color: #f7f7f7;
    padding: 2em;
    border: 1px solid #ddd;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    
}

.registration-form h1 {
    margin-top: 0;
}

label {
    display: block;
    margin-bottom: 10px;
}

input[type="text"], input[type="email"], input[type="tel"], input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
}

input[type="submit"] {
    background-color: #333;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #444;
}

footer {
    background-color: #333;
    color: #fff;
    padding: 1em;
    text-align: center;
    clear: both;
}

</style>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SBI Life Registration</title>
    
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="loginpage.jsp">Home</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact Us</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section class="registration-form">
            <h1>Register with SBI Life</h1>
            <form action="register" method="post">
                <label for="name">Name:</label>
                <input type="text" id="username" name="username" required="required"><br>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required="required"><br>
                <label for="phone">Phone:</label>
                <input type="tel" id="phone" name="phone" required="required"><br>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required="required"><br>
                <label for="confirm-password">Confirm Password:</label>
                <input type="password" id="confirm-password" name="confirm-password"><br>
                <input type="submit" value="Register">
                
                    <% String error = request.getParameter("error");
           if (error != null && error.equals("1")) { %>
            <p style="color: red;">Registration failed. Please try again.
            <br> password not match with confirm password</p>
            <% } %>
            
            <% String err = request.getParameter("err");
           if (err != null && err.equals("1")) { %>
            <p style="color: red;">Registration failed. Please try again.
            <br> email alredy register</p>
            <% } %>
        
        
            </form>
        </section>
    </main>
    <footer>
        <p>&copy; 2023 SBI Life Insurance Company Limited</p>
    </footer>
</body>
</html>