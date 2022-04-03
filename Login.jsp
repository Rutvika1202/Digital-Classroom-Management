<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Digital Classroom Management</title>
<link rel="stylesheet" href="./style.css">
</head>
<body>
	<div class="outer">
        <div class="container1">
            <div class="heading">
                <h3>Welcome to <br>Digital Classroom </h3>
            </div>
            <div class="para">
                <p>
                    The safest and easiest way for students to connect <br> and learn by watching
                    videos and reading books posted by the teacher's.
                </p>
                <br>
                <hr><br>
            </div>
            <div class="para">
                <p><b>Get a Free access to Digital Classroom</b></p>
                <br>
            </div>
        </div>
        <div class="container2">
            <form action="Login" method="post">
            	<table cellpadding="25" style="text-align: center;">
            		<tr>
                        <td><label for="">Email :</label></td>
                        <td><input type="email" name="email" id="" autofocus required></td>
                    </tr>
                    <tr>
                        <td><label for="">Password :</label></td>
                        <td><input type="password" name="password" id=""></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <select name="role" id="">
                                <option value="" selected hidden disabled>Role of the user</option>
                                <option value="teacher">Teacher</option>
                                <option value="student">Student</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Login"></td>
                    </tr>
                    </table>
            </form>
        </div>
    </div>
</body>
</html>