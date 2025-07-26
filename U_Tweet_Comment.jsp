<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Retweet</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {font-size: 24}
.style3 {padding:0; margin:0; width:100%; line-height:0; clear: both;}
.style4 {
	color: #33CCFF;
	font-size: 36;
}
.style5 {
	font-size: 18px;
	color: #FF00FF;
	font-weight: bold;
}
.style8 {color: #FFFFFF; font-weight: bold; }
.style9 {color: #FFFFFF}
.style11 {
	color: #FF0000;
	font-weight: bold;
}
.style12 {color: #FFFF00}
-->
</style>
</head>
<body>
<div class="main style2">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2 align="center" class="style4 style5">BullyNet: Unmasking Cyberbullies on Social Networks</h2>
      </div>
      <div class="searchform"></div>
      <div class="style3"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home Page</a></li>
          <li><a href="A_Login.jsp">Admin</a></li>
          <li class="active"><a href="U_Login.jsp">User</a></li>
        </ul>
      </div>
      <div class="style3"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="style3"></div>
      </div>
      <div class="style3"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  
	  
	  
	    <p>&nbsp;</p>
	    <p>&nbsp;</p>
	    <table width="610" align="left"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
	
		<%
String user=(String)application.getAttribute("uname");    
	String s1,s2,s3,s4;
	int i=0,j=0,m=0,n=0;
	
	try 
	{
	String t_name=request.getParameter("name");
	String uname=request.getParameter("uname");
	String id=request.getParameter("id");
	
	if(m==0){
	%>
			<tr>
		      <td  width="181" height="0" valign="baseline" bordercolor="#FF0000" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8">Tweeted User</div></td>
		      <td  width="272" height="0" valign="baseline" bordercolor="#FF0000" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8">Tweet Name</div></td>
		      <td   width="155" height="0" valign="baseline" bordercolor="#FF0000" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8">Tweet Image</div></td>
			</tr>
	<tr>
	<td  width="181" height="0" align="center" valign="middle" bgcolor="#000000"><div align="center" class="style3"><b><%=uname%></b></div></td>
	 <td  width="272" height="0" align="center" valign="middle" bgcolor="#000000"><div align="center" class="style3"><b><%=t_name%></b></div></td>
	  <td align="center" valign="middle"><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic.jsp?id=<%=id%>&type=<%="tweet"%>"/></td>
		</tr>
	
	<%}m=1;
	String sql="select * from retweets where tweet_name='"+t_name+"' and username!='"+user+"'"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(sql);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		
		if(n==0){
		
		%>
		
				
				<tr>
				  <td  width="181" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style9">Username</div></td>
				  <td   width="272" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style9">Tweet</div></td>
				  <td  width="155" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style9">Date</div></td>
				</tr>
					<%}%>
				<tr>
						
	   
			  <td  width="181" height="36" align="center" valign="middle" bgcolor="#000000" style="color:#000000;"><div align="center" class="style12">
			    <p>
			      <%out.println(s1);%>
			    </p>
			    <p>&nbsp; </p>
			  </div></td>	
			  <td  width="272" height="36" align="center" valign="middle" bgcolor="#000000"><div align="center" class="style12"><%out.println(s3);%></div></td>
			  <td  width="155" align="center" valign="middle" bgcolor="#000000"><div align="center" class="style12"><%out.println(s4);%></div></td>
		</tr>
					
					<%m=2;
				}
				%>
				 <form id="form1" name="form1" method="post" action="friendtweets.jsp?name=<%=t_name%>" onsubmit="return valid()" target="_top">
		<tr>
			  <td  width="181" height="110" align="center" valign="middle" style="color:#000000;"><span class="style11">Enter Your Retweet </span>
		        <div align="center" class="style4 style2"></div></td>	
			  <td  width="272" height="110" align="center" valign="middle"><div align="center"><textarea name="cmt" rows="4" cols="40"></textarea></div></td>
			  <td  width="155" align="center" valign="middle"><div align="center"><input type="submit" name="Submit" value="Re Tweet" /></div></td>
		</tr>  
		 </form>
		 
		  <%
					
					connection.close();
					
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
	    <p>&nbsp;</p>
	    <p>&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Sidebar Menu</h2>
          <div class="style3"></div>
          <ul class="sb_menu">
            <li><a href="U_Main.jsp">Home</a></li>
            <li><a href="U_Login.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
      <div class="style3"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
