<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="shangjiaxinxihsgb" scope="page" class="com.bean.ShangjiaxinxiBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=shangjiaxinxi.xls");
%>
<html>
  <head>
    <title>������Ϣ</title>
  </head>

  <body >
 <%
			String sql="select * from shangjiaxinxi  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center'>���̺�</td>
    <td align='center'>����</td>
    <td align='center'>����</td>
    <td  width='40' align='center'>�Ա�</td>
    <td align='center'>���</td>
    <td align='center'>��ϵ��ʽ</td>
    
    <td  width='80' align='center'>�Ƿ����</td>
	
    <td width="120" align="center" bgcolor="CCFFFF">����ʱ��</td>
    
  </tr>
   <%		
				List pagelist3=shangjiaxinxihsgb.getAllShangjiaxinxi(10);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.shangjiahao}</td>
    <td>${u.mima}</td>
    <td>${u.xingming}</td>
    <td align='center'>${u.xingbie}</td>
    <td>${u.nianling}</td>
    <td>${u.lianxifangshi}</td>
    
    <td align='center'>${u.issh} <input type="button" value="���" onclick="javascript:location.href='sh.jsp?id=${u.id}&yuan=${u.issh}&tablename=shangjiaxinxi'"/></td>
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

