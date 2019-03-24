<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="cn.aftertomorrow.po.*"%>
<%@ page import="cn.aftertomorrow.util.*"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/font-awesome.min.css">
<link
	href="${pageContext.request.contextPath }/css/froala_editor.min.css"
	rel="stylesheet" type="text/css">
<meta name="viewport" charset="utf-8"
	content="width=device-width, initial-scale=1">
<link href="${pageContext.request.contextPath }/css/allf.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/fSelect.css"
	rel="stylesheet" type="text/css">
<link rel="icon"
	href="${pageContext.request.contextPath }/img/title.ico"
	type="image/x-icon">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/img/title.ico"
	type="image/x-icon">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/option.js"></script>
<title>写博客</title>
<style>
body {
	text-align: center;
	background-color: #272822;
	background-image:
		url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 304 304' width='304' height='304'%3E%3Cpath fill='%23ffffff' fill-opacity='0.4' d='M44.1 224a5 5 0 1 1 0 2H0v-2h44.1zm160 48a5 5 0 1 1 0 2H82v-2h122.1zm57.8-46a5 5 0 1 1 0-2H304v2h-42.1zm0 16a5 5 0 1 1 0-2H304v2h-42.1zm6.2-114a5 5 0 1 1 0 2h-86.2a5 5 0 1 1 0-2h86.2zm-256-48a5 5 0 1 1 0 2H0v-2h12.1zm185.8 34a5 5 0 1 1 0-2h86.2a5 5 0 1 1 0 2h-86.2zM258 12.1a5 5 0 1 1-2 0V0h2v12.1zm-64 208a5 5 0 1 1-2 0v-54.2a5 5 0 1 1 2 0v54.2zm48-198.2V80h62v2h-64V21.9a5 5 0 1 1 2 0zm16 16V64h46v2h-48V37.9a5 5 0 1 1 2 0zm-128 96V208h16v12.1a5 5 0 1 1-2 0V210h-16v-76.1a5 5 0 1 1 2 0zm-5.9-21.9a5 5 0 1 1 0 2H114v48H85.9a5 5 0 1 1 0-2H112v-48h12.1zm-6.2 130a5 5 0 1 1 0-2H176v-74.1a5 5 0 1 1 2 0V242h-60.1zm-16-64a5 5 0 1 1 0-2H114v48h10.1a5 5 0 1 1 0 2H112v-48h-10.1zM66 284.1a5 5 0 1 1-2 0V274H50v30h-2v-32h18v12.1zM236.1 176a5 5 0 1 1 0 2H226v94h48v32h-2v-30h-48v-98h12.1zm25.8-30a5 5 0 1 1 0-2H274v44.1a5 5 0 1 1-2 0V146h-10.1zm-64 96a5 5 0 1 1 0-2H208v-80h16v-14h-42.1a5 5 0 1 1 0-2H226v18h-16v80h-12.1zm86.2-210a5 5 0 1 1 0 2H272V0h2v32h10.1zM98 101.9V146H53.9a5 5 0 1 1 0-2H96v-42.1a5 5 0 1 1 2 0zM53.9 34a5 5 0 1 1 0-2H80V0h2v34H53.9zm60.1 3.9V66H82v64H69.9a5 5 0 1 1 0-2H80V64h32V37.9a5 5 0 1 1 2 0zM101.9 82a5 5 0 1 1 0-2H128V37.9a5 5 0 1 1 2 0V82h-28.1zm16-64a5 5 0 1 1 0-2H146v44.1a5 5 0 1 1-2 0V18h-26.1zm102.2 270a5 5 0 1 1 0 2H98v14h-2v-16h124.1zM242 149.9V160h16v34h-16v62h48v48h-2v-46h-48v-66h16v-30h-16v-12.1a5 5 0 1 1 2 0zM53.9 18a5 5 0 1 1 0-2H64V2H48V0h18v18H53.9zm112 32a5 5 0 1 1 0-2H192V0h50v2h-48v48h-28.1zm-48-48a5 5 0 0 1-9.8-2h2.07a3 3 0 1 0 5.66 0H178v34h-18V21.9a5 5 0 1 1 2 0V32h14V2h-58.1zm0 96a5 5 0 1 1 0-2H137l32-32h39V21.9a5 5 0 1 1 2 0V66h-40.17l-32 32H117.9zm28.1 90.1a5 5 0 1 1-2 0v-76.51L175.59 80H224V21.9a5 5 0 1 1 2 0V82h-49.59L146 112.41v75.69zm16 32a5 5 0 1 1-2 0v-99.51L184.59 96H300.1a5 5 0 0 1 3.9-3.9v2.07a3 3 0 0 0 0 5.66v2.07a5 5 0 0 1-3.9-3.9H185.41L162 121.41v98.69zm-144-64a5 5 0 1 1-2 0v-3.51l48-48V48h32V0h2v50H66v55.41l-48 48v2.69zM50 53.9v43.51l-48 48V208h26.1a5 5 0 1 1 0 2H0v-65.41l48-48V53.9a5 5 0 1 1 2 0zm-16 16V89.41l-34 34v-2.82l32-32V69.9a5 5 0 1 1 2 0zM12.1 32a5 5 0 1 1 0 2H9.41L0 43.41V40.6L8.59 32h3.51zm265.8 18a5 5 0 1 1 0-2h18.69l7.41-7.41v2.82L297.41 50H277.9zm-16 160a5 5 0 1 1 0-2H288v-71.41l16-16v2.82l-14 14V210h-28.1zm-208 32a5 5 0 1 1 0-2H64v-22.59L40.59 194H21.9a5 5 0 1 1 0-2H41.41L66 216.59V242H53.9zm150.2 14a5 5 0 1 1 0 2H96v-56.6L56.6 162H37.9a5 5 0 1 1 0-2h19.5L98 200.6V256h106.1zm-150.2 2a5 5 0 1 1 0-2H80v-46.59L48.59 178H21.9a5 5 0 1 1 0-2H49.41L82 208.59V258H53.9zM34 39.8v1.61L9.41 66H0v-2h8.59L32 40.59V0h2v39.8zM2 300.1a5 5 0 0 1 3.9 3.9H3.83A3 3 0 0 0 0 302.17V256h18v48h-2v-46H2v42.1zM34 241v63h-2v-62H0v-2h34v1zM17 18H0v-2h16V0h2v18h-1zm273-2h14v2h-16V0h2v16zm-32 273v15h-2v-14h-14v14h-2v-16h18v1zM0 92.1A5.02 5.02 0 0 1 6 97a5 5 0 0 1-6 4.9v-2.07a3 3 0 1 0 0-5.66V92.1zM80 272h2v32h-2v-32zm37.9 32h-2.07a3 3 0 0 0-5.66 0h-2.07a5 5 0 0 1 9.8 0zM5.9 0A5.02 5.02 0 0 1 0 5.9V3.83A3 3 0 0 0 3.83 0H5.9zm294.2 0h2.07A3 3 0 0 0 304 3.83V5.9a5 5 0 0 1-3.9-5.9zm3.9 300.1v2.07a3 3 0 0 0-1.83 1.83h-2.07a5 5 0 0 1 3.9-3.9zM97 100a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-48 32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm32 48a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm32-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0-32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm32 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16-64a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 96a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16-144a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16-32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-96 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16-32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm96 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16-64a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-32 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zM49 36a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-32 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm32 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zM33 68a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16-48a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 240a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16-64a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16-32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm80-176a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm32 48a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0-32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm112 176a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-16 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zM17 180a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 16a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0-32a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16 0a3 3 0 1 0 0-6 3 3 0 0 0 0 6zM17 84a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm32 64a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm16-16a3 3 0 1 0 0-6 3 3 0 0 0 0 6z'%3E%3C/path%3E%3C/svg%3E");
}

section {
	width: 80%;
	margin: auto;
	text-align: left;
}

.uploadForm {
	list-style-type: none;
	width: 260px;
	margin: auto;
}

.uploadForm .title {
	width: 196px;
	height: 20px;
	border: 1px solid darkgray;
	border-radius: 10px;
}

.uploadForm .uoloadBox {
	margin-bottom: 10px;
}

.uploadForm .detatils {
	width: 192px;
	height: 100px;
	border: 1px solid darkgray;
	border-radius: 10px;
}

.uploadForm .submit {
	width: 70px;
	height: 20px;
	background: #42a2e1;
	border: none;
	color: white;
	font-size: 16px;
	border-radius: 12px;
	float: right;
	margin-right: 5px;
	margin-top: 2px;
}	
	.loadingBox{
		    position: fixed;
    		display: -webkit-flex;
    		display:none;
    		-webkit-align-items: center;
   			 align-items: center;
    		-webkit-justify-content: center;
    		justify-content: center;
    		pointer-events: none;
    		background: rgba(55,58,71,.9);
    		width: 100%;
    		height: 100%;
    		top: 0;
    		left: 0;
    		z-index: 100;
	}
	.loadingBox .loading{
		width: 80px;
		height: 40px;
	}
	.loadingBox .loading span{
		display: inline-block;
		width: 8px;
		height: 100%;
		border-radius: 4px;
		background: darkgray;
		-webkit-animation: load 1s ease infinite;
		animation: load 1s ease infinite;
	}
	@-webkit-keyframes load{
		0%,100%{
			height: 40px;
			background: #a9a9a9cf;
		}
		50%{
			height: 70px;
			margin: -15px 0;
			background: darkgray;
		}
	}
	.loadingBox .loading span:nth-child(2){
		-webkit-animation-delay:0.2s;
		animation-delay:0.2s;
	}
	.loadingBox .loading span:nth-child(3){
		-webkit-animation-delay:0.4s;
		animation-delay:0.4s;
	}
	.loadingBox .loading span:nth-child(4){
		-webkit-animation-delay:0.6s;
		animation-delay:0.6s;
	}
	.loadingBox .loading span:nth-child(5){
		-webkit-animation-delay:0.8s;
		animation-delay:0.8s;
	}

</style>
</head>

<body>
	<div class="loadingBox" id="loadingBox">
		<div class="loading">
			<span></span> <span></span> <span></span> <span></span> <span></span>
		</div>
	</div>
	<section id="editor">
		<div id='edit' style="margin-top: 30px;"></div>
	</section>
	<div id="somedialog" class="dialog">
		<div class="dialog__overlay"></div>
		<div class="dialog__content">
			<!--  <h2>
				<strong>Howdy</strong>, I'm a dialog box
			</h2>
			<div>
				<button class="action" data-dialog-close>Close</button>
			</div>-->
			<ul class="uploadForm">
				<li class="uoloadBox"><label>标题：</label> <input type="text"
					name="title" class="title" id="title" value=""></li>
				<li class="uoloadBox"><label>描述：</label> <textarea
						class="detatils" rows="" cols="" id="detatils"></textarea></li>
				<li class="uoloadBox"><label>标签：</label><select class="tag"
					multiple="multiple">
					<%
						Map<String,List<Tag>> tagOrderByKinds = (Map<String,List<Tag>>)request.getAttribute("tagOrderByKinds");
						for(String kind : tagOrderByKinds.keySet()){
					%>
						<optgroup label="<%=kind %>">
						<%
							for(Tag tag : tagOrderByKinds.get(kind)){
						%>
							<option value="<%=tag.getName() %>"><%=tag.getName() %></option>
						</optgroup>
						<%
							}
						}
						%>
				</select></li>
				<li><input type="submit" value="提交" class="submit"></li>
			</ul>
		</div>
	</div>
	<!-- <script src="${pageContext.request.contextPath }/js/jquery.min.js"></script> -->
	<script
		src="${pageContext.request.contextPath }/js/froala_editor.min.js"></script>
	<!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath }/js/froala_editor_ie8.min.js"></script>
  <![endif]-->
	<script
		src="${pageContext.request.contextPath }/js/plugins/tables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/plugins/lists.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/plugins/colors.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/plugins/media_manager.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/plugins/font_family.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/plugins/font_size.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/plugins/block_styles.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/plugins/video.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/fSelect.js"></script>
	<script>
		$(function() {
			$('.tag').fSelect();
			$('#edit').editable({
				inlineMode : false,
				alwaysBlank : true
			});
			$(".dialog__overlay").click(function() {

				$(this).DialogShow({

					'id' : 'somedialog',

					'dialogFx' : '0',

				});
				console.log($(this));
			});

			$(".action").click(function() {

				$(this).DialogShow({

					'id' : 'somedialog',

					'dialogFx' : '0',

				});
			});

			var code = document.getElementsByClassName("f-basic").item(1);
			var toolBar = document.getElementById("bttn-wrapper-1");
			var loadingBox = document.getElementById("loadingBox");
			var upload = document.createElement("Button");
			upload.setAttribute("class", "fr-bttn");
			upload.setAttribute("title", "upload");
			upload.setAttribute("type", "button");
			upload.setAttribute("id", "upload");
			var uploadChild = document.createElement("i");
			uploadChild.setAttribute("class", "fa fa-upload");
			upload.appendChild(uploadChild);
			toolBar.appendChild(upload);
			$("#upload").click(function() {
				$(this).DialogShow({

					'id' : 'somedialog',

					'dialogFx' : '1',

				});

			});
			$(".submit")
					.click(
							function() {
								var array = $('.selected');
								var tag = '';
								var text = code.innerHTML;
								var detail = document
										.getElementById("detatils").value;
								;
								var title = document.getElementById("title").value;
								for (var i = 0; i < array.length; i++) {
									tag = tag
											+ array[i]
													.getAttribute("data-value")
											+ ",";
								}
								console.log("title=" + title + "&text=" + text
										+ "&detail=" + detail + "&tag="
										+ tag);
								addArticle(title, text, detail, tag);
								loadingBox.style.display = "flex";
								$(this).DialogShow({

									'id' : 'somedialog',

									'dialogFx' : '0',

								});
							});
			function addArticle(title, text, detail, tag) {
				var xmlhttp;
				if (window.XMLHttpRequest) {
					// IE7+, Firefox, Chrome, Opera, Safari æµè§å¨æ§è¡ä»£ç 
					xmlhttp = new XMLHttpRequest();
				} else {
					// IE6, IE5 æµè§å¨æ§è¡ä»£ç 
					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
				xmlhttp.onreadystatechange = function() {
					if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
						//alert(xmlhttp.responseText);
						setTimeout(function(){
							loadingBox.style.display = "none";
							console.log(xmlhttp.responseText);
						},500);
						console.log("helloworld");
					}
				}
				xmlhttp.open("POST", "${pageContext.request.contextPath }/addArticle", true);
				xmlhttp.setRequestHeader("Content-type",
						"application/x-www-form-urlencoded; charset='utf-8'");
				xmlhttp.send("title=" + encodeURIComponent(encodeURIComponent(title)) + "&text=" + encodeURIComponent(encodeURIComponent(text)) + "&detail="
						+ encodeURIComponent(encodeURIComponent(detail)) + "&tag=" + encodeURIComponent(encodeURIComponent(tag)));
			}
		});
	</script>
</body>
</html>
