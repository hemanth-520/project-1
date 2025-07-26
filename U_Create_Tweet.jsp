<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Tweets</title>
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
.style6 {color: #FF0000}
.style7 {
	font-size: 36px;
	color: #FF0000;
	font-weight: bold;
}
.style9 {color: #000000}
.style12 {color: #FFFF00; font-weight: bold; }
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
	    <p class="style7">Create Your Own Tweet .... </p>
	    <p>&nbsp;</p>
	     <form name="s" action="U_Create_Tweet1.jsp" method="post" enctype="multipart/form-data"  onSubmit="return valid()"  ons target="_top">	   
                <label for="name"></label>
                <table width="660" align="left">
                  <tr>
                    <td width="194" height="35" bgcolor="#FF0000"><span class="style12">Tweet Name (*)</span></td>
                    <td width="454"><input id="name" name="tname" class="text" /></td>
                  </tr>
                 
                  <tr>
                    <td height="39" bgcolor="#FF0000"><span class="style12">
                      <label for="label">Description</label>
                    (*)</span></td>
                    <td><textarea id="desc" name="desc" rows="3" cols="50"></textarea></td>
                  </tr>
				   <tr>
                    <td height="38" bgcolor="#FF0000"><span class="style12">Select Tweet image (*)</span></td>
                    <td><input type="file" id="pic" name="pic" class="text" /></td>
                  </tr>
                  
                  <tr>
                    <td><p>&nbsp;</p>
                    <div align="right">
                      <input name="submit" type="submit" value="Create Tweet & Publish" />
                    </div></td>
                  <td><p><span class="style6">(<span class="style9">* Fields are Mandatory</span>)</span></p>                  </tr>
           </table>
                
            <p>&nbsp;</p>
                
	    </form>
		  
	    <p>&nbsp; </p>
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
