<%@ page import="ssiwms2.Pickup" %>


	<div class = "row" xmlns="http://www.w3.org/1999/html">
		<div class = "col-sm-6">

				<div class="fieldcontain ${hasErrors(bean: pickupInstance, field: 'clientCode', 'error')} required">
					<label for="clientCode">
						<g:message code="Company Name" default="Company Name" />
						<span class="required-indicator">*</span>
					</label>
						<g:select optionKey="clientCode" optionValue="clientName" name="clientCode" from="${ssiwms2.Client.list()}"/>

				</div>

		</div>
		<div class = "col-sm-6">

				<div class="fieldcontain ${hasErrors(bean: pickupInstance, field: 'requestDate', 'error')} required">
					<label for="requestDate">
						<g:message code="pickup.requestDate.label" default="Request Date" />
						<span class="required-indicator">*</span>
					</label>
					<calendar:datePicker name="requestDate" defaultValue="${new Date()}" value="${pickupInstance?.requestDate}"/>
				</div>

		</div>
	</div>

<div class = "row">
	<div class = "col-sm-12">

		<h1></h1>

	</div>
</div>

	<div class = "row">
		<div class = "col-sm-6">

			<div class="fieldcontain ${hasErrors(bean: pickupInstance, field: 'requesterName', 'error')} required">
				<label for="requesterName">
					<g:message code="Name of Requester" default="Name of Requester" />
					<span class="required-indicator">*</span>
				</label>
				<g:textField class = "form-control"  name="requesterName" required="" value="${pickupInstance?.requesterName}"/>
			</div>

		</div>

		<div class = "col-sm-6">

			<div class="fieldcontain ${hasErrors(bean: pickupInstance, field: 'departmentCode', 'error')} required">
				<label for="departmentCode">
					<g:message code="Department" default="Department" />
					<span class="required-indicator">*</span>
				</label>
				<g:textField class = "form-control" name="departmentCode" required="" value="${pickupInstance?.departmentCode}"/>
			</div>

		</div>
	</div>

<div class = "row">
	<div class = "col-sm-12">

		<h1></h1>

	</div>
</div>

	<div class = "row">
		<div class = "col-sm-6">

			<div class="fieldcontain ${hasErrors(bean: pickupInstance, field: 'address', 'error')} required">
				<label for="address">
					<g:message code="Authorized Address" default="Authorized Address" />
					<span class="required-indicator">*</span>
				</label>
				<g:textField class = "form-control" name="address" required="" value="${pickupInstance?.address}"/>
			</div>

		</div>

		<div class = "col-sm-6">

			<div class="fieldcontain ${hasErrors(bean: pickupInstance, field: 'phone', 'error')} required">
				<label for="phone">
					<g:message code="Contact Number" default="Contact Number" />
					<span class="required-indicator">*</span>
				</label>
				<g:field class = "form-control" name="phone" value="${pickupInstance.phone}" required=""/>
			</div>

		</div>

	</div>


<div class = "row">
	<div class = "col-sm-12">

		<h1></h1>

	</div>
</div>

<div class = "row">
	<div class = "col-sm-6">

	<div class="fieldcontain ${hasErrors(bean: pickupInstance, field: 'pickupDate', 'error')} required">
		<label for="pickupDate">
			<g:message code="pickup.pickupDate.label" default="Pickup Date" />
			<span class="required-indicator">*</span>
		</label>
		<calendar:datePicker name="pickupDate" defaultValue="${new Date()}" value="${pickupInstance?.pickupDate}"/>
	</div>

	</div>

	<div class = "col-sm-6">

		<div class="fieldcontain" ${hasErrors(bean: pickupInstance, field: 'rush', 'error')}">
			<label for="rush">
				Rush?
				<g:radioGroup name="rush"
							  labels="['Yes','No']"
							  values="[1,2]">
					<label>${it.radio} ${it.label} </label>
				</g:radioGroup>
			</label>
		</div>

	</div>
</div>

<div class = "row">
	<div class = "col-sm-12">
		<h1></h1>
	</div>
</div>

<div class = "row">
	<div class = "col-sm-12">

		<h1></h1>

	</div>
</div>




<div class="panel panel-default">

	<div class="panel-heading"><h5><g:message code="Items To Pickup" args="Items to Pickup" /></h5></div>

	<div class="panel-body">

		<div class="fieldcontain ${hasErrors(bean: pickupInstance, field: 'packingList', 'error')} ">
			<g:each in="${pickupInstance?.packingList?}" var="u">
				<g:link controller="PackingList" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link>
			</g:each>
			<g:link class="btn btn-default btn-sm" controller="PackingList" action="create" params="['pickup.id': pickupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'Items', default: 'Items')])}</g:link>
			<h3></h3>
		</div>

		<div id="list-packingList" class="content scaffold-list" role="main">

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>

			<table class="table table-bordered table-hover">
				<thead class="th">
				<tr>

					<g:sortableColumn class="small" property="barCode"
									  title="${message(code: 'packingList.barCode.label', default: 'Bar Code')}"/>

					<g:sortableColumn class="small" property="batchCode"
									  title="${message(code: 'packingList.batchCode.label', default: 'Batch Code')}"/>

					<g:sortableColumn class="small" property="description"
									  title="${message(code: 'packingList.description.label', default: 'Description')}"/>

					<g:sortableColumn class="small" property="retention"
									  title="${message(code: 'packingList.retention.label', default: 'Retention')}"/>

					<g:sortableColumn class="small" property="department"
									  title="${message(code: 'packingList.department.label', default: 'Department')}"/>

					<g:sortableColumn class="small" property="status"
									  title="${message(code: 'packingList.status.label', default: 'Status')}"/>

				</tr>
				</thead>
				<tbody>
				<g:each in="${packingListInstanceList}" status="i" var="packingListInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show"
									id="${packingListInstance.id}">${fieldValue(bean: packingListInstance, field: "barCode")}</g:link></td>

						<td>${fieldValue(bean: packingListInstance, field: "batchCode")}</td>

						<td>${fieldValue(bean: packingListInstance, field: "description")}</td>

						<td><g:formatDate date="${packingListInstance.retention}"/></td>

						<td>${fieldValue(bean: packingListInstance, field: "department")}</td>

						<td>${fieldValue(bean: packingListInstance, field: "status")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>

			<div class="pagination">
				<g:paginate total="${packingListInstanceCount ?: 0}"/>
			</div>
		</div>

	</div>
</div>


