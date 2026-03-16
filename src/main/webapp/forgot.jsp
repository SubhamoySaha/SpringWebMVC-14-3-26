
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
</head>
<body>
	<h2>Forgot Password</h2>
	
	<form action="/forgot" method="post">
		<label>Username or Email: <input type="text" name="username" required /></label><br />
		<button type="submit">Send Reset Link</button>
	</form>
	<p><a href="/">Back to Login</a></p>
</body>
</html>