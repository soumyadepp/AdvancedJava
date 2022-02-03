<%-- 
    Document   : index.jsp
    Created on : 3 Feb, 2022, 3:31:58 PM
    Author     : ghosh
--%>

<%@page import="java.sql.*"%>
<%Class.forName("org.apache.derby.jdbc.ClientDriver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Selecting data from a DB</title>
        <link rel ="stylesheet" href="./styles.css" type="text/css"/>
    </head>
    <body>
        <h1>Fetching data</h1>
        <%! public class Student{
                String url = "jdbc:derby://localhost:1527/StudentsDB";
                String username = "student1";
                String password = "student1";
                Connection con = null;
                PreparedStatement ps = null;
                ResultSet rs = null;
                public Student(){
                    try{
                        con = DriverManager.getConnection(url,username,password);
                        ps = con.prepareStatement("SELECT * FROM Students");
                        rs = ps.executeQuery();
                    }
                    catch(SQLException e){
                        System.out.println(e);
                    }
                }
                ResultSet getStudents(){
                    return this.rs;
                }
        }%>
        <table>
            <tbody>
            <th>Student Details</th>
            <% 
                Student st = new Student();
                ResultSet rs1 = st.getStudents();
             %>
            <tr>
                <td><b>ID</b></td>
                <td><b>Name</b></td>
                <td><b>Marks</b></td>
            </tr>
            <% while(rs1.next()){%>
            <tr>
                <td><%=rs1.getInt("ID")%></td>
                <td><%=rs1.getString("NAME")%></td>
                <td><%=rs1.getInt("MARKS")%></td>
            </tr>
            <%}%>
            </tbody>
        </table>
    </body>
</html>
