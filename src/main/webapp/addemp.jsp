<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Employee - Employee Management System</title>
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
		padding: 20px;
		display: flex;
		justify-content: center;
		align-items: center;
	}

	.container {
		background: white;
		border-radius: 10px;
		box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
		width: 100%;
		max-width: 600px;
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

	.header {
		text-align: center;
		margin-bottom: 35px;
	}

	.header-icon {
		font-size: 40px;
		margin-bottom: 10px;
	}

	h2 {
		color: #333;
		font-size: 28px;
		margin-bottom: 8px;
	}

	.subtitle {
		color: #999;
		font-size: 14px;
	}

	.form-group {
		margin-bottom: 22px;
	}

	label {
		display: block;
		font-weight: 600;
		color: #333;
		margin-bottom: 8px;
		font-size: 14px;
	}

	input[type="text"],
	input[type="email"],
	input[type="number"] {
		width: 100%;
		padding: 12px 15px;
		border: 2px solid #e0e0e0;
		border-radius: 5px;
		font-size: 14px;
		transition: all 0.3s ease;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	input[type="text"]:focus,
	input[type="email"]:focus,
	input[type="number"]:focus {
		outline: none;
		border-color: #667eea;
		box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
		background-color: #f9f9ff;
	}

	.button-group {
		display: flex;
		gap: 15px;
		margin-top: 35px;
	}

	button {
		flex: 1;
		padding: 12px 20px;
		border: none;
		border-radius: 5px;
		font-size: 14px;
		font-weight: 600;
		cursor: pointer;
		transition: all 0.3s ease;
	}

	button[type="submit"] {
		background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
		color: white;
		box-shadow: 0 4px 12px rgba(102, 126, 234, 0.4);
	}

	button[type="submit"]:hover {
		transform: translateY(-2px);
		box-shadow: 0 6px 16px rgba(102, 126, 234, 0.6);
	}

	button[type="submit"]:active {
		transform: translateY(0);
	}

	.btn-secondary {
		background: #f0f0f0;
		color: #333;
		text-decoration: none;
		display: flex;
		align-items: center;
		justify-content: center;
		transition: all 0.3s ease;
	}

	.btn-secondary:hover {
		background: #e0e0e0;
		transform: translateY(-2px);
	}

	.back-link {
		text-decoration: none;
		color: inherit;
	}

	.form-hint {
		font-size: 12px;
		color: #999;
		margin-top: 4px;
	}

	.required {
		color: #e74c3c;
	}

	.header-top {
		display: flex;
		justify-content: space-between;
		align-items: center;
		margin-bottom: 30px;
	}

	.header-title {
		flex: 1;
	}

	.logout-btn {
		background: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%);
		color: white;
		padding: 12px 30px;
		border: none;
		border-radius: 5px;
		font-size: 14px;
		font-weight: 600;
		cursor: pointer;
		text-decoration: none;
		display: inline-block;
		transition: all 0.3s ease;
		box-shadow: 0 4px 12px rgba(231, 76, 60, 0.4);
	}

	.logout-btn:hover {
		transform: translateY(-2px);
		box-shadow: 0 6px 16px rgba(231, 76, 60, 0.6);
	}

	@media (max-width: 480px) {
		.container {
			padding: 30px 20px;
		}

		h2 {
			font-size: 24px;
		}

		.button-group {
			flex-direction: column;
		}

		button, .btn-secondary {
			width: 100%;
		}
	}
</style>
</head>
<body>
	<div class="container">
		<div class="header-top">
			<div class="header-title">
				<div class="header">
					<div class="header-icon"</div>
					<h2>Add New Employee</h2>
					<p class="subtitle">Fill in the details to register a new employee</p>
				</div>

		<form action="/addemp" method="post">
			<div class="form-group">
				<label for="empId">Employee ID <span class="required">*</span></label>
				<input type="text" id="empId" name="empId" placeholder="e.g., EMP001" required />
				<div class="form-hint">Unique identifier for the employee</div>
			</div>

			<div class="form-group">
				<label for="name">Full Name <span class="required">*</span></label>
				<input type="text" id="name" name="name" placeholder="e.g., John Doe" required />
			</div>

			<div class="form-group">
				<label for="email">Email Address <span class="required">*</span></label>
				<input type="email" id="email" name="email" placeholder="e.g., john@example.com" required />
			</div>

			<div class="form-group">
				<label for="contactNo">Contact Number <span class="required">*</span></label>
				<input type="text" id="contactNo" name="contactNo" placeholder="e.g., +1-234-567-8900" required />
			</div>

			<div class="form-group">
				<label for="city">City <span class="required">*</span></label>
				<input type="text" id="city" name="city" placeholder="e.g., New York" required />
			</div>

			<div class="button-group">
				<button type="submit">Add Employee</button>
				<a href="/allemp" class="btn-secondary back-link">Cancel</a>
			</div>
		</form>
	</div>
</body>
</html>