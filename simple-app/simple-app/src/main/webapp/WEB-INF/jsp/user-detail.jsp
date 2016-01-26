<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	$(".nav-tabs a:first").tab("show");
});
</script>
<h1>${user.name}</h1>

<div>
	<!-- Nav tabs -->
	<ul class="nav nav-tabs" role="tablist">
		<c:forEach items="${user.blogs}" var="blog">
			<li><a href="#blog_${blog.id}" data-toggle="tab">${blog.name}</a></li>
		</c:forEach>
	</ul>

	<!-- Tab panes -->
	<div class="tab-content">
		<c:forEach items="${user.blogs}" var="blog">
			<div class="tab-pane" id="blog_${blog.id}">
				<h4>Blog Name : ${blog.name}</h4>
				<h4>Blog URL  : ${blog.url}</h4>
				<h5>Blog User : ${blog.user}</h5>
				<table class="table table-bordered table-hover table-striped">
					<thead>
						<tr>
							<th>Title</th>
							<th>Link</th>
						</tr>
					</thead>
					<tbody>
						<tr>
						</tr>
						<c:forEach items="${blog.items}" var="item">
							<tr>
								<td>${item.title}</td>
								<td>${item.link}</td>
							</tr>
						</c:forEach>
					</tbody>
					</table>
					</div>
		</c:forEach>
	</div>
</div>

<%-- <c:forEach items="${user.blogs}" var="blog"> --%>
<%-- 	<h4>${blog.name}</h4> --%>
<%-- 	<h4>${blog.url}</h4> --%>
<%-- 	<h5>${blog.user}</h5> --%>
<!-- 	<table class="table table-bordered table-hover table-striped"> -->
<!-- 		<thead> -->
<!-- 			<tr> -->
<!-- 				<th>Title</th> -->
<!-- 				<th>Link</th> -->
<!-- 			</tr> -->
<!-- 		</thead> -->
<!-- 		<tbody> -->
<!-- 			<tr> -->
<!-- 			</tr> -->
<%-- 			<c:forEach items="${blog.items}" var="item"> --%>
<!-- 				<tr> -->
<%-- 					<td>${item.title}</td> --%>
<%-- 					<td>${item.link}</td> --%>
<!-- 				</tr> -->
<%-- 			</c:forEach> --%>
<!-- 		</tbody> -->
<!-- 	</table> -->
<%-- </c:forEach> --%>

