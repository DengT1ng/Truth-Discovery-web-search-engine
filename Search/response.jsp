<%@ page import="java.lang.*"%>
<%@ page import="java.io.*"%>
<%
	String searchword=request.getParameter("textfield");
	out.println(searchword);
	String method=(String)request.getParameter("search");
	out.println(method);
	
	//request.setAttribute("")
	if(method.equalsIgnoreCase("NS"))
	{
		application.setAttribute("text",searchword);
		application.setAttribute("method",method);
		response.sendRedirect("Normal.jsp?value=null");
	}
	else if(method.equalsIgnoreCase("PRS"))
	{
		application.setAttribute("text",searchword);
		application.setAttribute("method",method);
		response.sendRedirect("Pageranking.jsp?value=null");
	}
	else if(method.equalsIgnoreCase("best"))
	{
		application.setAttribute("text",searchword);
		application.setAttribute("method",method);
		response.sendRedirect("Best1.jsp?value=null");
		//out.println(request.getParameter("search"));
	}
	
	
	else
	{
		application.setAttribute("text",searchword);
		application.setAttribute("method",method);
		response.sendRedirect("Truthalgorithm.jsp?value=null");
	}
	//out.println(searchword+"<br>"+method);
	%>