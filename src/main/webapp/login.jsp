<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login - Employee Management System</title>
<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}

	body {
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
		background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
		min-height: 100vh;
		display: flex;
		justify-content: center;
		align-items: center;
	}

	.login-container {
		background: white;
		border-radius: 10px;
		box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
		width: 100%;
		max-width: 400px;
		padding: 40px;
		animation: slideIn 0.3s ease-out;
	}

	@keyframes slideIn {
		from {
			opacity: 0;
			transform: translateY(-20px);
		}
		to {
			opacity: 1;
			transform: translateY(0);
		}
	}

	h2 {
		text-align: center;
		color: #333;
		margin-bottom: 30px;
		font-size: 28px;
	}

	.form-group {
		margin-bottom: 20px;
	}

	label {
		display: block;
		margin-bottom: 8px;
		color: #555;
		font-weight: 500;
		font-size: 14px;
	}

	input[type="text"],
	input[type="password"] {
		width: 100%;
		padding: 12px 15px;
		border: 2px solid #e0e0e0;
		border-radius: 5px;
		font-size: 14px;
		transition: border-color 0.3s ease;
	}

	input[type="text"]:focus,
	input[type="password"]:focus {
		outline: none;
		border-color: #667eea;
		box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
	}

	.button-group {
		display: flex;
		gap: 10px;
		margin-bottom: 20px;
	}

	input[type="submit"],
	input[type="reset"] {
		flex: 1;
		padding: 12px;
		border: none;
		border-radius: 5px;
		font-size: 14px;
		font-weight: 600;
		cursor: pointer;
		transition: all 0.3s ease;
	}

	input[type="submit"] {
		background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
		color: white;
	}

	input[type="submit"]:hover {
		transform: translateY(-2px);
		box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
	}

	input[type="reset"] {
		background: #f0f0f0;
		color: #333;
	}

	input[type="reset"]:hover {
		background: #e0e0e0;
	}

	.footer-links {
		text-align: center;
		margin-top: 20px;
		font-size: 14px;
		color: #666;
	}

	.footer-links a {
		color: #667eea;
		text-decoration: none;
		font-weight: 600;
		transition: color 0.3s ease;
	}

	.footer-links a:hover {
		color: #764ba2;
		text-decoration: underline;
	}

	.divider {
		margin: 0 5px;
		color: #ccc;
	}
</style>
</head>
<body>
	<div class="login-container">
		<h2>Login</h2>
		
		<form action="login" method="post">
			<div class="form-group">
				<label for="username">Username</label>
				<input type="text" id="username" name="username" required></input>
			</div>

			<div class="form-group">
				<label for="password">Password</label>
				<input type="password" id="password" name="password" required></input>
			</div>

			<div class="button-group">
				<input type="submit" value="Login"></input>
				<input type="reset" value="Reset"></input>
			</div>
		</form>

		<div class="footer-links">
			Don't have an account? <a href="register">Register</a>
			<span class="divider">|</span>
			<a href="forgot">Forgot Password</a>
		</div>
	</div>
</body>
</html>