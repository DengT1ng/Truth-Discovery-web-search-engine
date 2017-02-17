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
		st.executeUpdate("truncate table PRA");
		st.executeUpdate("truncate table support");
		ResultSet rs=st.executeQuery("select location from Maindb");
		String location="";
		while(rs.next())
		{
			location+=rs.getString(1)+"#";
		}
		String locations[]=location.split("#");
		for(int j=0;j<locations.length;j++)
		{
		File path=new File(locations[j]);

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
						
						
					//	out.println("hti");
						
					}
					catch (Exception ee)
					{
						ee.printStackTrace();
					}
					//String drive=locations[j].replace('\\','#');
					//out.println(drive);
				//	String drives=drive.split("#");
				//st.executeUpdate("insert into PRA values('"+filenames[filenames.length-2]+"','"+filenames[filenames.length-1]+"','"+filename+"',0)");
					st.executeUpdate("insert into PRA values('"+filenames[filenames.length-2]+"','"+filenames[filenames.length-1]+"','"+filename+"',0)");
					st.executeUpdate("insert into support values('"+filenames[filenames.length-2]+"','"+filenames[filenames.length-1]+"','"+filename+"','')");
				}
			}
		}
		else
		{
			//proxy1.jLabel3.setText("completed.....");
		}
	}
	response.sendRedirect("Factdb.jsp");
%>