<%@ page import="ssiwms2.Retrieval"%>
<%@ page import="ssiwms2.Item"%>

<div class="row">
	<div class="col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: retrievalInstance, field: 'companyName', 'error')} required">
			<label for="companyName">
				<g:message code="retrieval.companyName.label" default="Company Name" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class="form-control input-sm" name="companyName" required="" value="${retrievalInstance?.companyName}"/>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-4">
			<div class="fieldcontain ${hasErrors(bean: retrievalInstance, field: 'requestDate', 'error')} required">
				<label for="requestDate">
					<g:message code="retrieval.requestDate.label" default="Request Date" />
					<span class="required-indicator">*</span>
				</label>
				<g:datePicker  class="small" name="requestDate"  precision="day" value="${retrievalInstance?.requestDate}"/>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: retrievalInstance, field: 'requesterName', 'error')} required">
			<label for="requesterName">
				<g:message code="retrieval.requesterName.label" default="Name of Requester"/>
				<span class="required-indicator">*</span>
			</label>
			<g:textField class="form-control input-sm" name="requesterName" required="" value="${retrievalInstance?.requesterName}"/>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6">
			<div class="fieldcontain ${hasErrors(bean: retrievalInstance, field: 'departmentCode', 'error')} required">

				<label for="departmentCode">
					<g:message code="retrieval.departmentCode.label" default="Department Code" />
					<span class="required-indicator">*</span>
				</label>
				<g:textField class="form-control input-sm" name="departmentCode" required="" value="${retrievalInstance?.departmentCode}"/>
			</div>
		</div>
	</div>
</div>


<div class="row">
	<div class="col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: retrievalInstance, field: 'address', 'error')} required">

			<label for="address">
				<g:message code="retrieval.address.label" default="Address" />
				<span class="required-indicator">*</span>
			</label>
				<g:textField class="form-control input-sm" name="address" required="" value="${retrievalInstance?.address}"/>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6">
			<div class="fieldcontain ${hasErrors(bean: retrievalInstance, field: 'contactNumber', 'error')} required">
				<label for="contactNumber">
					<g:message code="retrieval.contactNumber.label" default="Contact Number" />
					<span class="required-indicator">*</span>
				</label>
				<g:field class="form-control input-sm" name="contactNumber" type="number" value="${retrievalInstance?.contactNumber}" required=""/>
			</div>
		</div>
	</div>
</div>



<div class="row">
	<div class="col-sm-4">
		<div class="fieldcontain ${hasErrors(bean: retrievalInstance, field: 'items', 'error')} ">
			<label for="items">
				<g:message code="retrieval.items.label" default="Items" />
			</label>
			<ul class="one-to-many">
				<g:each in="${retrievalInstance?.items?}" var="i">
					<li>
						<g:link controller="item" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link>
					</li>
				</g:each>
				<li class="add">
					<g:link controller="item" action="create" params="['retrieval.id': retrievalInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'item.label', default: 'Item')])}</g:link>
				</li>
			</ul>
		</div>
	</div>
</div>


<div class="row">
	<div class="col-sm-4">
		<div class="fieldcontain ${hasErrors(bean: retrievalInstance, field: 'deliveryDate', 'error')} required">
			<label for="deliveryDate">
				<g:message code="retrieval.deliveryDate.label" default="Delivery Date" />
				<span class="required-indicator">*</span>
			</label>
			<g:datePicker  class="small" name="deliveryDate" precision="day"  value="${retrievalInstance?.deliveryDate}" />
		</div>
	</div>
</div>


<table class="table table-bordered table-hover">
	<thead class="th">
	<tr>

		<g:sortableColumn class="small" property="barCode" title="${message(code: 'barCode.label', default: 'Bar Code')}" />

		<g:sortableColumn class="small" property="batchCode" title="${message(code: 'batchCode.label', default: 'Batch Code')}" />

		<g:sortableColumn class="small" property="department" title="${message(code: 'department.label', default: 'Department')}" />

		<g:sortableColumn class="small" property="description" title="${message(code: 'description.label', default: 'Description')}" />

		<g:sortableColumn class="small" property="itemID" title="${message(code: 'itemID.label', default: 'Item ID')}" />

		<g:sortableColumn class="small" property="locationCode" title="${message(code: 'locationCode.label', default: 'Location Code')}" />

	</tr>
	</thead>
	<tbody>
				<g:each in="${itemInstanceList}" status="i" var="itemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<div class="td">
							<td><g:link action="show" id="${itemInstance.id}">${fieldValue(bean: itemInstance, field: "barCode")}</g:link></td>

							<td>${fieldValue(bean: itemInstance, field: "batchCode")}</td>

							<td>${fieldValue(bean: itemInstance, field: "department")}</td>

							<td>${fieldValue(bean: itemInstance, field: "description")}</td>

							<td>${fieldValue(bean: itemInstance, field: "itemID")}</td>

							<td>${fieldValue(bean: itemInstance, field: "locationCode")}</td>
						</div>
					</tr>
				</g:each>

	</tbody>
</table>
