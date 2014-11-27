<%@ page import="ssiwms2.User" %>

<div class = "row">
	<div class = "col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'client', 'error')} required">
			<label for="client">
				<g:message code="user.client.label" default="Client" />
				<span class="required-indicator">*</span>
			</label>
			<g:select class = "form-control" id="client" name="client.id" from="${ssiwms2.Client.list()}" optionKey="id" required="" value="${userInstance?.client?.id}" class="many-to-one"/>
		</div>
	</div>
</div>


<div class = "row">
	<div class = "col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'clientCode', 'error')} required">
			<label for="clientCode">
				<g:message code="user.clientCode.label" default="Client Code" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class = "form-control" name="clientCode" required="" value="${userInstance?.clientCode}"/>
		</div>
	</div>


	<div class = "col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
			<label for="email">
					<g:message code="user.email.label" default="Email" />
					<span class="required-indicator">*</span>
			</label>
			<g:field class = "form-control" type="email" name="email" required="" value="${userInstance?.email}"/>
		</div>
	</div>
</div>

<div class = "row">
	<div class = "col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} required">
			<label for="firstName">
				<g:message code="user.firstName.label" default="First Name" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class = "form-control" name="firstName" required="" value="${userInstance?.firstName}"/>
		</div>
	</div>

	<div class = "col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} required">
			<label for="lastName">
				<g:message code="user.lastName.label" default="Last Name" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class = "form-control" name="lastName" required="" value="${userInstance?.lastName}"/>
		</div>
	</div>
</div>


<div class = "row">
	<div class = "col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
			<label for="username">
				<g:message code="user.username.label" default="Username" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class = "form-control" name="username" required="" value="${userInstance?.username}"/>
		</div>
	</div>


	<div class = "col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
			<label for="password">
				<g:message code="user.password.label" default="Password" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class = "form-control" name="password" required="" value="${userInstance?.password}"/>
		</div>
	</div>
</div>

<div class = "row">
	<div class = "col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userID', 'error')} required">
			<label for="userID">
				<g:message code="user.userID.label" default="User ID" />
				<span class="required-indicator">*</span>
			</label>
			<g:field class = "form-control" name="userID" type="number" value="${userInstance.userID}" required=""/>
		</div>
	</div>


	<div class = "col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userType', 'error')} required">
			<label for="userType">
				<g:message code="user.userType.label" default="User Type" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class = "form-control" name="userType" required="" value="${userInstance?.userType}"/>
		</div>
	</div>
</div>



