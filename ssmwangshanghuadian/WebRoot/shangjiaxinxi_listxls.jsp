<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="shangjiaxinxihsgb" scope="page" class="com.bean.ShangjiaxinxiBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=shangjiaxinxi.xls");
%>
<html>
  <head>
    <title>店铺信息</title>
  </head>

  <body >
 <%
			String sql="select * from shangjiaxinxi  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td align='center'>店铺号</td>
    <td align='center'>密码</td>
    <td align='center'>姓名</td>
    <td  width='40' align='center'>性别</td>
    <td align='center'>简介</td>
    <td align='center'>联系方式</td>
    
    <td  width='80' align='center'>是否审核</td>
	
    <td width="120" align="center" bgcolor="CCFFFF">添加时间</td>
    
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
    
    <td align='center'>${u.issh} <input type="button" value="审核" onclick="javascript:location.href='sh.jsp?id=${u.id}&yuan=${u.issh}&tablename=shangjiaxinxi'"/></td>
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

