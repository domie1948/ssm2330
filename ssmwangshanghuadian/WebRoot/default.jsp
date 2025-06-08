<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.util.db"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>


<!DOCTYPE html>
<html class="no-js">
<head>
<meta  />
<title>网上花店</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="qtimages/css/reset.css" rel="stylesheet" />
<link href="qtimages/css/main.css" rel="stylesheet"/>
<script src="qtimages/jquery.js"></script> 
<script src="js/jquery.SuperSlide.2.1.1.js"></script>


<script type="text/javascript" src="qtimages/inc.js"></script>
<link rel="stylesheet" href="qtimages/hsgbanner.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<body>

<jsp:include page="qttop.jsp"></jsp:include>
<jsp:include page="bht.jsp"></jsp:include>
<div class="content">
	
	</div>

		<!--<div id="adsBox" class="adsBox mrt20">
			<div class="hd">
				<ul>
					<li></li>
					<li></li>
					<li></li>
				</ul>
			</div>
			<div class="bd">
				<ul>
					<li><a href="#" target="_blank"><img src="qtimages/ad1.jpg" /></a></li>
					<li><a href="#" target="_blank"><img src="qtimages/ad1.jpg" /></a></li>
					<li><a href="#" target="_blank"><img src="qtimages/ad1.jpg" /></a></li>
				</ul>
			</div>
		</div>-->
		<div class="pad20 slideGroup">
			<div class="title">
				<div class="name name2"><h3>商品展示</h3>Products</div>
				<div class="more"><a href="#">更多 ></a></div>
				<div class="clear"></div>
			</div>
			
		  <div class="parBd">
				<div class="slideBox">
					<a class="sPrev" href="javascript:void(0)"></a>
					<ul>
					
					 <c:forEach items="${syshangpinxinxi1 }" var="a">
						<li>
							<div class="pic"><a href="spxxDetail.do?id=${a.id}" target="_blank"><img src="${a.tupian}" width="300" height="300" border="0" /></a></div>
							<div class="tit"><a href="spxxDetail.do?id=${a.id}" target="_blank">${a.shangpinmingcheng}</a> <span class="eye">￥${a.jiage}</span></div>
						</li>
						
						   </c:forEach>
					
					</ul>
					<a class="sNext" href="javascript:void(0)"></a>
				</div><!-- slideBox End -->

			
			</div><!-- parBd End -->
		</div>
		
		<div class="pad20">
			<div class="title">
				<div class="name name2"><h3>友情链接</h3>Links</div>
				<div class="more"><a href="#">更多 ></a></div>
			</div>
			<div class="f4_x"></div>
			<div class="links">
				
				 <%
			String sqlyqlj="select  * from youqinglianjie   order by id desc limit 0,5";
			ResultSet RS_resultyqlj=connDbBean.executeQuery(sqlyqlj);
while(RS_resultyqlj.next())
{
		%>
    	<a href="<%=RS_resultyqlj.getString("wangzhi")%>" target="_blank"><%=RS_resultyqlj.getString("wangzhanmingcheng")%></a>
		 <%
								  }
								  %>
					  
			</div>
		</div>
	
	</div>
</div>
<jsp:include page="qtdown.jsp"></jsp:include>
<!-- The Scripts -->

</body>
</html>
