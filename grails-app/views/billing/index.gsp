<%@ page import="ssiwms2.Billing" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'billing.label', default: 'Billing')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Billing</h4>
		</div>
		<div class="panel-body">

		<div id="list-billing" class="content scaffold-list" role="main">
			<div class="nav" role="navigation">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
					<h1></h1>
				</fieldset>
			</div>

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class = "table table-bordered">
			<thead>
					<tr>
					
						<g:sortableColumn class = "small" property="billNo" title="${message(code: 'billing.billNo.label', default: 'Bill No')}" />
					
						<g:sortableColumn class = "small" property="status" title="${message(code: 'billing.status.label', default: 'Status')}" />
					
						<g:sortableColumn class = "small" property="rate" title="${message(code: 'billing.rate.label', default: 'Rate')}" />
					
						<g:sortableColumn class = "small" property="total" title="${message(code: 'billing.total.label', default: 'Total')}" />
					
						<g:sortableColumn class = "small" property="total" title="${message (code:	'billing.pickup.label',default:'Pickup')}" />
					
						<g:sortableColumn class = "small" property="total" title="${message (code:	'billing.retrieval.label',default:'Retrieval')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${billingInstanceList}" status="i" var="billingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${billingInstance.id}">${fieldValue(bean: billingInstance, field: "billNo")}</g:link></td>
					
						<td>${fieldValue(bean: billingInstance, field: "status")}</td>
					
						<td>${fieldValue(bean: billingInstance, field: "rate")}</td>
					
						<td>${fieldValue(bean: billingInstance, field: "total")}</td>
					
						<td>${fieldValue(bean: billingInstance, field: "pickup")}</td>
					
						<td>${fieldValue(bean: billingInstance, field: "retrieval")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>

			<fieldset class="button"">
		<g:submitButton name="create" class="btn btn-danger" value="test"></g:submitButton>
		<g:submitButton name="create" class="btn btn-success" value="test2"></g:submitButton>
		</fieldset>

			<div class="pagination">
				<g:paginate total="${billingInstanceCount ?: 0}" />
			</div>
		</div>
			</div>
	</body>
</html>
