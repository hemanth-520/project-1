<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Login Page</title>
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
-->
</style>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.adminid.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.adminid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
}


}
</script>
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
          <li class="active"><a href="A_Login.jsp">Tweet Admin</a></li>
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
	  <h2 align="center" class="style6">ADMIN LOGIN</h2>
	  <p align="center" class="style6"><img src="images/Login.png" width="176" height="176" /></p>
	  <form name="s" action="Authentication.jsp?value=<%="adminlogin"%>" method="post"  onSubmit="return valid()"  ons target="_top"> 
			<P> </P> 
  <div align="center">
    <table border="0" width="35%" height="138">
      <tr>
        <td width="36%" height="25"><div align="left"><font color="#000000"><b><font size="5" face="Courier New, Courier, monospace">Name:</font></b></font></div></td>
        <td width="64%" height="25">
  <input type="text"  name="adminid" size="15"></td>
      </tr>
      <tr>
        <td width="36%" height="25"><div align="left"><font color="#000000"><b><font size="5" face="Courier New, Courier, monospace">Password:</font></b></font></div></td>
        <td width="64%" height="25">
  <input type="password"  name="pass" size="15"></td>
      </tr>
      <tr>
        <td width="100%" height="60" colspan="2">
        <p align="center"><input type="submit"  value="Login" name="B1"><input type="reset" value="Reset" name="B2"></td>
      </tr>
    </table>
    <p><a href="index.html"><font color="#FF3300" size="5"><strong>Home</strong></font></a></p>
  </div>
</form>
	  
	  </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Sidebar Menu</h2>
          <div class="style3"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
            <li><a href="A_Login.jsp">Tweet Admin</a></li>
            <li><a href="U_Login.jsp">User</a></li>
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
