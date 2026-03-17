<%@page import="java.util.List"%>
<%@page import="com.Capgemini.SpringMVC.entity.Employee"%>
<html>
	<body>
		
		<a href="/addemp">Add Employee</a> 
		<h2>View Employees</h2>
		
		<%
		    List<Employee> employees = (List<Employee>) request.getAttribute("emplist");
		%>
		
		<table>
			<tr>
				<th>Id</th>		
				<th>Emp Id<th>
				<th>Name</th>
				<th>Email</th>
				<th>Contact Number</th>
				<th>City</th>
			</tr>		
            <% for(Employee emp : employees) { %>
				
				<tr>
				    <td><%= emp.getId() %></td>
                    <td><%= emp.getEmpId() %></td>
                    <td><%= emp.getName() %></td>
					<td><%= emp.getContactNo() %></td>
                    <td><%= emp.getEmail() %></td>
               
                    <td><%= emp.getCity() %></td>
				</tr>
				<% } %>
				
				</table>
				
			</body>
			
			</html>