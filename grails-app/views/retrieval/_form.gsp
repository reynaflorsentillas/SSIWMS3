<%@ page import="ssiwms2.Retrieval"%>
<%@ page import="ssiwms2.Item"%>

<div class="row">
	<div class="col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: retrievalInstance, field: 'companyName', 'error')} required">
			<label for="companyName">
				<g:message code="Company" default="Company" />
				<span class="required-indicator">*</span>
			</label>
			<g:select optionKey="clientCode" optionValue="clientName" name="clientCode" from="${ssiwms2.Client.list()}"/>
		</div>
	</div>


		<div class="col-sm-6">
			<div class="fieldcontain ${hasErrors(bean: retrievalInstance, field: 'requestDate', 'error')} required">
				<label for="requestDate">
					<g:message code="retrieval.requestDate.label" default="Request Date" />
					<span class="required-indicator">*</span>
				</label>

				<calendar:datePicker name="requestDate" defaultValue="${new Date()}" value="${retrievalInstance?.requestDate}"/>

			</div>
		</div>
</div>

<div class="row">
	<div class="col-sm-12">
		<h1></h1>
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

		<div class="col-sm-6">
			<div class="fieldcontain ${hasErrors(bean: retrievalInstance, field: 'departmentCode', 'error')} required">

				<label for="departmentCode">
					<g:message code="Department" default="Department" />
					<span class="required-indicator">*</span>
				</label>
				<g:textField class="form-control input-sm" name="departmentCode" required="" value="${retrievalInstance?.departmentCode}"/>
			</div>
		</div>

</div>


<div class="row">
	<div class="col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: retrievalInstance, field: 'address', 'error')} required">

			<label for="address">
				<g:message code="Delivery Address" default="Delivery Address" />
				<span class="required-indicator">*</span>
			</label>
				<g:textField class="form-control input-sm" name="address" required="" value="${retrievalInstance?.address}"/>
		</div>
	</div>

		<div class="col-sm-6">
			<div class="fieldcontain ${hasErrors(bean: retrievalInstance, field: 'contactNumber', 'error')} required">
				<label for="contactNumber">
					<g:message code="retrieval.contactNumber.label" default="Contact Number" />
					<span class="required-indicator">*</span>
				</label>
				<g:field class="form-control input-sm" name="contactNumber" value="${retrievalInstance?.contactNumber}" required=""/>
			</div>
		</div>

</div>

<div class="row">
	<div class="col-sm-12">
		<h1></h1>
	</div>
</div>


<div class="row">
	<div class="col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: retrievalInstance, field: 'deliveryDate', 'error')} required">
			<label for="deliveryDate">
				<g:message code="retrieval.deliveryDate.label" default="Delivery Date" />
				<span class="required-indicator">*</span>
			</label>
			<calendar:datePicker name="deliveryDate" defaultValue="${new Date()}" value="${retrievalInstance?.deliveryDate}"/>
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

<div class="row">
	<div class="col-sm-12">
		<h1></h1>
	</div>
</div>

<div class="panel panel-default">

	<div class="panel-heading"><h5><g:message code="Retrieval List" args="Retrieval List" /></h5></div>

	<div class="panel-body">
		<div class="row">
			<div class="col-sm-4">
				<div class="fieldcontain ${hasErrors(bean: retrievalInstance, field: 'pickList', 'error')} ">

						<g:each in="${retrievalInstance?.pickList?}" var="i">

								<g:link controller="PickLIst" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link>

						</g:each>

							<g:link class="btn btn-default btn-sm" controller="PickLIst" action="create" params="['retrieval.id': retrievalInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'Item', default: 'Item')])}</g:link>
							<h3></h3>

				</div>
			</div>
		</div>

		<table class="table table-bordered table-hover">
			<thead class="th">
			<tr>

				<g:sortableColumn class="small" property="barCode" title="${message(code: 'pickLIst.barCode.label', default: 'Bar Code')}" />

				<g:sortableColumn class="small" property="batchCode" title="${message(code: 'pickLIst.batchCode.label', default: 'Batch Code')}" />

				<g:sortableColumn class="small" property="description" title="${message(code: 'pickLIst.description.label', default: 'Description')}" />

				<g:sortableColumn class="small" property="department" title="${message(code: 'pickLIst.department.label', default: 'Department')}" />

			</tr>
			</thead>
			<tbody>
			<g:each in="${pickLIstInstanceList}" status="i" var="pickLIstInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

					<td><g:link action="show" id="${pickLIstInstance.id}">${fieldValue(bean: pickLIstInstance, field: "barCode")}</g:link></td>

					<td>${fieldValue(bean: pickLIstInstance, field: "batchCode")}</td>

					<td>${fieldValue(bean: pickLIstInstance, field: "description")}</td>

					<td>${fieldValue(bean: pickLIstInstance, field: "department")}</td>

				</tr>
			</g:each>

			</tbody>
		</table>

	</div>
</div>
