<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="code" scope="page" class="com.util.CheckCode" />
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html>
<html class="no-js">
<head>
<meta />
<title>用户登陆</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="qtimages/css/reset.css" rel="stylesheet" />
<link href="qtimages/css/main.css" rel="stylesheet"/>
<link href="qtimages/css/sub.css" rel="stylesheet"/>
<script src="qtimages/jquery.js"></script> 
<script src="js/jquery.SuperSlide.2.1.1.js"></script>

<script type="text/javascript" src="qtimages/inc.js"></script>
<link rel="stylesheet" href="qtimages/hsgbanner.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>

<body>
<jsp:include page="qttop.jsp"></jsp:include>

<div class="content">
	<div class="wrap">
		<div class="pad0">
			<div class="s_title">
				<div class="name">用户登陆</div>
				<div class="menu">
					
				</div>
			</div>
			<div class="det_con"> 
							<%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
                          <form action="hsgloginyanzheng.jsp" method="post" name="userlog" id="userlog" >
                            <table width="100%" height="302" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
                              <tr>
                                <td height="48" colspan="4" style="padding-left:30px; font-size:20px;"><strong>用户登陆</strong></td>
                              </tr>
                              <tr>
                                <td width="40" height="28">&nbsp;</td>
                                <td width="240" height="28">用户名:</td>
                                <td height="28" colspan="2"><input name="username" type="text" id="username" placeholder="请输入用户名" style="width:160px; height:40px; border:solid 1px #000000; color:#666666;"  /></td>
                              </tr>
                              <tr>
                                <td height="28">&nbsp;</td>
                                <td height="28">密码:</td>
                                <td height="28" colspan="2"><input name="pwd" type="password" id="pwd" placeholder="请输入密码" style="width:160px; height:40px; border:solid 1px #000000; color:#666666" /></td>
                              </tr>
                              <tr >
                                <td height="28">&nbsp;</td>
                                <td height="28">权限:</td>
                                <td height="28" colspan="2"><select name="cx" id="cx" style="width:160px; height:40px; border:solid 1px #000000; color:#666666" >
                                    <option value="注册用户">注册用户</option>
									<option value="店铺">店铺</option>
									<!--quxanxiaxndexnglxu-->
                                </select></td>
                              </tr>
                              <tr >
                                <td height="28">&nbsp;</td>
                                <td height="28">验证码:</td>
                                <td width="67" height="28"><input name="pagerandom" type="text" id="pagerandom" style=" height:20px; border:solid 1px #000000; color:#666666; width:50px" /></td>
                                <td width="653"><%
								String yzm=code.getCheckCode();
								%>  <input type="hidden" name="yzm" id="yzm" value="<%=yzm %>" >
								   <%=yzm %></td>
                              </tr>
                              <tr>
                                <td height="38" align="center">&nbsp;</td>
                                <td height="38" align="center">&nbsp;</td>
                                <td height="38" colspan="2"><input type="submit" name="Submit" value="登陆" onClick="return checklog();" />
                                  <input type="reset" name="Submit2" value="重置"  /></td>
                              </tr>
                            </table>
                          </form>
						   <script type="text/javascript">
       
function checklog()
{
	if(document.userlog.username.value=="" || document.userlog.pwd.value=="" || document.userlog.pagerandom.value=="")
	{
		alert("请输入完整");
		return false;
	}
	if (document.userlog.pagerandom.value != document.userlog.yzm.value) {
			alert("验证码错误！");
			document.userlog.pagerandom.focus();
			return false;
	}
	
}
           
                                  </script>
								  <%
							}
				  else
				  {
				 %>
                          <table width="100%" height="300" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
                            <tr>
                              <td height="28" align="left" style="padding-left:20px; font-size:20px;">当前用户：<%=request.getSession().getAttribute("username")%></td>
                            </tr>
							 <tr>
                              <td height="28" align="left" style="padding-left:20px; font-size:20px;">您的权限：<%=request.getSession().getAttribute("cx")%></td>
                            </tr>
                            <tr>
                              <td height="28" align="left" style="padding-left:20px; font-size:20px;">欢迎您的到来!!!</td>
                            </tr>
                            <tr>
                              <td height="28" align="center"><input type="button" name="Submit3" value="退出" onClick="javascript:location.href='logout.php';" class="button button1" />
                                  <input type="button" name="Submit22" value="个人后台" onClick="javascript:location.href='main.php';" class="button button1" /></td>
                            </tr>
                          </table>
                          <%
						  }
						  %>
			</div>	
		</div>
	</div>		
</div>
<jsp:include page="qtdown.jsp"></jsp:include>


</body>
</html>
