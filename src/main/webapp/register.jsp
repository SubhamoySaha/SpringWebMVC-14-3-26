<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register - Employee Management System</title>
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
		padding: 20px;
	}

	.register-container {
		background: white;
		border-radius: 10px;
		box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
		width: 100%;
		max-width: 450px;
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
		margin-bottom: 10px;
		font-size: 28px;
	}

	.subtitle {
		text-align: center;
		color: #999;
		margin-bottom: 30px;
		font-size: 14px;
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
	input[type="password"],
	input[type="email"] {
		width: 100%;
		padding: 12px 15px;
		border: 2px solid #e0e0e0;
		border-radius: 5px;
		font-size: 14px;
		transition: border-color 0.3s ease;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	input[type="text"]:focus,
	input[type="password"]:focus,
	input[type="email"]:focus {
		outline: none;
		border-color: #667eea;
		box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
	}

	.password-info {
		font-size: 12px;
		color: #999;
		margin-top: 5px;
	}

	button {
		width: 100%;
		padding: 12px;
		background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
		color: white;
		border: none;
		border-radius: 5px;
		font-size: 14px;
		font-weight: 600;
		cursor: pointer;
		transition: all 0.3s ease;
		margin-top: 10px;
		box-shadow: 0 4px 12px rgba(102, 126, 234, 0.4);
	}

	button:hover {
		transform: translateY(-2px);
		box-shadow: 0 6px 16px rgba(102, 126, 234, 0.6);
	}

	button:active {
		transform: translateY(0);
	}

	.footer-links {
		text-align: center;
		margin-top: 25px;
		padding-top: 20px;
		border-top: 1px solid #f0f0f0;
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

	.icon {
		text-align: center;
		font-size: 36px;
		margin-bottom: 15px;
	}

	@media (max-width: 480px) {
		.register-container {
			padding: 30px 20px;
		}

		h2 {
			font-size: 24px;
		}
	}
</style>
</head>
<body>
	<div class="register-container">
		<div class="icon"></div>
		<h2>Create Account</h2>
		<p class="subtitle">Join our Employee Management System</p>

		<form action="/register" method="post">
			<div class="form-group">
				<label for="username">Username</label>
				<input type="text" id="username" name="username" placeholder="Enter your username" required />
			</div>

			<div class="form-group">
				<label for="password">Password</label>
				<input type="password" id="password" name="password" placeholder="Enter a strong password" required />
				<div class="password-info">✓ Password must be at least 6 characters</div>
			</div>

			<button type="submit">Create Account</button>
		</form>

		<div class="footer-links">
			Already have an account? <a href="/">Login Here</a>
		</div>
	</div>
</body>
</html>