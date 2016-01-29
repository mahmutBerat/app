<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	$(".nav-tabs a:first").tab("show");
	
	$(".triggerRemove").click(function(e){
		e.preventDefault();
		$("#modalRemove .removeBtn").attr("href", $(this).attr("href"));
		$("#modalRemove").modal();
	});
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
				<a href='<spring:url value="/blog/remove/${blog.id}.html" />' class="btn btn-danger triggerRemove">Remove Blog</a>
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

<div class="modal fade" id="modalRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Remove Blog</h4>
      </div>
      <div class="modal-body">
        Really remove?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <a href="" class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
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

