<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<div id="navBox">
	<input type="checkbox" id="check" /> <label for="check" id="button">
		<div id="item"></div>
	</label>
	<div id="nav">
		<div id="persionalInfo">
			<img src="img/icon.jpg" id="icon" /> <span id="nickName">明天过后</span>
			<span id="email">1635115008@qq.com</span>
		</div>
		<hr id="break" />
		<div id="navigation">
			<div>
					<a href="${pageContext.request.contextPath }/index"><i class="iconfont index">&#xe613;</i><span>首&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;页</span></a>
					<a href="${pageContext.request.contextPath }/file"><i class="iconfont file">&#xe61c;</i><span>归&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;档</span></a>
					<a href="${pageContext.request.contextPath }/tag"><i class="iconfont tag">&#xe7ca;</i><span>标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;签</span></a>
					<a href="${pageContext.request.contextPath }/message"><i class="iconfont words">&#xe6d4;</i><span>留&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;言</span></a>
					<a href="${pageContext.request.contextPath }/about"><i class="iconfont about">&#xe637;</i><span>关&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;于</span></a>
			</div>
		</div>
	</div>
</div>