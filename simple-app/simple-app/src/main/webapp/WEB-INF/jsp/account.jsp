<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%-- <%@ include file="../layout/taglib.jsp"%> --%>
	 ${current}
	<br />Welcome ${user.name}
	<br />
	<br />
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary btn-lg"
		data-toggle="modal" data-target="#myModal">New Blog</button>

	<form commandName="blog" cssClass="form-horizontal" method="POST">
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Insert your text</h4>
					</div>
					
					<div class="modal-body">
						
						<div class="form-group">
<!-- 							<label for="name" class="col-sm-5 control-label">Title of the Blog</label> -->
								<input type="text" name="name" class="form-control"  />
						</div>

						<div class="form-group">
<!-- 							<label for="name" class="col-sm-5 control-label">url</label> -->
								<input type="text" name="url" class="form-control"   />
						</div>
					
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<input name="submit" type="submit" class="btn btn-primary" value="Save" />
					</div>
				</div>
			</div>
		</div>
		<!-- Modal -->
	</form>
