<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search Friend...</title>
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
.style7 {color: #000000}
.style8 {color: #FF00FF}
.style9 {
	font-size: 18px;
	font-weight: bold;
}
.style11 {color: #FFFF00; font-weight: bold; }
.style12 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main style2">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2 align="center" class="style5 style9">BullyNet: Unmasking Cyberbullies on Social Networks</h2>
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
	   <h2>Follow Friend : </h2>
            
          <table width="500" border="1.5" align="center"  cellpadding="0" cellspacing="0" bgcolor="#FFFFFF"  >
        <%@ include file="connect.jsp" %>
	<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%
	
    
						String s1,s2,s3,s4;
						int i=0,count=0;
						String keyword=request.getParameter("keyword");
						String user=(String)application.getAttribute("uname");
       
						try 
						{
							String status1=null;
						   	String status=null;
						   	String query="select * from user "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while(rs.next()==true)
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								
								status ="request";
								if(s1.equalsIgnoreCase(user)){}
								else
								{
									count++;
									String query7="select * from req_res where (requestfrom='"+user+"'||requestto='"+user+"')" ; 
									Statement st7=connection.createStatement();
									ResultSet rs7=st7.executeQuery(query7);
									while(rs7.next())
									{
										String rfrom =rs7.getString(2);
										String rto =rs7.getString(3);
										status1 = rs7.getString(4);
										
										if((!status1.equalsIgnoreCase("Accepted"))&&(rfrom.equalsIgnoreCase(s1)||(rto.equalsIgnoreCase(s1))))
										{
											status="sent";
										}
										else if((status1.equalsIgnoreCase("Accepted"))&&(rfrom.equalsIgnoreCase(s1)||(rto.equalsIgnoreCase(s1))))
										{
											status="Already Friend";
										}
										
									}	
								
					%>
          
			<tr>
					<td width="129" rowspan="3" valign="middle" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="user"%>" style="width:100px; height:100px;"  />
			  </a></div>					</td>
		  </tr>
             
             <tr> <td width="105" height="80" valign="middle" bgcolor="#FF0000" style="color:#000000;"><div align="center" class="style11">Name</div></td>
			 <td width="90" height="80" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style12">&nbsp;&nbsp;
                <%out.println(s1);%>
			 </div></td>
             </tr>
				   <tr>
				    <td width="105" height="26" valign="middle" bgcolor="#00FFCC" style="color:#000000;"><div align="center" class="style11 style12">Follow Status</div></td>
              <%
						if(status.equals("Already Friend")){
						%>
              <td  width="90" height="26"align="center" valign="middle" bgcolor="#00FFCC" style="color:#000000;"><span class="style12 style12"><%=status %>&nbsp;</span></td>
              <%
						}else if(status.equals("sent")){
						%>
              <td  width="57" valign="middle" height="26" style="color:#000000;"align="center"><span class="style7"><%=status %>&nbsp;</span></td>
              <%
						}else{
						
						%>
              <td  width="107" valign="middle" height="26" style="color:#000000;"align="center"><a href="U_UpdateStatus.jsp?username=<%=s1%>&id=<%=i%>" class="style8"><%=status %>&nbsp;</a></td>
              <%}
						%>
            </tr>
			
            <%
					
						}
					
				
 	    					
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
				
						String sql="insert into friend_search(username,keyword,date)values('"+user+"','"+keyword+"','"+dt+"')";
						Statement st1=connection.createStatement();
						st1.executeUpdate(sql);
							
												}
					
					if(count==0){
					out.print("There is no Friends with keyword "+keyword);
					}
					
					connection.close();
					//out.print("There is no Friends with " +keyword);
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
	  
	   <%=(String)application.getAttribute("msg1")%>
			<%application.removeAttribute("msg1");%>
            
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
