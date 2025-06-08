<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<html>
  <head>
    <title>店铺信息详细</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>

  </head>

  <body >

  店铺信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CBD8AC" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>店铺号：</td><td width='39%'>${shangjiaxinxi.shangjiahao}</td>
     <td width='11%'>密码：</td><td width='39%'>${shangjiaxinxi.mima}</td></tr><tr>
     <td width='11%'>姓名：</td><td width='39%'>${shangjiaxinxi.xingming}</td>
     <td width='11%'>性别：</td><td width='39%'>${shangjiaxinxi.xingbie}</td></tr><tr>
     <td width='11%'>简介：</td><td width='39%'>${shangjiaxinxi.nianling}</td>
     <td width='11%'>联系方式：</td><td width='39%'>${shangjiaxinxi.lianxifangshi}</td></tr><tr>
     <td width='11%'>备注：</td><td width='39%'>${shangjiaxinxi.beizhu}</td>
     <td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>

