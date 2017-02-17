<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import ="java.lang.*"%>
<%! 
String resultfiles[];
int retrive;
String factlength;
%>
<%
String result="";
String valu=request.getParameter("value");
String searchword="";
factlength=(String)application.getAttribute("fact");
int fac=Integer.parseInt(factlength);
int retrive=fac-2;
if(valu.equalsIgnoreCase("redirect"))
{
	searchword=(String)application.getAttribute("text");

}
else
{
		searchword=(String)application.getAttribute("text");
}
	
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:truth","sa","");
	Statement st=con.createStatement();

	
	String method=(String)request.getAttribute("method");
	String user=(String)session.getAttribute("uname");
	ResultSet rs=st.executeQuery("select location from support where about='"+searchword+"' order by  support desc");
	String location="";
	
		while(rs.next())
		{
			result+=rs.getString(1)+"#";
		}
	

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
      				<td align='left'  ><font size="+1" face="Book Antiqua">Welcome! </font></td>
					<td align='right' colspan=7  width="100%"><a href="Search.jsp" ><font size="+1" face="Book Antiqua" color="green">Back to Search! </font></a></td
    	></tr>
		<tr width=""  >
      <td align='left' colspan="8" ><form name="form1" method="post" action="Truthalgorithm.jsp?value=again">
          <img src="images/spacer.gif" width="179" height="9">Search <img src="images/spacer.gif" width="11" height="9">
          <label>
          <input type="text" name="textfield" value="<%=searchword%>" />
		   <%
		  // String value1=request.getParameter("textfield");
		   //session.setAttribute("text",value1);%>
          </label>
          <label> <img src="images/spacer.gif" width="5" height="9">
          <input type="submit" name="Submit" value="Submit">
          </label>
        </form>
          <%
	resultfiles=result.split("#");
	
		for(int i=0;i<5;i++)
			{
		//	out.println(i);
			File f=new File(resultfiles[i]);
			String seperatefile=resultfiles[i].replace('\\','&');
			String filenamee[]=seperatefile.split("&");
			
			BufferedReader bf=new BufferedReader(new FileReader(f));
			String line="";
			String page1=filenamee[filenamee.length-1].replaceAll(".txt","");
			String add=resultfiles[i].replaceAll(" ","+");
			out.println("<a href=result.jsp?file="+add+">" +page1+"<br></a>");
			String content="";
			String address="";
			while((line=bf.readLine())!=null)
			{
				content+=line+"\t";
				address=line;
			}
			out.println(content.substring(0,200)+"<br>");
			out.println("<link href=''>"+"<font color='green'>"+address+"</font></link><br><br>");
			//out.println(address);
			address="";
			}
		application.setAttribute("text",searchword);
		
	%>
      </td>
    </tr>
	<tr>
	<td colspan="8">
	<table align="center">
	<tr><td><img src="images/truth.bmp" width="200" height="100"></td></tr>
	<tr> <td align="center" > <a href="Truthalgorithm.jsp?value=null"> <font color="#FF0000"> 1 </a> <a href="Truthremaining.jsp?value=next"><font color="#FF0000"> &nbsp;2 </a></td></tr>
	</table>
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
