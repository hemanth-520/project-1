<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin</title>
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
.style5 {
	font-size: 36px;
	color: #FF00FF;
}
.style6 {
	font-size: 18px;
	font-weight: bold;
}
.style7 {color: #FFFFFF}
.style8 {color: #FFFFFF; font-weight: bold; }
.style10 {color: #FFFF00}
-->
</style>
</head>
<body>
<div class="main style2">
  <div class="header">
    <div class="header_resize">
      <div class="searchform"></div>
      <div class="style3"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home Page</a></li>
          <li class="active"><a href="A_Login.jsp">Admin</a></li>
          <li><a href="U_Login.jsp">User</a></li>
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
	  <h2>View Tweet Details...</h2>
	  <p>&nbsp;</p>
	   <table width="600" border="2" align="left"  cellpadding="0" cellspacing="0" bordercolor="#FF0000"  >
        <%@ include file="connect.jsp" %>
	
		<%
	
    
	String s1,s2,s3,s4,s5,s6,s7;
	int i=0,j=0,m=0;
	
	try 
	{
	
	String tname=request.getParameter("tname");
	
	String query="select * from tweets where tname='"+tname+"' "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		
	
		if(m==0){
		%>
		
				<tr>
				 <td  width="108" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8">Created User </div></td>
				  <td  width="109" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8">Tweet Image </div></td>
				  <td  width="96" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8">Tweet Name</div></td>
				  <td   width="150" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8">Description</div></td>
				  <td  width="123" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8">Created Date and Time </div></td>
				</tr>
					<%}%>
				<tr>
		
	    <td  width="108" height="110" align="center" valign="middle" bgcolor="#000000" style="color:#000000;"><div align="center" class="style10"><a href="A_User_Profile.jsp?type1=<%=s7%>"><%=s7%></a></div></td>	
	   	<td width="109" bgcolor="#000000"><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic.jsp?id=<%=i%>&type=<%="tweet"%>"/></td>
			  <td  width="96" height="110" align="center" valign="middle" bgcolor="#000000" style="color:#000000;"><div align="center" class="style10"><%out.println(s2);%></div></td>	
			  <td  width="150" height="110" align="center" valign="middle" bgcolor="#000000"><div align="center" class="style10"><%out.println(s4);%></div></td>
			  <td  width="123" align="center" valign="middle" bgcolor="#000000"><div align="center" class="style10"><%out.println(s5);%></div></td>
			</tr>
					
					<%m=2;
				}
					
					connection.close();
					
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
	  <p align="right">&nbsp;</p>
	  <p align="right">&nbsp;</p>
	  <p align="right">&nbsp;</p>
	  <p align="right">&nbsp;</p>
	  <p align="right">&nbsp;</p>
	  <p align="center"><a href="A_Main.jsp" class="style2">Back</a></p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Sidebar Menu</h2>
          <div class="style3"></div>
          <ul class="sb_menu">
            <li><a href="A_Main.jsp">Home</a></li>
            <li><a href="A_Login.jsp">Logout</a></li>
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
