<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="cn.aftertomorrow.util.Util"%>
<%@ page import="cn.aftertomorrow.po.Article"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>全文</title>
<link
	href="${pageContext.request.contextPath }/css/froala_editor.min.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/common.css"
	type="text/css" rel="Stylesheet" />
<link rel="icon"
	href="${pageContext.request.contextPath }/img/title.ico"
	type="image/x-icon">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/img/title.ico"
	type="image/x-icon">
<style type="text/css">
.iconfonts {
	font-family: "iconfont" !important;
	font-size: 12px;
	font-style: normal;
	-webkit-font-smoothing: antialiased;
	-webkit-text-stroke-width: 0.2px;
	-moz-osx-font-smoothing: grayscale;
}

.content .text {
	width: 99%;
	background: rgba(39, 40, 34, 0.8);
	margin: 0 auto;
	border-radius: 5px;
	border: sloid 1px none;
	border: solid 1px #ffffff00;
}

.froala-element.f-basic {
	border: none;
	background: none;
	padding: 5%;
}

.text .title {
	text-align: center;
	text-align: center;
	margin: auto;
	font-size: 25px;
	padding: 5%;
}

.text .other {
	width: 98%;
	height: 30px;
	padding: 1%;
}

.text .other .time {
	float: right;
	margin-right: 15px;
}

.text .other .kind {
	float: right;
	margin-right: 15px;
}

.text .other .view {
	float: right;
	margin-right: 15px;
}
</style>
</head>
<body>
	<!-- 背景 -->
	<!-- <img id="background" src="img/background2.jpg" /> -->
	<!-- 头部 -->
	<%@ include file="common/header.jsp"%>
	<!-- 加载条 -->
	<%@ include file="common/loading.jsp"%>
	<!-- 侧栏 -->
	<%@ include file="common/nav.jsp"%>
	<!-- 内容 -->
	<div class="main">
		<div class="content">
			<div class="text">
				<%
					Article article = (Article) request.getAttribute("article");
				%>
				<div class="title">${article.title}</div>
				<div class="froala-element not-msie f-basic">${article.text}</div>
				<div class="other">
					<div class="view iconfonts">&#xe662; 浏览次数：${article.view}</div>
					<div class="kind iconfonts">
						&#xe6b1; 标签：<%=article.getTag().replaceAll(",", " ")%>
					</div>
					<div class="time iconfonts">
						&#xe649; 创建时间：<%=Util.getYMD(article.getTime())%></div>
				</div>
			</div>

		</div>
	</div>
	<!-- 返回顶部 -->
	<div class="back" id="back">
		<i class="iconfont up">&#xe63f;</i>
	</div>
	<!-- 尾部 -->
	<%@ include file="common/footer.jsp"%>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/common.js"></script>
</body>
</html>