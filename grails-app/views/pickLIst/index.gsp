
<%@ page import="ssiwms2.PickLIst" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pickLIst.label', default: 'PickLIst')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pickLIst" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pickLIst" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="barCode" title="${message(code: 'pickLIst.barCode.label', default: 'Bar Code')}" />
					
						<g:sortableColumn property="pickedUp" title="${message(code: 'pickLIst.pickedUp.label', default: 'Picked Up')}" />
					
						<g:sortableColumn property="batchCode" title="${message(code: 'pickLIst.batchCode.label', default: 'Batch Code')}" />
					
						<g:sortableColumn property="department" title="${message(code: 'pickLIst.department.label', default: 'Department')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'pickLIst.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="retention" title="${message(code: 'pickLIst.retention.label', default: 'Retention')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pickLIstInstanceList}" status="i" var="pickLIstInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pickLIstInstance.id}">${fieldValue(bean: pickLIstInstance, field: "barCode")}</g:link></td>
					
						<td>${fieldValue(bean: pickLIstInstance, field: "pickedUp")}</td>
					
						<td>${fieldValue(bean: pickLIstInstance, field: "batchCode")}</td>
					
						<td>${fieldValue(bean: pickLIstInstance, field: "department")}</td>
					
						<td>${fieldValue(bean: pickLIstInstance, field: "description")}</td>
					
						<td><g:formatDate date="${pickLIstInstance.retention}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pickLIstInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
