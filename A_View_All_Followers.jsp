<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View_All_Followers</title>
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
.style6 {color: #FF00FF}
.style7 {
	font-size: 18px;
	font-weight: bold;
}
.style8 {
	color: #FFFF00;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main style2">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2 align="center" class="style5 style7">BullyNet: Unmasking Cyberbullies on Social Networks</h2>
      </div>
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
	  <h2>View All Followers Details...</h2>
             
            <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#99FF99">
					  <td  width="142" height="31" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8">Follow From</div></td>
					  <td  width="141" height="31" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8">Follow To </div></td>
  					
					  <td   width="115" height="31" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8">Status</div></td>
					  <td  width="188" height="31" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8">Date &amp; Time </div></td>
					</tr>
					<%@ include file="connect.jsp" %>
					<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0;
try 
{
	String query="select * from req_res"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		
					%>
							<tr bgcolor="#FFFFFF">
								<td  width="142" height="46" valign="baseline" "><span class="style6">&nbsp;&nbsp;
						        <%out.println(s1);%>
							  </span></td>	
								<td  width="141" height="46" valign="baseline"><span class="style6">&nbsp;&nbsp;
						        <%out.println(s2);%>
							  </span></td>
								<td  width="115" height="46" valign="baseline"><span class="style6">&nbsp;&nbsp;
						        <%out.println(s3);%>
							  </span></td>
							  <td  width="188" height="46" valign="baseline"><span class="style6">&nbsp;&nbsp;
					          <%out.println(s4);%>
							  </span></td>
			  </tr>
					<%
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
<p align="right"><a href="A_Main.jsp" class="style2">Back</a></p>
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
