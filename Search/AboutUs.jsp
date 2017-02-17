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
  <p><span style='font-size:9.5pt'>
   <h1><span style='font-family:Tahoma'>Problem Definition<o:p></o:p></span></h1>
					
                   							In this paper, we study the problem of finding true facts in a certain domain. Here, a domain refers to a property of a certain type of objects, such as authors of books or number of pixels of camcorders. The input of TRUTHFINDER is a large number of facts in a domain that are provided by many websites. There are usually multiple conflicting facts from different websites for each object, and the goal of TRUTHFINDER is to identify the true fact among them.<br> 
 <h1><span style='font-family:Tahoma'>Basic Heuristics<o:p></o:p></span></h1>
							 							Based on common sense and our observations on real data, we have four basic heuristics that serve as the base of our computational model.
						<h1><span style='font-family:Tahoma'>Heuristic 1<o:p></o:p></span></h1>	 Usually there is only one true fact for a property of an object. In this paper, we assume that there is only one true fact for a property of an object. The case of multiple true facts will be studied in our future work.
						<h1><span style='font-family:Tahoma'>Heuristic 2<o:p></o:p></span></h1>	This true fact appears to be the same or similar on different websites. Different websites that provide this true fact may present it in either the same or slightly different ways, such as “Jennifer Widom” versus “J. Widom.”
						<h1><span style='font-family:Tahoma'>Heuristic 3<o:p></o:p></span></h1> The false facts on different websites are less likely to be the same or similar. Different websites often make different mistakes for the same object and thus provide different false facts. Although false facts can be propagated among websites, in general, the false facts about a certain object are much less consistent than the true facts.
						<h1><span style='font-family:Tahoma'>Heuristic 4<o:p></o:p></span></h1> In a certain domain, a website that provides mostly true facts for many objects will likely provide true facts for other objects.
						<h1><span style='font-family:Tahoma'>Related Work<o:p></o:p></span></h1>            
										The quality of information on the Web has always been a major concern for Internet users . There have been studies on what factors of data quality are important for users and on machine learning approaches for distinguishing high-quality and low-quality web pages , where the quality is defined by human preference. It is also shown that information quality measures can help improve the effectiveness of Web search . In 1998, two pieces of groundbreaking work, PageRank  and Authority-Hub analysis , were proposed to utilize the hyperlinks to find pages with high authorities. These two approaches are very successful at identifying important web pages that users are interested in, which is also shown by a subsequent study . In , the authors propose a framework of link analysis and provide theoretical studies for many link-based approaches. Unfortunately, the popularity of web pages does not necessarily lead to accuracy of information.Two observations are made in our experiments: Even the most popular website (e.g., Barnes & Noble) may contain many errors, whereas some comparatively not-so-popular websites may provide more accurate information. More accurate information can be inferred by using many different websites instead of relying on a single website. TRUTHFINDER studies the interaction between websites and the facts they provide and infers the trustworthiness of websites and confidence of facts from each other. An analogy can be made between this problem and Authority- Hub analysis, by considering websites as hubs (both of them indicate others’ authority weights) and facts as authorities. However, these two problems are very different, and Authority-Hub analysis cannot be applied to our problem. In Authority-Hub analysis, a hub’s weight is widely used in many link analysis approaches . The common feature of these approaches is that they start from some initial state that is either random or uninformative. Then, at each iteration, the approach will improve the current state by propagating information (weights, probability, trustworthiness, etc.) through the links. This iterative procedure has been proven to be successful in many applications, and thus, we adopt it in TRUTHFINDER.


  <p class=MsoNormal><span style='font-family:Tahoma'><o:p></o:p></span></p>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0" background="img/botbkg.gif">
  <tr>
    <td width="100%"><img border="0" src="img/botbkg.gif" width="22" height="13"></td>
  </tr>
</table>


</body>

</html>
