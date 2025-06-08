<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>


<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<TITLE>修改优惠券</TITLE>
	    
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>
       
	</head>
<%
  String id="";
 
   %>
<script language="javascript">

function gows()
{
	document.location.href="youhuiquan_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>
	<body>
			<form action="updateYouhuiquan.do" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1"  style="border-collapse:collapse" bgcolor="#F2FDFF">
						<tr bgcolor="#E7E7E7">
							<td height="20" colspan="2" background="images/table_header.gif">修改优惠券<input type="hidden" name="id" value="${youhuiquan.id}" /></td>
						</tr>
						<tr ><td width="200">优惠券编号：</td><td><input name='youhuiquanbianhao' type='text' id='youhuiquanbianhao' value='<%=connDbBean.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">有效日期：</td><td><input name='youxiaoriqi' type='text' id='youxiaoriqi' value='<%=connDbBean.getdate()%>' onblur='checkform()' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/>&nbsp;*<label id='clabelyouxiaoriqi' /></td></tr>		<tr ><td width="200">使用说明：</td><td><textarea name='shiyongshuoming' cols='50' rows='5' id='shiyongshuoming' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		<tr ><td width="200">用户：</td><td><select name='yonghu' id='yonghu' style=' height:19px; border:solid 1px #000000; color:#666666'><%=connDbBean.hsggetoption("yonghu","yonghuming")%></select></td></tr>		
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
						       <input type="submit" name="querenzhuce" id="querenzhuce" value="提交" onClick="return checkform();"/>
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
						<script language="javascript">document.form1.youhuiquanbianhao.value='${youhuiquan.youhuiquanbianhao}';</script>	<script language="javascript">document.form1.youxiaoriqi.value='${youhuiquan.youxiaoriqi}';</script>	<script language="javascript">document.form1.shiyongshuoming.value='${youhuiquan.shiyongshuoming}';</script>	<script language="javascript">document.form1.yonghu.value='${youhuiquan.yonghu}';</script>	
					 </table>
			</form>
   </body>
</html>






<script language=javascript >  
 
 function checkform(){  
 
	var youxiaoriqiobj = document.getElementById("youxiaoriqi"); if(youxiaoriqiobj.value==""){document.getElementById("clabelyouxiaoriqi").innerHTML="&nbsp;&nbsp;<font color=red>请输入有效日期</font>";return false;}else{document.getElementById("clabelyouxiaoriqi").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  
