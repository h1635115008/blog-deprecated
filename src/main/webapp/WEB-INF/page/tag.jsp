<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="cn.aftertomorrow.po.*"%>
<%@ page import="cn.aftertomorrow.util.*"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<link rel="icon"
	href="${pageContext.request.contextPath }/img/title.ico"
	type="image/x-icon">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/img/title.ico"
	type="image/x-icon">
<title>标签</title>
<link href="${pageContext.request.contextPath }/css/common.css"
	type="text/css" rel="Stylesheet" />
<style type="text/css">
.tags {
	width: 99%;
	background: rgb(39, 40, 34);
	border-radius: 5px;
	color: white;
	padding: 1px;
	background: rgba(39, 40, 34, 0.8);
	border-radius: 5px;
	color: white;
	margin: 0 auto;
}

.tags .tagBox {
	width: 93%;
	height: 40px;
	margin: 25px auto;
}

.tags .tagBox .tag_ {
	width: 86%;
	height: 40px;
	font-size: 30px;
	line-height: 40px;
	float: left;
	color: #c1b9a6;
}

.tags .tagItem {
	width: 86%;
	margin: 25px auto;
	height: 30px;
	display: block;
	color: white;
	border-bottom: 1px darkgray dotted;
}

.tags .tagItem:hover {
	border-bottom: 3px white dotted;
}

.tags .tagItem .date {
	width: 80px;
	height: 20px;
	font-size: 10px;
	line-height: 20px;
	float: left;
	text-align: right;
	margin: 3px 10px 0px 12px;
	color: mediumspringgreen;
}

.tags .tagItem .date:before {
	display: block;
	content: "";
	width: 6px;
	height: 6px;
	border-radius: 4px;
	background: darkgray;
	float: left;
	margin: 7px 0 7px 0;
}

.tags .tagItem:hover .date:before {
	background: white;
}

.tags .tagItem .title {
	width: 80%;
	height: 30px;
	float: left;
	overflow: hidden;
	line-height: 30px;
	white-space: nowrap;
	text-overflow: ellipsis;
}
@media all and (max-width:414px) {
	.tags .tagItem .title {
		width: 190px;
	}
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
			<div class="tags">
				<%
					Map<String, List<Article>> aticleOrderByTags = (Map<String, List<Article>>) request
							.getAttribute("aticleOrderByTags");
					for (String tagName : aticleOrderByTags.keySet()) {
				%>
				<div class="tagBox">
					<div class="tag_ iconfont"><%=aticleOrderByTags.get(tagName).get(0).getUnicode() %> <%=tagName%></div>
				</div>
				<%
					for (Article article : aticleOrderByTags.get(tagName)) {
				%>
				<a class="tagItem" href="${pageContext.request.contextPath }/text?id=<%=article.getId() %>">
					<div class="date"><%=Util.getYMD(article.getTime())%></div>
					<div class="title"><%=article.getTitle()%></div>
				</a>
				<%
					}
					}
				%>
			</div>
			<!--  %@ include file="${pageContext.request.contextPath }/common/paging.jsp"%> -->
		</div>
		<div class="aside"></div>
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