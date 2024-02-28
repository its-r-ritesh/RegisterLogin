<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="outer-box">
        <div class="inner-box">
            <header class="signup-header">
                <h1>Sign Up</h1>
                <p>It just takes 30 Seconds</p>
            </header>
           
            <main class="signup-body">
               <form action="Register" method="post">
                <p>
                    <label for="fullname">Full Name : </label>
                    <input type="text" name="name1" id="fullname" required placeholder="please enter full name">
                </p>
                <p><label for="email"> Email ID : </label>
                    <input type="email" name="email1" id="email" placeholder="please enter email id" required></p>
                <p><label for="password">Password : </label>
                <input type="password" name="password1" id="password" placeholder="At least 8 characters" required></p>
                <p><input type="submit" id="submit" value="Create Account"></p>
               </form> 
            </main>
            <footer class="signup-footer">
                <p>
                    Already have an Account?<a href="login.jsp">Login</a>
                </p>
            </footer>
        </div>
        <div class="circle c1"></div>
        <div class="circle c2"></div>
    </div>
</body>
</html>