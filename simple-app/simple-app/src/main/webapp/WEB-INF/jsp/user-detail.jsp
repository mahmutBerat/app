<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp"%>

<h1>${user.name}</h1>

<c:forEach items="${user.blogs}" var="blog">
	<h4>${blog.name}</h4>
	<h4>${blog.url}</h4>
</c:forEach>
<table class="table table-bordered table-hover table-striped">
	<thead>
		<tr>
			<th>Title</th>
			<th>Link</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Title</td>
			<td>Link</td>
		</tr>
		<c:forEach items="${blog.items}" var="item">
			<tr>
				<td>${item.link}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

