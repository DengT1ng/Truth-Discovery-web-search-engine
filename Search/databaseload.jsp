<%@ page language="java" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="db.*" %>

<%@ page import="java.lang.*" %>



<%
	
		String filename="";
		String filenames[]=null;
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con = DriverManager.getConnection("jdbc:odbc:truth","sa","");
		Statement st = con.createStatement();
		st.executeUpdate("truncate table Maindb");
		File path=new File("C:/Program Files/Apache Software Foundation/Tomcat 5.0/webapps/Truth Finder1/DATABASE");
		File files[]=path.listFiles();
		if(files!=null)
		{
		
		
			for(int i=0;i<files.length;i++)
			{
			
				
				if(files.length==0)
				{
					out.println("");
				}
				else
				{
//					System.out.println("compiling");
					try
					{
					
						filename=files[i].toString();
						String names=filename.replace('\\','&');
						filenames=names.split("&");
						
						
						//out.println("hti");
						
					}
					catch (Exception ee)
					{
						ee.printStackTrace();
					}
					st.executeUpdate("insert into MainDb values('"+filenames[filenames.length-1]+"','"+filename+"')");
					
				}
			}
		}
		else
		{
			//proxy1.jLabel3.setText("completed.....");
		}
	response.sendRedirect("PRAdbload.jsp");
%>