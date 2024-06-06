<!DOCTYPE html>
<html>
<head>
	<title>SBI Life Insurance - Welcome</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="container">
		<header>
			<h1>SBI Life Insurance</h1>
			<p>Insurance products and services tailored to your needs</p>
		</header>
		<main>
			<section class="about-us">
				<h2>About Us</h2>
				<p>We offer a range of insurance products and services, including term insurance, disability income insurance, and medical insurance.</p>
				<p>We also offer financial institutions group credit life insurance and group credit disability income insurance.</p>
			</section>
			<section class="login-section">
				<h1>Login</h1>
				<form action="login" method="post">
					<label for="email">Email Address:</label>
					<input type="email" id="email" name="email" required="required"><br><br>
					<label for="password">Password:</label>
					<input type="password" id="password" name="password"  required="required"><br><br>
					<input type="submit" value="Login">
					
	      <% String error = request.getParameter("error");
            if (error != null && error.equals("1")) { %>
                <p style="color: red;">Invalid email or password. Please try again.</p>
        <% } %>
        
     	
					<p><a href="forgetPassword.html">Forgot Password?</a></p>
				</form>
			</section>
			<section class="register-section">
				<h2>Register</h2>
				<p>Don't have an account? Register now and get access to our full range of services</p>
				<a href="Register.jsp" class="btn"> 
				<button>Register Now</button>
				</a>
			</section>
		</main>
		<footer>
			<p>&copy; 2024 SBI Life Insurance. All rights reserved.</p>
		</footer>
	</div>
</body>
</html>