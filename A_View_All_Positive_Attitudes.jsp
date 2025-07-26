<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View_All_Positive_Attitudes</title>
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
.style8 {color: #FF0000}
.style9 {color: #FFFFFF}
.style11 {font-size: 36}
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
	  <h2>View All Positive Attitudes...</h2>
	  <p align="center"><img src="images/Positive.jpg" width="271" height="186" /></p>
	  <%@ include file="connect.jsp" %>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>

<table width="690" border="1"  cellpadding="0" cellspacing="0"  >
        <tr>
		    <td  width="108" height="0" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style8"><strong>ReTweeted  User </strong></div></td>
				  
		    <td  width="96" height="0" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style8"><strong>Tweet Name</strong></div></td>
		    <td   width="150" height="0" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style8"><strong>Retweet</strong></div></td>
		    <td  width="123" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style8"><strong>Tweeted Date and Time </strong></div></td>
		  </tr>
		 
		   
            <%
					 String type="Positive";
				
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="";
					  int i=1,j=0,count=0,rank=0,k=0,j1=0;
					
						try 
						{	
							String query="select * from retweets order by tweet_name"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(4).toLowerCase();
								s5=rs.getString(5);
								
								  String sql10="select * from filter where tctype='"+type+"'";
			    				  Statement st10=connection.createStatement();
                			  	  ResultSet rs10=st10.executeQuery(sql10);
								while ( rs10.next() )
			   					{
			            			 String t20=rs10.getString(2).toLowerCase();
			   			 
									if ((s4.contains(t20)))
									{	     
									count++;
					%>
           <tr>
		
	    <td  width="108" height="73" align="center" valign="middle" bgcolor="#000000" style="color:#000000;"><div align="center" class="style7 style9 style11"><%=s2%></a></div></td>	
	   	
		     <td  width="96" height="73" align="center" valign="middle" bgcolor="#000000" style="color:#000000;"><div align="center" class="style7 style9 style11"><a href="A_View_Tweet_Details.jsp?tname=<%=s3%>"><%out.println(s3);%>-->(More Details)</a></div></td>	
		     <td  width="150" height="73" align="center" valign="middle" bgcolor="#000000"><div align="center" class="style7 style9 style11"><%out.println(s4);%></div></td>
		     <td  width="123" align="center" valign="middle" bgcolor="#000000"><div align="center" class="style7 style9 style11"><%out.println(s5);%></div></td>
		  </tr>
			
            
					<%	
			
								 }		 
								
					}
					
			
				}		
										
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0){out.print("No  Users  Re Tweeted");}
					
					%>
        </table>
	  <p align="right">&nbsp;</p>
	  <p align="center"><a href="A_Main.jsp" class="style2">Back</a></p>
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
