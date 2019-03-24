<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cn.aftertomorrow.po.*"%>
<%@ page import="cn.aftertomorrow.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<link href="${pageContext.request.contextPath }/css/common.css"
	type="text/css" rel="Stylesheet" />
<link rel="icon"
	href="${pageContext.request.contextPath }/img/title.ico"
	type="image/x-icon">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/img/title.ico"
	type="image/x-icon">
<title>留言</title>
<style type="text/css">
.main .content .replace {
	width: 94%;
	height: 700px;
	background: rgba(39, 40, 34, 0.8);
	border-radius: 5px;
	margin: 40px auto;
	border: solid 1px rgba(0, 0, 0, 0);
	margin-bottom: 100px;
}

.main .content .replace img {
	display: block;
	width: 100px;
	height: 100px;
	margin: 0 auto;
	margin-top: 150px;
}

.main .content .replace pre {
	width: 200px;
	height: 30px;
	margin: 30px auto;
	text-align: center;
}

.main .content .messageBlock {
	width: 94%;
	background: white;
	border-radius: 5px;
	margin: 20px auto;
	padding: 10px;
	background: rgba(39, 40, 34, 0.8);
}

.main .content .replyBlock {
	width: 83.5%;
	border-radius: 5px;
	padding: 10px;
	background: rgba(97, 109, 152, 0.8);
	margin-left: 10%;
	margin-bottom: 10px;
}

.main .content .replyBlock .message img {
	width: 30px;
	height: 30px;
	border: solid 1px white;
	display: block;
	border-radius: 23px;
	float: left;
	height: 30px;
	border: solid 1px white;
	display: block;
	border-radius: 23px;
}

.replyBlock .message .nameTime {
	width: 150px;
	height: 45px;
	float: left;
	margin-left: 20px;
	margin-top: 2px;
	line-height: 15px;
}

.replyBlock .message .nameTime .guestName {
	height: 15px;
	display: block;
	font-size: 12px;
	line-height: 15px;
}

.replyBlock .message .nameTime .time {
	height: 15px;
	font-size: 12px;
	display: block;
}

.replyBlock .message {
	width: 100%;
	height: 45px;
}

.replyBlock .words {
	width: 94%;
	margin: 10px 10px;
	word-wrap: break-word;
}

.main .content .messageBlock .message {
	width: 100%;
	height: 45px;
}

.messageBlock .message img {
	width: 40px;
	height: 40px;
	border: solid 1px white;
	display: block;
	border-radius: 23px;
	float: left;
}

.messageBlock .message .nameTime {
	width: 150px;
	height: 45px;
	float: left;
	margin-left: 20px;
	margin-top: 2px;
}

.messageBlock .message .nameTime .guestName {
	height: 25px;
	display: block;
}

.messageBlock .message .nameTime .time {
	height: 15px;
	font-size: 10px;
	display: block;
}

.messageBlock .message .floor {
	width: 30px;
	float: right;
	height: 45px;
	line-height: 45px;
	display: block;
}

.main .content .messageBlock .words {
	width: 93%;
	margin: 30px 20px;
	word-wrap: break-word;
}

.main .content .messageBlock .reply {
	display: block;
	width: 30px;
	height: 20px;
	color: #09fdf4;
	text-decoration: none;
	font-size: 12px;
	margin-left: 95%;
}

.main .content form {
	width: 100%;
	height: 300px;
	margin: 0 auto;
}

.main .content form span {
	color: white;
	margin-left: 45px;
}

.main .content form input {
	background: rgba(39, 40, 34, 0.8);
	color: white;
}

.main .content form #submit {
	border: none;
	margin-left: 60px;
	width: 80px;
	border-radius: 5px;
	height: 20px;
	color: white;
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
			<p
				style="margin: 0 auto; font-size: 15px; height: 50px; padding: 0 10px; width: 94%; line-height: 50px; background: rgb(39, 40, 34); border-radius: 5px;">有什么想和我说的可以在下面给我留言哟！</p>
			<%
				List<GuestMessage> guestMessages = (List) request.getAttribute("guestMessages");
				if (guestMessages.size() == 0) {
			%>
			<div class="replace">

				<img src="${pageContext.request.contextPath }/img/nothing.png">
				<p style="text-align: center; margin-top: 30px">还没有人给我留言 >_<|||</p>
			</div>
			<%
				} else {
					for (GuestMessage guestMessage : guestMessages) {
			%>
			<div class="messageBlock">
				<div class="message">
					<img class="guestIcon"
						src="${pageContext.request.contextPath }/img/guestIcon.png"
						onerror="onerror();">
					<div class="nameTime">
						<span class="guestName"><%=guestMessage.getName()%> </span> <span
							class="time"><%=Util.getYMDHMS(guestMessage.getTime())%> </span>
					</div>
					<span class="floor">F<%=guestMessage.getId()%></span>
				</div>
				<pre class="words"><%=guestMessage.getWords()%></pre>
				<a href="#textarea" class="reply">回复</a>
			</div>
			<%
				for (MessageReply messageReply : guestMessage.getMessageReplys()) {
			%>
			<div class="replyBlock">
				<div class="message">
					<img class="guestIcon"
						src="${pageContext.request.contextPath }/img/guestIcon.png"
						onerror="onerror();">
					<div class="nameTime">
						<span class="guestName"><%=messageReply.getName()%> </span><span
							class="time"><%=Util.getYMDHMS(messageReply.getTime())%> </span>
					</div>
				</div>
				<pre class="words"><%=messageReply.getWords()%></pre>
			</div>
			<%
				}
					}
				}
			%>
			<form action="${pageContext.request.contextPath }/addMessage"
				method="post">
				<textarea rows="10" cols="100" value="提交"
					style="margin: 20px auto; display: block; width: 92%; height: 160px; border-radius: 5px; padding: 10px; font-size: 15px; background: rgba(39, 40, 34, 0.8); color: white;"
					name="words" maxlength="500" wrap="hard" id="textarea"></textarea>
				<span>昵称：</span><input type="text" name="name" /> <span>邮箱：</span><input
					type="text" name="email" /> <input type="submit" value="提交"
					id="submit" />
			</form>
		</div>
	</div>
	<!-- 返回顶部 -->
	<div class="back" id="back">
		<i class="iconfont up">&#xe63f;</i>
	</div>
	<!-- 尾部 -->
	<%@ include file="common/footer.jsp"%>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/reply.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/common.js"></script>
</body>
</html>