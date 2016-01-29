<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp" %>

<script type="text/javascript">
$(document).ready(function(){
	$(".triggerBtn").click(function(e){
		e.preventDefault();
		$("#modalUserRemove .removeBtn").attr("href",$(this).attr("href"));
		$("#modalUserRemove").modal();
	});	
});

</script>

<table class="table table-bordered table-hover table-striped">
	<thead>
		<tr>
		<th>Users</th>
		<th>Operations</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${users}" var="user">
		<tr>
			<td>
			<a href="<spring:url value='/users/${user.id}.html' />"><c:out value="${user.name}"></c:out></a>
			</td>
			<td>
			<a href="<spring:url value='/users/remove/${user.id}.html' />" class="btn btn-danger triggerBtn">Remove</a>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>


<div class="modal fade" id="modalUserRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        Really remove user?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <a href="" class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
  </div>
</div>


