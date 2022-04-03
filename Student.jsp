<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.touchcore.classroom.Database"%>
<%@page import="com.touchcore.classroom.User"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.nio.file.Files"%>
<%@page import="java.nio.file.Path"%>
<%@page import="java.nio.file.Paths"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Workspace</title>
<link rel="stylesheet" href="./style.css">
</head>
<body>
<div>
    <div>
        <nav>
            <button><a href="Login.jsp">Logout</a></button>
        </nav>
    </div>
    <div>
        <fieldset style = "margin: 20px; border: 3px solid black;">
            <legend>
                <h3>List of Classes</h3>
            </legend>
            <center>
                <table border="1" cellspacing="0" cellpadding="8">
                    <tr>
                        <th>Course ID</th>
                        <th>Class Name</th>
                    </tr>
                   <% 
						Connection con = Database.getConnection();
				        String sql = "select course.courseId, courseName from course, student, user where course.courseId = student.courseId and student.email = ? and user.email = ?";
						User user = (User)request.getAttribute("user");
						
						try 
						{
							PreparedStatement ps = con.prepareStatement(sql);
							ps.setString(1, user.getEmail());
							ps.setString(2, user.getEmail());
							ResultSet rs = ps.executeQuery();
							while(rs.next())
					        {
				    %>				<tr>
				        				<td><%= rs.getString("courseId")%></td>
				        				<td><%= rs.getString("courseName")%></td>
				        			</tr>
				    <%      }
						}
						catch (SQLException e) 
						{
							e.printStackTrace();
						}
				    %>
                </table>
            </center>
        </fieldset>
    </div>
    <div>
        <fieldset style="border: 3px solid black; margin: 20px;">
            <legend>
                <h3>View Documents</h3>
            </legend>
            <center>
            <table border="1" cellspacing="0" cellpadding="8">
                <tr>
                    <th>Course ID</th>
                    <th>Document</th>
                </tr>
                <% 
				        sql = "select document.courseId, document.documentName, document.document from document, course, student where document.courseId = course.courseId and course.courseId = student.courseId and student.email = ?";
				
						try 
						{
							PreparedStatement ps = con.prepareStatement(sql);
							ps.setString(1, user.getEmail());
							ResultSet rs = ps.executeQuery();
							while(rs.next())
					        {
								Blob blob = rs.getBlob("document");
								byte[] arr = blob.getBytes(1L, (int)blob.length());
								String filePath = "E:\\Digital_Classroom_Management\\Ritika_Classroom\\FileDownload\\" + rs.getString("documentName");
								Path path = Paths.get(filePath);
								Files.write(path, arr);
				%>              <tr>
                                    <td><%=rs.getString("courseId")%></td>
                                    <td><a href="E:\\Digital_Classroom_Management\\Ritika_Classroom\\FileDownload\\<%=rs.getString("documentName")%>" download><%=rs.getString("documentName")%></a></td>
                                </tr>
                <%          }
                        }
                        catch (SQLException e) 
                        {
                            e.printStackTrace(); 
                        }
                %>
            </table>
            </center>
        </fieldset>
    </div>
</div>
</body>
</html>