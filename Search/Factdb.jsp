<%@ page language="java" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="db.*" %>

<%@ page import="java.lang.*" %>



<%
	
		String filename="";
		String filename1="";
		String filenames[]=null;
		String filenames1[]=null;
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con = DriverManager.getConnection("jdbc:odbc:truth","sa","");
		Statement st = con.createStatement();
		st.executeUpdate("truncate table Factdb");
		File path=new File("C:/Program Files/Apache Software Foundation/Tomcat 5.0/webapps/Truth Finder1/Fact");
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
						
						if(files[i].isDirectory())
						{
							File path1=new File(filename);
							File files2[]=path1.listFiles();
							if(files2!=null)
							{
								for(int j=0;j<files2.length;j++)
								{
									if(files2.length==0)
									{
										out.println("");
									}
									else
									{
//										System.out.println("compiling");
									
										filename1=files2[j].toString();
										
										String names1=filename1.replace('\\','&');
										
										filenames1=names1.split("&");
										out.println(filenames1[filenames1.length-1]+"<br>");
									
									st.executeUpdate("insert into FactDb values('"+filenames1[filenames1.length-2]+"','"+filenames1[filenames1.length-1]+"','"+filename1+"',0)");
									
									}
								}
							}
						
						}
					}
					catch (Exception ee)
					{
						ee.printStackTrace();
					}
					//st.executeUpdate("insert into MainDb values('"+filenames1[filenames1.length-1]+"','"+filename1+"')");
					
					
				}
			}
		}
		
	response.sendRedirect("Search.jsp");
%>