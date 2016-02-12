<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp"%>
${current}
<br />
Welcome ${user.name}
<br />
<br />
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal"
	data-target="#myModal">New Blog</button>



<form:form commandName="blog" cssClass="form-horizontal">

	<c:if test="${param.success eq true}">
		<div class="alert alert-success">Successfull</div>
	</c:if>

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<div class="modal-body">
 
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">Name: </label>
							<div class="col-sm-10">
								<form:input path="name" cssClass="form-control"
									placeholder="Name" />
								<form:errors path="name"></form:errors>
							</div>
						</div>
						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">Email:
							</label>
							<div class="col-sm-10">
								<form:input path="url" cssClass="form-control" placeholder="url" />
								<form:errors path="url"></form:errors>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-lg btn-primary">Sign
									in</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</form:form>