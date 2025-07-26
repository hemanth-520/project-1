<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Tweet Class</title>
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
.style8 {font-weight: bold}
.style9 {font-weight: bold}
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
	  <h2>Add Tweet Class Details...</h2>
	  <p>&nbsp;</p>
	  <form id="form1" name="form1" method="post" action="A_Filter1.jsp">
            <p>&nbsp;</p>
            <table width="385" border="2">
              <tr>
                <td width="181" height="47" bgcolor="#FF0000"><span class="style11">Select Filter Category </span></td>
                <td width="186"><select name="tclass">
                  <option>Select Filter Category</option>
                  <option>Positive</option>
                  <option>Negative</option>
				  <option>Cyberbulling</option>

                </select>                </td>
              </tr>
              <tr>
                <td height="52" bgcolor="#FF0000"><span class="style11">Enter Filter Name </span></td>
                <td><input type="text" name="fname" /></td>
              </tr>
              <tr>
                <td height="52">&nbsp;</td>
                <td><p>
                  <input type="submit" name="Submit" value="Add" />
                  <input type="reset" name="Submit2" value="Reset" />
                </p></td>
              </tr>
            </table>
            <p>&nbsp;</p>
            <p><a href="AdminMain.jsp"></a></p>
            <p class="style13">Existing Filter Details .... </p>
        </form>
		  
		   <%@ include file="connect.jsp" %>
         <table width="417" border="1"  cellpadding="0" cellspacing="0"  >
        <tr bgcolor="#99CCCC">
          <td  width="253" height="56" valign="baseline" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="center" class="style3 style12 style7" >
            <p>&nbsp;</p>
            <p><strong>Spam Category</strong></p>
          </div></td>
          <td  width="237" height="56" valign="baseline" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="center" class="style3 style12 style7" >
            <p>&nbsp;</p>
            <p><strong>Spam Filter Name </strong></p>
          </div></td>
        </tr>
         
		 
		   
            <%
					 
				
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="";
					  int i=1,j=0,count=0,rank=0,k=0;
					
						try 
						{
							
						   	String query="select * from filter order by tctype "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								s0=rs.getString(1);
								s1=rs.getString(2);
								
								
								
								
					%>
           <tr>
              <td height="33"  valign="middle" bgcolor="#FF0000">
                  <div align="center" class="style4 style12 style14 style8" >
                    <div align="center">
                    <%out.println(s0);%>
                </div>
             </div></td>
			  
			  <td height="33"  valign="middle" bgcolor="#FF0000">
                  <div align="center" class="style4 style12 style14 style9" >
                    <div align="center">
                    <%out.println(s1);%> 
                </div>
             </div></td>
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
		  
		  
	  <p>&nbsp;</p>
	  <p>&nbsp;</p>
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
