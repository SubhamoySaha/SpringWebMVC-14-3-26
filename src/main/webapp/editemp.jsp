<%@page import="com.Capgemini.SpringMVC.entity.Employee"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Employee - Employee Management System</title>
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

	input:disabled {
		background-color: #f5f5f5;
		color: #999;
		cursor: not-allowed;
		border-color: #ddd;
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

	.disabled-hint {
		font-size: 12px;
		color: #999;
		margin-top: 4px;
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
		<%
			Employee employee = (Employee) request.getAttribute("employee");
			if (employee != null) {
		%>
		<div class="header">
			<h2>Edit Employee</h2>
			<p class="subtitle">Update employee information</p>
		</div>

		<form action="/editemp" method="post">
			<div class="form-group">
				<label for="id">Employee ID <span class="required">*</span></label>
				<input type="text" id="id" name="id" value="<%=employee.getId()%>" disabled />
				<div class="disabled-hint">Employee ID cannot be changed</div>
				<input type="hidden" name="id" value="<%=employee.getId()%>" />
			</div>

			<div class="form-group">
				<label for="empId">Emp ID <span class="required">*</span></label>
				<input type="text" id="empId" name="empId" value="<%=employee.getEmpId()%>" placeholder="e.g., EMP001" required />
				<div class="form-hint">Unique identifier for the employee</div>
			</div>

			<div class="form-group">
				<label for="name">Full Name <span class="required">*</span></label>
				<input type="text" id="name" name="name" value="<%=employee.getName()%>" placeholder="e.g., John Doe" required />
			</div>

			<div class="form-group">
				<label for="email">Email Address <span class="required">*</span></label>
				<input type="email" id="email" name="email" value="<%=employee.getEmail()%>" placeholder="e.g., john@example.com" required />
			</div>

			<div class="form-group">
				<label for="contactNo">Contact Number <span class="required">*</span></label>
				<input type="number" id="contactNo" name="contactNo" value="<%=employee.getContactNo()%>" placeholder="e.g., 9876543210" required />
			</div>

			<div class="form-group">
				<label for="city">City <span class="required">*</span></label>
				<input type="text" id="city" name="city" value="<%=employee.getCity()%>" placeholder="e.g., New York" required />
			</div>

			<div class="button-group">
				<button type="submit">Update Employee</button>
				<a href="/viewemp?id=<%=employee.getId()%>" class="btn-secondary back-link">Cancel</a>
			</div>
		</form>

		<%
			} else {
		%>
		<div style="text-align: center; color: #999; padding: 40px 20px;">
			<h3>Employee Not Found</h3>
			<p>The employee you are trying to edit does not exist.</p>
			<a href="/allemp" class="btn-secondary" style="margin-top: 20px; display: inline-block; padding: 12px 30px;">Back to Employee List</a>
		</div>
		<%
			}
		%>
	</div>
</body>
</html>
