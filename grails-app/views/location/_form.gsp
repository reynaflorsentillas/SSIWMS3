<%@ page import="ssiwms2.Location" %>


<div class="row">
	<div class="col-sm-12">
		<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'item', 'error')} required">
			<label for="item">
				<g:message code="location.item.label" default="Item" />
				<span class="required-indicator">*</span>
			</label>
			<ui:multiSelect name="item.id"
							from="${ssiwms2.Item.list()}"
							value="${locationInstance?.item?.id}"
							noSelection="['':'Select One']"
			/>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-sm-12">
		<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'locationCode', 'error')} required">
			<label for="locationCode">
				<g:message code="location.locationCode.label" default="Location Code" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class="form-control" name="locationCode" required="" value="${locationInstance?.locationCode}"/>

		</div>

	</div>
</div>

<div class="row">
	<div class="col-sm-12">
		<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'locationName', 'error')} required">
			<label for="locationName">
				<g:message code="location.locationName.label" default="Location Name" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class="form-control" name="locationName" required="" value="${locationInstance?.locationName}"/>

		</div>
	</div>
</div>

<div class="row">
	<div class="col-sm-12">

		<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'status', 'error')} required">
			<label for="status">
				<g:message code="location.status.label" default="Status" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class="form-control" name="status" required="" value="${locationInstance?.status}"/>

		</div>

	</div>
</div>

