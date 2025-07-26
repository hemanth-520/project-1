<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> U_ViewAll_MyFriends_Tweets</title>
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
.style6 {
	font-size: 36px;
	font-weight: bold;
}
.style7 {
	font-size: 24px;
	font-weight: bold;
	color: #FF0000;
}
.style10 {
	color: #FFFFFF;
	font-weight: bold;
}
.style11 {color: #FFFF00}
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
	    <p class="style7">VIEW ALL MY  FRIENDS TWEETS.....</p>
	    <p class="style7">&nbsp;</p>
	    <p class="style7">&nbsp;</p>
	   <table width="660" border="2" align="left"  cellpadding="0" cellspacing="0" bordercolor="#FF0000"  >
        <%@ include file="connect.jsp" %>
	
		<%
	  String user=(String)application.getAttribute("uname");
    
	String s1,s2,s3,s4,s5,s6,s7,rto;
	int i=0,j=0,m=0;
	
	try 
	{
	
	ArrayList al=new ArrayList();
	ArrayList al1=new ArrayList();
	String sql="select requestto from req_res where(requestfrom='"+user+"' and status='Accepted')";
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(sql);
	while(rs.next())
	{
		rto=rs.getString(1);
		al1.add(rto);
	}
	String sql1="select requestfrom from req_res where(requestto='"+user+"' and status='Accepted')";
	Statement st1=connection.createStatement();
	ResultSet rs1=st1.executeQuery(sql1);
	while(rs1.next())
	{
		rto=rs1.getString(1);
		al1.add(rto);
	}
	
	for(j=0;j<al1.size();j++)
	{

	String sql2="select * from tweets where user='"+al1.get(j)+"'"; 
	Statement st2=connection.createStatement();
	ResultSet rs2=st2.executeQuery(sql2);
	while(rs2.next())
	{
		i=rs2.getInt(1);
		s2=rs2.getString(2);
		s3=rs2.getString(3);
		s4=rs2.getString(4);
		s5=rs2.getString(5);
		s6=rs2.getString(6);
		s7=rs2.getString(7);
		al.add(s2);
		
		if(m==0){
		%>
		
				<tr>
				<td  width="89" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10">Created User </div></td>
				  <td  width="100" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10">Tweet Image </div></td>
				  <td  width="74" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10">Tweet Name</div></td>
				  <td   width="175" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10">Description</div></td>
				  <td  width="125" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10">Created Date and Time </div></td>
			      <td  width="81" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10">Comments</div></td>
				</tr>
					<%}%>
				<tr>
				  <td  width="89" height="110" align="center" valign="middle" bgcolor="#000000"><div align="center" class="style11"><%out.println(s7);%></div></td>	
	   	<td width="100" bgcolor="#000000"><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic.jsp?id=<%=i%>&type=<%="tweet"%>"/></td>
			  <td  width="74" height="110" align="center" valign="middle" bgcolor="#000000" style="color:#000000;"><div align="center" class="style11"><%out.println(s2);%></div></td>	
			  <td  width="175" height="110" align="center" valign="middle" bgcolor="#000000"><div align="center" class="style11"><%out.println(s4);%></div></td>
			  <td  width="125" align="center" valign="middle" bgcolor="#000000"><div align="center" class="style11"><%out.println(s5);%></div></td>
			  <td  width="81" height="110" align="center" valign="middle" bgcolor="#000000"><div align="center" class="style11"><a href="U_Tweet_Comment.jsp?name=<%=s2%>&id=<%=i%>&uname=<%=s7%>">ReTweet</a></div></td>
		</tr>
					
					<%m=2;
				}
				}
					if(al.isEmpty())
					{
					%>
					<h3 class=" style4">Sorry..!! There is no tweets found</h3>
					<%}
					 String msg=(String)application.getAttribute("msg");
					 if(msg!=null){
					 %><h3 class="style8 style4"> <%=msg%></h3> 
					  <%
					 application.removeAttribute("msg");
					}
					
					connection.close();
					
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
	    <p class="style6">&nbsp;</p>
	    
	    
	    
	    <p><a href="U_Main.jsp"><strong>Back</strong></a></p>
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
