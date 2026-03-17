<html>
	<head>
        <title>Add Employee</title>
		</head>
		<body>
			
			<h2>Add Employee</h2>
            
            <form action="/addemp" method="post">
                <label>Emp Id: <input type="text" name="empId" required /></label><br />
                <label>Name: <input type="text" name="name" required /></label><br />
                <label>Email: <input type="email" name="email" required /></label><br />
                <label>Contact Number: <input type="text" name="contactNo" required /></label><br />
                <label>City: <input type="text" name="city" required /></label><br />
                <button type="submit">Add Employee</button>
            </form>
            
            <p><a href="/home">Back to Home</a></p>
			</body>
	</html>