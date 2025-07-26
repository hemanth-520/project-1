
<%@ include file="connect.jsp"%>
<%
try
{

%><html>
<head>
<title>Transaction Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
-->
</style></head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0;
	
	String s1=null;
	int rank=0;
	
			
					String query1="select tname,rank from tweets"; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(query1);
					while ( rs1.next() )
					{
								s1=rs1.getString(1);
								rank=rs1.getInt(2);
					
						
						%>		
						myData["<%=i%>"]=["<%=s1 %>",<%=rank%>];
						<%
						i++;
					
			}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#FF00FF');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#FF00FF');
	myChart.setBarValues(true);
	myChart.setTitleColor('#FF00FF');
	myChart.setAxisColor('#FF00FF');
	myChart.setSize(500,350);
	myChart.setAxisValuesColor('#FF00FF');
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

