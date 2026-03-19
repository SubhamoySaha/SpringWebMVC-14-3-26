<%@page import="com.Capgemini.SpringMVC.entity.Employee"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Employee - Employee Management System</title>
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

	.detail-group {
		margin-bottom: 25px;
		padding-bottom: 20px;
		border-bottom: 1px solid #eee;
	}

	.detail-group:last-child {
		border-bottom: none;
		margin-bottom: 0;
		padding-bottom: 0;
	}

	label {
		display: block;
		font-weight: 600;
		color: #666;
		margin-bottom: 6px;
		font-size: 13px;
		text-transform: uppercase;
		letter-spacing: 0.5px;
	}

	.detail-value {
		color: #333;
		font-size: 16px;
		font-weight: 500;
		padding: 12px;
		background: #f8f9fa;
		border-radius: 6px;
	}

	.actions {
		display: flex;
		gap: 12px;
		margin-top: 30px;
		padding-top: 25px;
		border-top: 2px solid #eee;
	}

	.btn {
		flex: 1;
		padding: 12px 20px;
		border: none;
		border-radius: 6px;
		font-size: 14px;
		font-weight: 600;
		cursor: pointer;
		transition: all 0.3s ease;
		text-decoration: none;
		display: inline-block;
		text-align: center;
	}

	.btn-edit {
		background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
		color: white;
	}

	.btn-edit:hover {
		transform: translateY(-2px);
		box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
	}

	.btn-back {
		background: #e9ecef;
		color: #333;
	}

	.btn-back:hover {
		background: #dee2e6;
		transform: translateY(-2px);
	}

	.no-employee {
		text-align: center;
		color: #999;
		padding: 40px 20px;
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
			<h2>Employee Details</h2>
			<p class="subtitle">View employee information</p>
		</div>

		<div class="detail-group">
			<label>Employee ID</label>
			<div class="detail-value"><%=employee.getEmpId()%></div>
		</div>

		<div class="detail-group">
			<label>Name</label>
			<div class="detail-value"><%=employee.getName()%></div>
		</div>

		

		<div class="detail-group">
			<label>Email</label>
			<div class="detail-value"><%=employee.getEmail()%></div>
		</div>
		
		<div class="detail-group">
					<label>Contact Number</label>
					<div class="detail-value"><%=employee.getContactNo()%></div>
				</div>

		


		<div class="actions">
			<a href="/editemp?id=<%=employee.getId()%>" class="btn btn-edit">Edit Employee</a>
			<a href="/allemp" class="btn btn-back">Back to List</a>
		</div>

		<%
			} else {
		%>
		<div class="no-employee">
			<h3>Employee Not Found</h3>
			<p>The employee you are looking for does not exist.</p>
			<a href="/allemp" class="btn btn-back" style="margin-top: 20px;">Back to Employee List</a>
		</div>
		<%
			}
		%>
	</div>
</body>
</html>
