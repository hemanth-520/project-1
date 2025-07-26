<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View_Friend_request</title>
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
	font-size: 36px;
	color: #FF00FF;
	font-weight: bold;
}
.style6 {color: #000000}
.style7 {font-size: 18px}
.style8 {color: #FFFF00}
.style9 {color: #FF0000}
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
	   <h2>View All Friend Request</h2>
             
          <table width="500" border="1.5" align="center"  cellpadding="0" cellspacing="0" bgcolor="#FFFFFF"  >
        <%@ include file="connect.jsp" %>
        <%
						
					String user=(String)application.getAttribute("uname");
						
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
							String query="select * from req_res where (requestto='"+user+"')"; 	   					
							Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next())
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
							
								
					%>
        <tr>
          <td width="203" rowspan="3"><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
              <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="user"%>&name=<%=s1%>" style="width:150px; height:150px;" />
          </a></div></td>
        </tr>
        <tr>
          <td  width="176" height="125" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style8" style="margin-left:20px;"> <strong>Name</strong></div></td>
          <td  width="160" height="125" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="left" class="style9" style="margin-left:20px;"><strong>
              <%out.println(s1);%>
          </strong></div></td>
        </tr>
        
        <tr>
         <td height="38" align="left" valign="middle" bgcolor="#00FF99" style="color: #2c83b0;"><div align="left " class="style3 style4 style14 style7 style8 style9" style="margin-left:20px;">Status</div></td>
			  <%
			  if(s3.equalsIgnoreCase("waiting"))
			  {%>
			  	 <td height="38" align="left" valign="middle" bgcolor="#00FF99"><div align="left" class="style9 style11 style9" style="margin-left:20px;"><strong>
                     <a href="U_UpdateReq.jsp?id=<%=i%>">waiting</a>
            </strong></div></td>
					  <%
					  }else
					  {
					  %><td  width="182" height="37" align="left" valign="middle" bgcolor="#00FF99"><div align="left" class="style11 style6 style9" style="margin-left:20px;"><%out.println(s3);}%></div></td>
        </tr>
        
        <%				}     		
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
            
            <p align="right">&nbsp;</p>
			<p align="right"><a href="U_Main.jsp" class="style2">Back</a></p>

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
