<%@ page import="ssiwms2.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'User.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="show-User" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<div class="nav" role="navigation">
				<fieldset class = "button">
					<g:link class="btn-default" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
					<g:link class="btn-default" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				</fieldset>
			</div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${UserInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="User.email.label" default="Email" /></span>

						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${UserInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UserInstance?.client}">
				<li class="fieldcontain">
					<span id="client-label" class="property-label"><g:message code="User.client.label" default="Client" /></span>
					
						<span class="property-value" aria-labelledby="client-label"><g:link controller="client" action="show" id="${userInstance?.client?.id}">${userInstance?.client?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.clientCode}">
				<li class="fieldcontain">
					<span id="clientCode-label" class="property-label"><g:message code="User.clientCode.label" default="Client Code" /></span>
					
						<span class="property-value" aria-labelledby="clientCode-label"><g:fieldValue bean="${UserInstance}" field="clientCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UserInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="User.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${UserInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UserInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="User.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${UserInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UserInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="User.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${UserInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UserInstance?.userID}">
				<li class="fieldcontain">
					<span id="userID-label" class="property-label"><g:message code="User.userID.label" default="User ID" /></span>
					
						<span class="property-value" aria-labelledby="userID-label"><g:fieldValue bean="${userInstance}" field="userID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.userType}">
				<li class="fieldcontain">
					<span id="userType-label" class="property-label"><g:message code="user.userType.label" default="User Type" /></span>
					
						<span class="property-value" aria-labelledby="userType-label"><g:fieldValue bean="${userInstance}" field="userType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="user.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-sm" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<h3></h3>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
