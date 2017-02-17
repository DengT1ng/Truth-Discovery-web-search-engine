<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:truth","sa","");
Statement st=con.createStatement();
//String cate=request.getParameter("T3");
String user=request.getParameter("user");
String pass=request.getParameter("passwd");
String reenter=request.getParameter("rpasswd");
String mail=request.getParameter("mail");
String credit=request.getParameter("credit");
String address=request.getParameter("add");
String city=request.getParameter("city");
String state=request.getParameter("state");
String country=request.getParameter("country");
String mobile=request.getParameter("mobile");
//out.println(user+pass+mail+mobile+address+city+state+country);

st.executeUpdate("insert into usertable values('"+user+"','"+pass+"','"+mail+"','"+mobile+"','"+address+"','"+city+"','"+state+"','"+country+"')");
response.sendRedirect("Index.jsp");
%>