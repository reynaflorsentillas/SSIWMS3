<%@ page import="ssiwms2.Client" %>


<div class="row">
	<div class = "col-sm-4">
				<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'clientCode', 'error')} required">
					<label for="clientCode">
						<g:message class="label" code="client.clientCode.label" default="Client Code" />
						<span class="required-indicator">*</span>
					</label>
					<g:textField class="form-control input-sm" name="clientCode" required="" value="${clientInstance?.clientCode}"/>
				</div>

				<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'clientName', 'error')} required">
					<label for="clientName">
						<g:message class="label" code="client.clientName.label" default="Client Name" />
						<span class="required-indicator">*</span>
					</label>
					<g:textField class="form-control input-sm" name="clientName" required="" value="${clientInstance?.clientName}"/>
				</div>
	</div>
</div>


		<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'dept', 'error')} ">
			<label for="dept">
				<g:message class="label" code="client.dept.label" default="Department *" />
			</label>

			<ul class="one-to-many">
					<g:each in="${clientInstance?.dept?}" var="d">
						<li><g:link controller="department" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
					</g:each>
				<li class="add">
					<g:link controller="department" action="create" params="['client.id': clientInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'department.label', default: 'Department')])}</g:link>
				</li>
			</ul>
		</div>

		<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'user', 'error')} ">
			<label for="user">
				<g:message class="label" code="client.user.label" default="User" />
			</label>
			<ul class="one-to-many">
				<g:each in="${clientInstance?.user?}" var="u">
					<li><g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
				</g:each>
				<li class="add">
					<g:link controller="user" action="create" params="['client.id': clientInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'user.label', default: 'User')])}</g:link>
				</li>
			</ul>
		</div>




