<%@ page import="ssiwms2.Pickup" %>


	<div class = "row">
		<div class = "col-sm-6">

				<div class="fieldcontain ${hasErrors(bean: pickupInstance, field: 'clientCode', 'error')} required">
					<label for="clientCode">
						<g:message code="Company Name" default="Company Name" />
						<span class="required-indicator">*</span>
					</label>
						<g:textField class = "form-control"  name="clientCode" required="" value="${pickupInstance?.clientCode}"/>
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
					<g:message code="pickup.departmentCode.label" default="Department Code" />
					<span class="required-indicator">*</span>
				</label>
				<g:textField class = "form-control" name="departmentCode" required="" value="${pickupInstance?.departmentCode}"/>
			</div>

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

			<div class="fieldcontain ${hasErrors(bean: pickupInstance, field: 'contactNumber', 'error')} required">
				<label for="contactNumber">
					<g:message code="pickup.contactNumber.label" default="Contact Number" />
					<span class="required-indicator">*</span>
				</label>
				<g:field class = "form-control" name="contactNumber" type="number" value="${pickupInstance.contactNumber}" required=""/>
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

		<div class="fieldcontain">
			<label for="notify">
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
	<div class="panel-heading"><h4><g:message code="Items To Pickup" args="Items to Pickup" /></h4></div>
	<div class="panel-body">
		<div id="list-item" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="row">
				<div class="col-sm-4">
					<div class="fieldcontain ${hasErrors(bean: pickupInstance, field: 'items', 'error')} ">
						<g:each in="${pickupInstance?.items?}" var="i">
							<g:link controller="item" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link>
						</g:each>
						<g:link controller="item" action="create" params="['pickup.id': pickupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'item.label', default: 'Item')])}</g:link>
					</div>
				</div>
			</div>
			<table class="table table-bordered table-hover">
				<thead class="th">
				<tr>

					<g:sortableColumn class="small" property="barCode" title="${message(code: 'item.barCode.label', default: 'Bar Code')}" />

					<g:sortableColumn class="small" property="batchCode" title="${message(code: 'item.batchCode.label', default: 'Batch Code')}" />

					<g:sortableColumn class="small" property="department" title="${message(code: 'item.department.label', default: 'Department')}" />

					<g:sortableColumn class="small" property="description" title="${message(code: 'item.description.label', default: 'Description')}" />

					<g:sortableColumn class="small" property="itemID" title="${message(code: 'item.itemID.label', default: 'Item ID')}" />

					<g:sortableColumn class="small" property="locationCode" title="${message(code: 'item.locationCode.label', default: 'Location Code')}" />


				</tr>
				</thead>
				<tbody>
				<g:each in="${itemInstanceList}" status="i" var="itemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${itemInstance.id}">${fieldValue(bean: itemInstance, field: "barCode")}</g:link></td>

						<td>${fieldValue(bean: itemInstance, field: "batchCode")}</td>

						<td>${fieldValue(bean: itemInstance, field: "department")}</td>

						<td>${fieldValue(bean: itemInstance, field: "description")}</td>

						<td>${fieldValue(bean: itemInstance, field: "itemID")}</td>

						<td>${fieldValue(bean: itemInstance, field: "locationCode")}</td>
					</tr>

				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${itemInstanceCount ?: 0}" />
			</div>
		</div>

	</div>
</div>


