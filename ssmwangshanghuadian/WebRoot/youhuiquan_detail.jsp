<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<html>
  <head>
    <title>优惠券详细</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>

  </head>

  <body >

  优惠券详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CBD8AC" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>优惠券编号：</td><td width='39%'>${youhuiquan.youhuiquanbianhao}</td>     <td width='11%'>有效日期：</td><td width='39%'>${youhuiquan.youxiaoriqi}</td></tr><tr>     <td width='11%'>使用说明：</td><td width='39%'>${youhuiquan.shiyongshuoming}</td>     <td width='11%'>用户：</td><td width='39%'>${youhuiquan.yonghu}</td>     </tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>

