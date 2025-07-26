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
.style8 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main style2">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2 align="center" class="style5 style7 style6">BullyNet: Unmasking Cyberbullies on Social Networks</h2>
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
	  <h2>Tweet User Profile's Details..</h2>
	  <p>&nbsp;</p>
	 <table width="515" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
	
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						String id = request.getParameter("uname");
					//	String user=(String )application.getAttribute("user");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+id+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(8);
								s6=rs.getString(7);
								

					%>
					<tr>
					<td width="226" rowspan="7"><div class="style7" style="margin:10px 13px 10px 13px;" >
				 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:200px; height:200px;"/></div></td>
					</tr>
					
					<tr>
					  <td  width="125" height="48" valign="middle" bgcolor="#FF0000" style="color: #00CC99;"><div align="left" class="style7 style14" style="margin-left:20px;"><strong>Name</strong></div></td>
	  <td  width="156" height="48" valign="middle" bgcolor="#FFFF00" ><div align="left" class="style11 style8" style="margin-left:20px;"><strong>
	    <%out.println(s1);%>
	  </strong></div></td>
					</tr>
					<tr>
					  <td  width="125" height="48" valign="middle" bgcolor="#FF0000" style="color: #00CC99;"><div align="left" class="style7 style14" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
					  <td  width="156" height="48" valign="middle" bgcolor="#FFFF00" ><div align="left" class="style11 style8" style="margin-left:20px;"><strong>
				      <%out.println(s2);%>
					  </strong></div></td>
					</tr>
					<tr>
					  <td  width="125" height="51" valign="middle" bgcolor="#FF0000" style="color: #00CC99;"><div align="left" class="style7 style14" style="margin-left:20px;"><strong>Mobile</strong></div></td>
					  <td  width="156" height="51" valign="middle" bgcolor="#FFFF00"><div align="left" class="style11 style8" style="margin-left:20px;"><strong>
				      <%out.println(s3);%>
					  </strong></div></td>
					</tr>
					<tr>
<td  width="125" height="46" align="left" valign="middle" bgcolor="#FF0000" style="color: #00CC99;"><div align="left" class="style7 style14" style="margin-left:20px;"><strong>Date Of Birth</strong></div> </td>                    	
<td  width="156" height="46" align="left" valign="middle" bgcolor="#FFFF00"><div align="left" class="style11 style8" style="margin-left:20px;"><strong>
  <%out.println(s6);%>
</strong></div></td>
					</tr>
					<tr>
					  <td  width="125" height="59" align="left" valign="middle" bgcolor="#FF0000" style="color: #00CC99;"><div align="left" class="style7 style14" style="margin-left:20px;"><strong>Address</strong></div></td>
					  <td  width="156" height="59" align="left" valign="middle" bgcolor="#FFFF00"><div align="left" class="style11 style8" style="margin-left:20px;"><strong>
				      <%out.println(s4);%>
					  </strong></div></td>
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
