<%@ include file="connect.jsp" %><%@ page import="java.sql.*,java.io.*,java.util.*" %>
<%            
try{
 // int i=Integer.parseInt(request.getParameter("id")); 
				Statement st=connection.createStatement();
				String strQuery = "select image from document where id='5' " ;
				ResultSet rs = st.executeQuery(strQuery);
				String imgLen="";
				if(rs.next())
				{
					imgLen = rs.getString(1);
				}  
				
				rs = st.executeQuery(strQuery);
				if(rs.next())
				{
					int len = imgLen.length();
					byte [] rb = new byte[len];
					InputStream readImg = rs.getBinaryStream(1);
					int index=readImg.read(rb, 0, len);  
					st.close();
					response.reset();
					response.getOutputStream().write(rb,0,len); 
					response.getOutputStream().flush();        
				}
				}catch(Exception e){}
				%> <img align="middle" height="100" width="120" src="image.jsp"/>