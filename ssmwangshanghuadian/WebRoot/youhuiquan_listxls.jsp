<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="youhuiquanhsgb" scope="page" class="com.bean.YouhuiquanBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=youhuiquan.xls");
%>
<html>
  <head>
    <title>�Ż�ȯ</title>
  </head>

  <body >
 <%
			String sql="select * from youhuiquan  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center'>�Ż�ȯ���</td>    <td  width='65' align='center'>��Ч����</td>        <td align='center'>�û�</td>    
	
    <td width="120" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
  </tr>
   <%		
				List pagelist3=youhuiquanhsgb.getAllYouhuiquan(6);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.youhuiquanbianhao}</td>    <td>${u.youxiaoriqi}</td>        <td>${u.yonghu}</td>    
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

