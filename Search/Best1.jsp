<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.lang.*"%>
<%
String searchword="";
String value=(String)request.getParameter("value");
if(value.equalsIgnoreCase("again"))
{

 searchword=(String)request.getParameter("textfield");
 application.setAttribute("text",searchword);
// out.println(searchword);
}
else
{
searchword=(String)application.getAttribute("text");
}
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:truth","sa","");
	Statement st=con.createStatement();
//	searchword=(String)application.getAttribute("text");
	out.println(searchword);
	ResultSet rs=st.executeQuery("select location from Factdb where about='"+searchword+"' ");
	String location="";
	if(!rs.next())
	{
	response.sendRedirect("Errorpage.jsp");
	}
	else
	{
	 rs=st.executeQuery("select location from Factdb where about='"+searchword+"' ");
		while(rs.next())
		{
			location=rs.getString(1);
		}
	}
	FileReader f=new FileReader(new File(location));
	BufferedReader bf=new BufferedReader(f);
	String line="";
	String fact="";
	while((line=bf.readLine())!=null)
	{
	fact+=line+"&";
	}
	out.println(fact);
	//rs=st.executeQuery("select location")
	//out.println(fact);
	String result="";
	 rs=st.executeQuery("select location from MainDb where filename='"+searchword+"'");
	
	while(rs.next())
	{
		location=rs.getString(1);
	}
		String filename="";
		String filenames[]=null;
		File path=new File(location);
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
						//String names=filename.replace('\\','&');
						//filenames=names.split("&");
						//out.println(filenames.length+"<br>");
					
							//Thread.sleep(1000);
					//	out.println(filenames[filenames.length-1]+"<br>");
						
						result+=filename+"#";
						
					}
					catch (Exception ee)
					{
						ee.printStackTrace();
					}
					
				}
			}
			
		}
		else
		{
			//proxy1.jLabel3.setText("completed.....");
		}
		//out.println(result);
		//----------------------------------------------------------
		
		String resultfiles[]=result.split("#");
	//out.println(resultfiles.length);
		for(int i=0;i<resultfiles.length;i++)
			{
		//	out.println(i);
			int count=0;
			File f1=new File(resultfiles[i]);
			//String seperatefile=resultfiles[i].replace('\\','&');
			//String filenamee[]=seperatefile.split("&");
			
			BufferedReader br=new BufferedReader(new FileReader(f1));
			String line1="";
			//String page1=filenamee[filenamee.length-1].replace(".txt","");
			//String add=resultfiles[i].replaceAll(" ","+");
			
			String content="";
			String address="";
			while((line1=br.readLine())!=null)
			{
				content+=line1+"&";
				//address=line1;
			}
			//out.println(content);
			String factfile[]=fact.split("&");
			String ln=""+factfile.length;
			application.setAttribute("fact",ln);
			String contentfile[]=content.split("&");
			out.println(factfile.length+"<br>"+contentfile.length+"<br>");
			for(int k=0;k<factfile.length;k++)
			{
				for(int l=0;l<contentfile.length;l++)
				{
				
					if(factfile[k].equalsIgnoreCase(contentfile[l]))
					{
					//out.println(factfile[k]+"=equalsIgnoreCase="+contentfile[l]);
					count++;
					break;
					}
				}
			}
			st.executeUpdate("update support set support='"+count+"' where location='"+resultfiles[i]+"' ");
			out.println("Fact file count is....."+factfile.length+ "website count is :"+i+"===="+count);
		}
		
	response.sendRedirect("Best11.jsp?value=null");
	%>