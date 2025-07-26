<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User</title>
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
.style6 {color: #006600}
.style7 {font-size: 18px}
.style8 {color: #FFFFFF}
-->
</style>
</head>
<body>
<div class="main style2">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2 align="center" class="style7 style5"><strong>BullyNet: Unmasking Cyberbullies on Social Networks</strong></h2>
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
	  <h2 class="style5">  User <%=(String)application.getAttribute("uname")%>'s Profile</span>... </h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <table width="533" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            <%@ include file="connect.jsp" %>
            
            <%
						
						String user=(String )application.getAttribute("uname");
						
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(7);
								s5=rs.getString(8);
								s6=rs.getString(10);
								
					%>
            <tr>
              <td width="226" rowspan="7" bgcolor="#FFFFFF" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="images.jsp?value=<%="user"%>&amp;id=<%=i%>" style="width:200px; height:200px;" />
              </a></strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="37" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style8" style="margin-left:10px;"><strong>E-Mail</strong></div></td>
              <td  width="158" valign="middle" bgcolor="#FFFFFF" style="color:#000000;"><div align="left" class="style40 style10 style62 style6" style="margin-left:10px;"><strong>
                  <%out.println(s1);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="40" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style8" style="margin-left:10px;"><strong>Mobile</strong></div></td>
              <td  width="158" valign="middle" bgcolor="#FFFFFF" ><div align="left" class="style40 style10 style62 style6" style="margin-left:10px;"><strong>
                  <%out.println(s2);%>
              </strong></div></td>
            </tr>
            <tr>
              <td height="43" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style8" style="margin-left:10px;"><strong>Address</strong></div></td>
              <td align="left" valign="middle" bgcolor="#FFFFFF"><div align="left" class="style40 style10 style62 style6" style="margin-left:10px;"><strong>
                  <%out.println(s3);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="43" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style8" style="margin-left:10px;"><strong>Date of Birth</strong></div></td>
              <td  width="158" align="left" valign="middle" bgcolor="#FFFFFF"><div align="left" class="style40 style10 style62 style6" style="margin-left:10px;"><strong>
                  <%out.println(s4);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="47" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style8" style="margin-left:10px;"><strong>Gender</strong></div></td>
              <td  width="158" align="left" valign="middle" bgcolor="#FFFFFF" ><div align="left" class="style40 style10 style62 style6" style="margin-left:10px;"><strong>
                  <%out.println(s5);%>
              </strong></div></td>
            </tr>
            <tr>
              <td   width="141" height="44" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style42 style61 style60 style8" style="margin-left:10px;"><strong>Profession</strong></div                        ></td>
              <td  width="158" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left">
                  <div align="left" class="style10 style62 style6" style="margin-left:10px;"><strong>
                    <%out.println(s6);%>
              </strong></div></td>
            </tr>
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
        </table>
		  
		  <p align="right"> <a href="U_Main.jsp"> Back </a> </p>
	  
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
