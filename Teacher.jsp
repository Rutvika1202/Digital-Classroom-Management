<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher-Workspace</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
 	<div>
        <nav>
            <button><a href="Login.jsp">Logout</a></button>
        </nav>
    </div>
    <div class="outer">
        <div class="container1">
            <div class="heading">
                <h3>Wel-Come to <br>Teacher-Workspace </h3>
            </div>
            <div class="para">
                <p>
                    You can Create a Class , Add a student to class , <br> Upload the document in the class
                </p>
                <br>
                <hr><br>
            </div>
            <div class="para">
                <p><b>Get a Free access to Digital Classroom</b></p>
                <br>
            </div>
        </div>
        <div class="container_teacher">
            <div class="createClass">
                <fieldset>
                    <legend>
                        <h3>Create Class</h3>
                    </legend>
                    <form action="CreateClass" method="post">
                        <table cellpadding="6" style="text-align: center;">
                            <tr>
                                <td> <label for="">Class / Subject Name :</label></td>
                                <td><input type="text" name="courseName" id=""></td>
                            </tr>
                            <tr>
                                <td colspan="2"><input type="submit" value="Create Class"></td>
                            </tr>
                        </table>
                    </form>
                </fieldset>
            </div>
            <div class="addStudent">
                <fieldset>
                    <legend>
                        <h3>Add Student</h3>
                    </legend>
                    <form action="AddStudent" method="post">
                        <table cellpadding="6" style="text-align: center;">
                            <tr>
                                <td><label for="">First Name :</label></td>
                                <td><input type="text" name="firstName" id=""></td>
                            </tr>
                            <tr>
                                <td><label for="">Last Name :</label></td>
                                <td><input type="text" name="lastName" id=""></td>
                            </tr>
                            <tr>
                                <td><label for="">Student Email :</label></td>
                                <td><input type="email" name="email" id=""></td>
                            </tr>
                            <tr>
                                <td> <label for="">Class / Subject Id :</label></td>
                                <td><input type="number" name="courseId" id=""></td>
                            </tr>
                            <tr>
                                <td colspan="2"><input type="submit" value="Add Student"></td>
                            </tr>
                        </table>
                    </form>
                </fieldset>
            </div>
            <div>
                <div class="document">
                    <fieldset>
                        <legend> <h3>Upload document</h3></legend>
                        <form action="UploadDocument" method="post">
                            <table cellpadding="6" style="text-align: center;">
                                <tr>
                                	<td><label>Select File : </label></td>
                                    <td><input type="file" name="file" id=""></td>
                                </tr>
                                <tr>
                                	<td><label>Class Id : </label></td>
	                                <td><input type="number" name="courseId" id=""></td>
                           		</tr>
                                <tr>
                                    <td colspan="2"><input type="submit" value="Upload Document"></td>
                                </tr>
                            </table>
                        </form>
                    </fieldset>
                </div>
            </div>
        </div>
</body>
</html>