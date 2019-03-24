<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.List"%>
<%@ page import="cn.aftertomorrow.po.*"%>
<%@ page import="cn.aftertomorrow.util.*"%>
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
.iconfonts {
	font-family: "iconfont" !important;
	font-size: 12px;
	font-style: normal;
	-webkit-font-smoothing: antialiased;
	-webkit-text-stroke-width: 0.2px;
	-moz-osx-font-smoothing: grayscale;
}

.article {
	width: 99%;
	color: white;
	padding: 1px;
	margin: 0 auto;
	margin-bottom: 20px;
	background: rgba(39, 40, 34, 0.8);
	border-radius: 5px;
	margin: 0 auto;
	margin-bottom: 20px;
	background: rgba(39, 40, 34, 0.8);
	margin-bottom: 20px;
	background: rgba(39, 40, 34, 0.8);
	background: rgba(39, 40, 34, 0.8);
}

.article .head {
	width: 100%;
	height: 50px;
}

.article .head .tag {
	width: 80px;
	height: 30px;
	background: url(img/tags.png);
	float: left;
	background-size: 80px 30px;
	background-repeat: no-repeat;
	text-align: center;
	line-height: 30px;
	margin: 10px 0 0px -3px;
}

.article .head .title {
	width: 80%;
	height: 50px;
	font-size: 20px;
	line-height: 50px;
	text-align: center;
	margin: auto;
}

.article .head .title .link {
	color: white;
	text-decoration: none;
	display: block;
}

.article .head .title .link:hover {
	text-decoration: underline;
}

.article .head .more {
	width: 80px;
	height: 25px;
	float: right;
	font-size: 12px;
	line-height: 25px;
	text-align: center;
	border-radius: 5px;
	background: darkgray;
	margin: 15px 10px 0px 10px;
	display: block;
	color: white;
	text-decoration: none;
	transition: color 0.3s, background-color 0.3s;
}

.article .head .more:hover {
	background: white;
	color: black;
}

.article .head .more .iconfont {
	font-size: 12px;
}

.article .detail {
	width: 96%;
	margin: 10px auto;
	font-size: 16px;
	word-wrap: brgeak-word;
	word-break: break-all;
}

.article .other {
	width: 98%;
	height: 30px;
	padding: 1%;
}

.article .other .time {
	float: right;
	margin-right: 15px;
}

.article .other .kind {
	float: right;
	margin-right: 15px;
}

.article .other .view {
	float: right;
	margin-right: 15px;
}

@media all and (max-width:414px) {
	.article .head .more {
		display: none;
	}
	.article .head .tag {
		display: none;
	}
	.article .head .title {
		padding: 5%;
		height: auto;
		width:90%;
		line-height:normal;
	}
	.article .head {
		text-align: center;
		margin: auto;
		font-size: 25px;
		width: 100%;
		height: auto;
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
			<%
				List<Article> articles = (List) request.getAttribute("articles");
				for (Article article : articles) {
					String tags = article.getTag().replaceAll(",", " ");
			%>
			<div class="article">
				<div class="head">
					<div class="tag">
						<%=article.getTag().split(",")[0]%>
					</div>

					<a class="more"
						href="${pageContext.request.contextPath }/text?id=<%=article.getId()%>">查看全文
						<span class="iconfonts">&#xe635;</span>
					</a>
					<div class="title">
						<a class="link"
							href="${pageContext.request.contextPath }/text?id=<%=article.getId()%>"><%=article.getTitle()%></a>
					</div>
				</div>
				<div class="detail">
					<%=article.getDetail()%>
				</div>
				<div class="other">
					<div class="view iconfonts">
						&#xe662; 浏览次数：
						<%=article.getView()%>
					</div>
					<div class="kind iconfonts">
						&#xe6b1; 标签：
						<%=tags%>
					</div>
					<div class="time iconfonts">
						&#xe649; 创建时间：
						<%=Util.getYMD(article.getTime())%>
					</div>
				</div>
			</div>
			<%
				}
			%>
			<%@ include file="common/paging.jsp"%>
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