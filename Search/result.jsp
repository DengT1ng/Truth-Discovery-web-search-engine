<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import ="java.lang.*"%>
<%! 
String resultfiles[];
%>
<%

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con = DriverManager.getConnection("jdbc:odbc:truth","sa","");
		Statement st = con.createStatement();
	String user=(String)session.getAttribute("uname");
	String searchword=(String)application.getAttribute("text");
	
	

	%>
	<% String text=request.getParameter("textfield");
String search1=request.getParameter("search");
request.setAttribute("text",text);
request.setAttribute("search",search1);%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Fact Finder.com</title>
</head>

<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" marginheight="0" marginwidth="0" bgcolor="#FFFFFF">


<table border="0" width="100%" cellspacing="0" cellpadding="0" background="img/topbkg.gif">
  <tr>
    <td width="100%"><img border="0" src="img/topbkg.gif" width="14" height="10"></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0" background="img/midbkg.gif">
  <tr>
    <td width="50%"><img border="0" src="img/logo.gif" width="221" height="69"><img border="0" src="img/midimg.gif" width="238" height="69"></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0" background="img/linebkg.gif">
  <tr>
    <td width="99%" valign="top">
      <p align="center"><a href="Index.jsp"><img border="0" src="img/home.gif" width="120" height="27"></a><a href="AboutUs.jsp"><img border="0" src="img/aboutus.gif" width="120" height="27"></a><a href="ContactUs.jsp"><img border="0" src="img/contactus.gif" width="120" height="27"></a><a href="Products.jsp"><img border="0" src="img/products.gif" width="120" height="27"></a><a href="Services.jsp"><img border="0" src="img/services.gif" width="120" height="27"></td>
    <td width="1%" valign="top"><img border="0" src="img/spacer.gif" width="4" height="38"></td>
  </tr>
</table>
<table border="0" width="75%" cellspacing="5" cellpadding="5">
  <tr >
      				<td align='left' colspan=2 ><font size="+1" face="Book Antiqua">Welcome! </font></td>
    	</tr>
		<tr width=""  >
      <td align='left' colspan="8" ><form name="form1" method="post" action="Normal.jsp?value=again">
          <img src="images/spacer.gif" width="179" height="9">Search <img src="images/spacer.gif" width="11" height="9">
          <label>
          <input type="text" name="textfield" value="<%=searchword%>" />
		  
		 
          </label>
          <label> <img src="images/spacer.gif" width="5" height="9">
          <input type="submit" name="Submit" value="Submit">
          </label>
        </form>
          <%
			String path=request.getParameter("file");
		
			ResultSet rs=st.executeQuery("select counter from PRA where location='"+path+"' ");
			int count=0;
			while(rs.next())
			{
				count=rs.getInt(1);
			}
			count++;
			st.executeUpdate("update PRA set counter='"+count+"' where location='"+path+"'");
		
			File f=new File(path);
			BufferedReader bf=new BufferedReader(new FileReader(f));
			String line="";
			
			String content="";
			String address="";
			out.println("<br><br>");
			while((line=bf.readLine())!=null)
			{
				out.println(line+"<br>");
				
			}
			
		
	%>
      </td>
    </tr>
    <tr>
	<td colspan="8">
	
	</td>
	</tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0" background="img/botbkg.gif">
  <tr>
    <td width="100%"><img border="0" src="img/botbkg.gif" width="22" height="13"></td>
  </tr>
</table>


</body>

</html>
