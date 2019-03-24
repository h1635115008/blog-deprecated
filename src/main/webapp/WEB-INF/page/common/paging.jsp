<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<div class="pagingBox">
	<ul class="paging">
		<%
			int current = 1;

			String pag = request.getParameter("current");
			if (pag == null) {
				pag = "1";
			} else {
				request.setAttribute("pag", pag);
				current = Integer.parseInt((String) request.getAttribute("pag"));
			}
			int pre = current - 1;
			int next = current + 1;
			int maxSize = (int) request.getAttribute("maxPage");
			String str1 = "";
			String str2 = "";
			String str3 = "";
			String str4 = "";
			String str5 = "";
			String str6 = "";
			String strX = "";
			String strY = "";
			String strZ = "";
			if (current == 1) {
				str1 = "current";
			} else if (current == 2) {
				str2 = "current";
			} else if (current == 3) {
				str3 = "current";
			} else if (current == 4) {
				str4 = "current";
			} else if (current == 5 || maxSize - 2 == current) {
				str5 = "current";
				strY = "current";
			} else if (current == maxSize - 3) {
				strX = "current";
			} else if (current == maxSize - 2) {
				strY = "current";
			} else if (current == maxSize - 1) {
				strZ = "current";
			} else if (current == maxSize) {
				str6 = "current";
			}
		%>
		<%
			if (current != 1) {
		%>
		<li class="page pre_page"><a
			href="${pageContext.request.contextPath }/${path}?current=<%=pre%>"><</a></li>
		<%
			}
		%>
		<li class="page index <%=str1%>"><a
			href="${pageContext.request.contextPath }/${path}?current=1">1</a></li>
		<%
			if (current - 1 > 2 && maxSize > 6) {
		%>
		<li class="page more">...</li>
		<%
			} else if (maxSize >= 2) {
		%>
		<li class="page index <%=str2%>"><a
			href="${pageContext.request.contextPath }/${path}?current=2">2</a></li>
		<%
			}
		%>
		<%
			if (maxSize - current < 3 && maxSize > 6) {
		%>

		<li class="page index <%=strX%>"><a
			href="${pageContext.request.contextPath }/${path}?current=<%=maxSize - 3%>"><%=maxSize - 3%></a></li>
		<li class="page index <%=strY%>"><a
			href="${pageContext.request.contextPath }/${path}?current=<%=maxSize - 2%>"><%=maxSize - 2%></a></li>
		<%
			} else if (current - 1 > 2 && maxSize > 6) {
		%>
		<li class="page index current"><a
			href="${pageContext.request.contextPath }/${path}?current=<%=current%>"><%=current%></a></li>
		<li class="page index"><a
			href="${pageContext.request.contextPath }/${path}?current=<%=current + 1%>"><%=current + 1%></a></li>
		<%
			} else if (maxSize >= 4) {
		%>
		<li class="page index <%=str3%>"><a
			href="${pageContext.request.contextPath }/${path}?current=3">3</a></li>
		<li class="page index <%=str4%>"><a
			href="${pageContext.request.contextPath }/${path}?current=4">4</a></li>
		<%
			} else if (maxSize >= 3) {
		%>
		<li class="page index <%=str3%>"><a
			href="${pageContext.request.contextPath }/${path}?current=3">3</a></li>
		<%
			}
		%>
		<%
			if (maxSize - current > 3 && maxSize > 6) {
		%>
		<li class="page more">...</li>
		<%
			} else if (maxSize > 6) {
		%>
		<li class="page index <%=strZ%>"><a
			href="${pageContext.request.contextPath }/${path}?current=<%=maxSize - 1%>"><%=maxSize - 1%></a></li>
		<%
			} else if (maxSize >= 5) {
		%>
		<li class="page index <%=str5%>"><a
			href="${pageContext.request.contextPath }/${path}?current=<%=5%>">5</a></li>
		<%
			}
		%>
		<%
			if (maxSize >= 6) {
		%>
		<li class="page index <%=str6%>"><a
			href="${pageContext.request.contextPath }/${path}?current=<%=maxSize%>"><%=maxSize%></a></li>
		<%
			}
		%>
		<%
			if (current != maxSize) {
		%>
		<li class="page next_page"><a
			href="${pageContext.request.contextPath }/${path}?current=<%=next%>">></a></li>
		<%
			}
		%>
	</ul>
</div>