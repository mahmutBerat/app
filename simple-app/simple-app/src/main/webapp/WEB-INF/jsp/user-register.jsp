<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp"%>


<form:form commandName="user" cssClass="form-horizontal registerForm">

	<c:if test="${param.success eq true}">
		<div class="alert alert-success">Successfull</div>
	</c:if>

	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">Name: </label>
		<div class="col-sm-10">
			<form:input id="name" path="name"  cssClass="form-control" 
				placeholder="Name"/>
				<form:errors path="name"></form:errors>
		</div>
	</div>
		<div class="form-group">
		<label for="email" class="col-sm-2 control-label">Email: </label>
		<div class="col-sm-10">
			<form:input path="email" cssClass="form-control" 
				placeholder="Email"/>
				<form:errors path="email"></form:errors>
		</div>
	</div>
		<div class="form-group">
		<label for="password" class="col-sm-2 control-label">Password: </label>
		<div class="col-sm-10">
			<form:password path="password"  cssClass="form-control"
				placeholder="Password"/>
				<form:errors path="password"></form:errors>
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-lg btn-primary">Sign in</button>
		</div>
	</div>
</form:form>


<script type="text/javascript">
	$(document).ready(function(){
		var minChar = 2;
		$(".registerForm").validate(
		{
			rules:{
				name:{
					required:true,
					minlength:minChar,
					remote:{
						url:"<spring:url value='/user-register/available.html '/>",
						type:"get",
						data:{
							username:function(){
								return $("#name").val();
							}	
						}	
					}
				},
				email:{
					required:true,
					minlength:3
				},
				password:{
					required:true,
					minlength:2
				}
			},
			highlight: function(e){
				$(e).closest(".form-group").removeClass("has-success").addClass("has-error");
			},
			unhighlight: function(e){
				$(e).closest(".form-group").removeClass("has-error").addClass("has-success");
			},
			messages:{
				name:{
	                minlength: "Eksik girdin",
	                remote: "Bu kullanıcı adı kullanılıyor",
	                required: "burası boş kalamaz"
					}
			}
		});
	});

</script>