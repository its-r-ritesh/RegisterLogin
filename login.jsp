<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	 <div class="outer-box">
        <div class="inner-box">
            <header id="login-header">
                <h1>Login</h1>
            </header >
            <main id="main">
                <form action="Login" method="post">
                <p>
                    <label for="email">Email Id: </label>
                    <input type="email" name="email1" id="email" placeholder="Enter email id " required>
                </p>
                <p>
                    <label for="password"> Password: </label>
                    <input type="password" name="password1" id="password" placeholder="Password" required>
                </p>
                <p>
                    <input type="submit" id="submit" value="Login">
                </p>
                </form>
            </main>
            <footer class="signup-footer">
                <p>
                    Create an Account?<a href="register.jsp">Sign up</a>
                </p>
            </footer>
        </div>
        <div class="circle c1"></div>
        <div class="circle c2"></div>
    </div>
</body>
</html>