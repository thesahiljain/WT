<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student</title>
        <style>
            input{
                width:100px;
            }
        </style>
    </head>
    <body>
        <form action="result.jsp">
            <table>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" placeholder="Enter name"/></td>
                </tr>
                <tr>
                    <td>Roll Number</td>
                    <td><input type="text" name="rollno" placeholder="Enter roll number"</td>
                </tr>
                <tr>
                    <td><input type="submit" name="insert" value="Insert"/></td>
                    <td><input type="submit" name="delete" value="Delete"/></td>
                </tr>
                <tr>
                    <td><input type="submit" name="update" value="Update"/></td>
                    <td><input type="submit" name="display" value="Display"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
