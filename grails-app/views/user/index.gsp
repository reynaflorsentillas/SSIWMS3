<%@ page import="ssiwms2.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'User.label', default: 'user')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

				<h1>User List</h1>
	<div class="nav" role="navigation">
		<fieldset class="button">
				<g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				<h3></h3>
			</fieldset>
		</div>
		<div id="list-user" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class = "table table-bordered">
			<thead>
					<tr class = small>

						<g:sortableColumn property="email" title="${message(code: 'User.email.label', default: 'Email')}" />

						<g:sortableColumn property="email" title="${message (code:'User.client.label',default:'Client')}" />

						<g:sortableColumn property="clientCode" title="${message(code: 'User.clientCode.label', default: 'Client Code')}" />

						<g:sortableColumn property="firstName" title="${message(code: 'User.firstName.label', default: 'First Name')}" />

						<g:sortableColumn property="lastName" title="${message(code: 'User.lastName.label', default: 'Last Name')}" />

						<g:sortableColumn property="password" title="${message(code: 'User.password.label', default: 'Password')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "email")}</g:link></td>

						<td>${fieldValue(bean: userInstance, field: "client")}</td>

						<td>${fieldValue(bean: userInstance, field: "clientCode")}</td>

						<td>${fieldValue(bean: userInstance, field: "firstName")}</td>

						<td>${fieldValue(bean: userInstance, field: "lastName")}</td>

						<td>${fieldValue(bean: userInstance, field: "password")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
