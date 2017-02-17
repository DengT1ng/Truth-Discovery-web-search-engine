<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.StringTokenizer" %>
<%@ page import="java.lang.*" %>

<%
String table=null;
int op;
	     	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection con = DriverManager.getConnection("jdbc:odbc:truth","sa","");
			Statement st = con.createStatement();
			//String type1=request.getParameter("T3");
			String user1=request.getParameter("username");
			String pass1=request.getParameter("password");
			request.setAttribute("user1",user1);
		//	out.println(type1);
		//	out.println(pass1);
			//type1="user";
			if(user1==null||user1==""||pass1==null||pass1=="")
			{
				response.sendRedirect("Index.jsp");
			}
			//out.println("<br><b> Type :"+type1+"<br>user :"+user1+"<br> pass :"+pass1+"</b><br>"); 
			//out.println("type :"+type1);
		else
			{
				table="usertable";
				String que="select * from usertable ";
				//out.println(que+"-");
				
				ResultSet rs = st.executeQuery(que);
				op=0;
				while(rs.next())
				{
					
					String un=rs.getString(1);
					String pw=rs.getString(2);
					//out.println(un+"-");
					out.println(user1+"="+un+"++++"+pass1+"="+pw);
					if((user1.equals(un))&&(pass1.equals(pw)))
					{
						out.println("user valid");
						op=1;
						//out.println("  COrrect : "+un);
						//break;
					}


				}
				if(op==1)
				{
					//b=false;
					session.setAttribute("uname",user1);
					session.setAttribute("pwd",pass1);
				//	String ze="0";
					
					//response123 = "product.jsp";
					response.sendRedirect("Search.jsp");

					//out.println("<br>Ready to go buyshare.jsp...");
				}
				else
				{
					response.sendRedirect("Index.jsp?error=Login Incorrect");
					//out.println("<br><left>Login Incorrect.");
				}
			}
			
	//response.sendRedirect(response123);

	%>
	
	