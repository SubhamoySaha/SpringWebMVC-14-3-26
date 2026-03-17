<%@page import="java.util.List"%>
<%@page import="com.Capgemini.SpringMVC.entity.Employee"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employee Management System</title>
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
	}

	.container {
		max-width: 1200px;
		margin: 0 auto;
	}

	.header {
		display: flex;
		justify-content: space-between;
		align-items: center;
		margin-bottom: 30px;
		background: white;
		padding: 25px;
		border-radius: 10px;
		box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	}

	.header h2 {
		color: #333;
		font-size: 28px;
	}

	.header-actions {
		display: flex;
		gap: 15px;
		align-items: center;
	}

	.add-btn {
		background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
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
		box-shadow: 0 4px 12px rgba(102, 126, 234, 0.4);
	}

	.add-btn:hover {
		transform: translateY(-2px);
		box-shadow: 0 6px 16px rgba(102, 126, 234, 0.6);
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

	.table-wrapper {
		background: white;
		border-radius: 10px;
		box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
		overflow: hidden;
	}

	table {
		width: 100%;
		border-collapse: collapse;
	}

	thead {
		background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
		color: white;
	}

	th {
		padding: 18px 15px;
		text-align: left;
		font-weight: 600;
		font-size: 13px;
		text-transform: uppercase;
		letter-spacing: 0.5px;
	}

	td {
		padding: 15px;
		border-bottom: 1px solid #f0f0f0;
		font-size: 14px;
		color: #555;
	}

	tbody tr:hover {
		background-color: #f9f9f9;
		transition: background-color 0.2s ease;
	}

	tbody tr:last-child td {
		border-bottom: none;
	}

	.actions {
		display: flex;
		gap: 8px;
		flex-wrap: wrap;
	}

	.btn {
		padding: 8px 14px;
		border: none;
		border-radius: 4px;
		font-size: 12px;
		font-weight: 600;
		cursor: pointer;
		text-decoration: none;
		display: inline-block;
		transition: all 0.2s ease;
		text-align: center;
	}

	.btn-view {
		background-color: #3498db;
		color: white;
	}

	.btn-view:hover {
		background-color: #2980b9;
		transform: translateY(-1px);
		box-shadow: 0 3px 8px rgba(52, 152, 219, 0.3);
	}

	.btn-edit {
		background-color: #27ae60;
		color: white;
	}

	.btn-edit:hover {
		background-color: #229954;
		transform: translateY(-1px);
		box-shadow: 0 3px 8px rgba(39, 174, 96, 0.3);
	}

	.btn-delete {
		background-color: #e74c3c;
		color: white;
	}

	.btn-delete:hover {
		background-color: #c0392b;
		transform: translateY(-1px);
		box-shadow: 0 3px 8px rgba(231, 76, 60, 0.3);
	}

	.empty-state {
		text-align: center;
		padding: 40px;
		color: #999;
	}

	.empty-state-icon {
		font-size: 48px;
		margin-bottom: 15px;
	}

	.empty-state p {
		font-size: 16px;
	}

	@media (max-width: 768px) {
		.header {
			flex-direction: column;
			gap: 15px;
		}

		table {
			font-size: 12px;
		}

		td, th {
			padding: 10px 8px;
		}

		.actions {
			flex-direction: column;
		}

		.btn {
			width: 100%;
		}
	}
</style>
</head>
<body>
	<div class="container">
		<div class="header">
			<h2>Employee Management System</h2>
			<div class="header-actions">
				<a href="/addemp" class="add-btn">+ Add New Employee</a>
				<a href="/logout" class="logout-btn">Logout</a>
			</div>
		</div>

		<%
		    List<Employee> employees = (List<Employee>) request.getAttribute("emplist");
		%>

		<div class="table-wrapper">
			<% if (employees != null && !employees.isEmpty()) { %>
				<table>
					<thead>
						<tr>
							<th>ID</th>
							<th>Emp ID</th>
							<th>Name</th>
							<th>Email</th>
							<th>Contact</th>
							<th>City</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<% for(Employee emp : employees) { %>
							<tr>
								<td><%= emp.getId() %></td>
								<td><%= emp.getEmpId() %></td>
								<td><strong><%= emp.getName() %></strong></td>
								<td><%= emp.getEmail() %></td>
								<td><%= emp.getContactNo() %></td>
								<td><%= emp.getCity() %></td>
								<td>
									<div class="actions">
										<a href="/viewemp?id=<%= emp.getId() %>" class="btn btn-view">View</a>
										<a href="/editemp?id=<%= emp.getId() %>" class="btn btn-edit">Edit</a>
										<a href="/deleteemp?id=<%= emp.getId() %>" class="btn btn-delete" onclick="return confirm('Are you sure you want to delete this employee?');">Delete</a>
									</div>
								</td>
							</tr>
						<% } %>
					</tbody>
				</table>
			<% } else { %>
				<div class="empty-state">
					<div class="empty-state-icon"></div>
					<p>No employees found. <a href="/addemp" style="color: #667eea; font-weight: 600;">Add one now</a></p>
				</div>
			<% } %>
		</div>
	</div>
</body>
</html>