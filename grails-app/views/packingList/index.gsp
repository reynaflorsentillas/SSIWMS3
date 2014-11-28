<%@ page import="ssiwms2.PackingList" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'packingList.label', default: 'PackingList')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>
<body>

<div class="panel panel-default">
    <div class="panel-heading">
        <h4>Packing List</h4>
    </div>

    <div class="panel-body">
        <div class="nav" role="navigation">
            <fieldset class ="buttons">
                <g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                <h3></h3>
            </fieldset>
        </div>

<div id="list-packingList" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="table table-bordered">
        <thead>
        <tr>

            <g:sortableColumn property="barCode"
                              title="${message(code: 'packingList.barCode.label', default: 'Bar Code')}"/>

            <g:sortableColumn property="batchCode"
                              title="${message(code: 'packingList.batchCode.label', default: 'Batch Code')}"/>

            <g:sortableColumn property="description"
                              title="${message(code: 'packingList.description.label', default: 'Description')}"/>

            <g:sortableColumn property="retention"
                              title="${message(code: 'packingList.retention.label', default: 'Retention')}"/>

            <g:sortableColumn property="department"
                              title="${message(code: 'packingList.department.label', default: 'Department')}"/>

            <g:sortableColumn property="status"
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

    </div>
</div>
</body>
</html>
