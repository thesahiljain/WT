<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Statement stmt = DriverManager.getConnection("jdbc:mysql://localhost/student", "root", "1998").createStatement();
                out.println("Connected to database!<br>");
                
                String name = request.getParameter("name");
                String rollno = request.getParameter("rollno");
                
                out.println("Name : " + name + " Roll No : " + rollno + "<br>");
                
                if(request.getParameter("insert") != null){
                    out.println("Insert Clicked!<br>");
                    stmt.execute("insert into details values('" + name + "', '" + rollno + "');");
                }
                else if(request.getParameter("delete") != null){
                    out.println("Delete Clicked!<br>");
                    stmt.execute("delete from details where rollno='"+rollno+"';");
                }
                else if(request.getParameter("update") != null){
                    out.println("Update Clicked!<br>");
                    stmt.execute("update details set name='"+name+"' where rollno='"+rollno+"';");
                }
                else if(request.getParameter("display") != null){
                    out.println("Display Clicked!<br>");
                    ResultSet rs = stmt.executeQuery("select * from details");
                    while(rs.next())
                        out.println(rs.getString("name")+"\t"+rs.getString("rollno")+"<br>");
                }
            }catch(Exception e){
                out.println("Error occured! : " + e.getLocalizedMessage() + "<br>");
            }
        %>
        <form action="home.jsp">
            <input type="submit" value="Home"/>
        </form>
    </body>
</html>
