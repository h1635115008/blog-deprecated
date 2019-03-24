<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>首页</title>
<link href="${pageContext.request.contextPath }/css/common.css"
	type="text/css" rel="Stylesheet" />
<link rel="icon"
	href="${pageContext.request.contextPath }/img/title.ico"
	type="image/x-icon">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/img/title.ico"
	type="image/x-icon">
<style type="text/css">
.content .about {
	width: 99%;
	height: 800px;
	background: rgba(39, 40, 34, 0.8);
	margin: 0 auto;
	border-radius: 5px;
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
			<div class="about"></div>
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