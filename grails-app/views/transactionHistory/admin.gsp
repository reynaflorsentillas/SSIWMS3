<%--
  Created by IntelliJ IDEA.
  User: ReinDuque
  Date: 11/27/2014
  Time: 8:12 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'admin.label', default: 'Admin')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>

</head>
<body>
<div class="panel panel-default">
    <div class="panel-heading">
        <h4>Transaction History</h4>
    </div

    <div class="panel-body">
        <div class="nav" role="navigation">
            <table class="table table-bordered table-hover">
                <thead class="th">
        </div>
        <div id="list-admin" class="content scaffold-list" role="main">

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>

            </g:if>
            <table class="table table-bordered table-hover">
                <thead class="th">
                <tr>
                    <g:sortableColumn class="small" property="companyName" title="Company Name" />
                    <g:sortableColumn class="small" property="requesterName" title="Requester Name" />
                    <g:sortableColumn class="small" property="transactionType" title="Transaction Type" />
                    <g:sortableColumn class="small" property="dateOfTransactionType" title="Date of Transaction Type" />
                    <g:sortableColumn class="small" property="status" title="Status" />

                </tr>
                </thead>
                <tbody>
                <g:each in="${allPickup}" var="thisPickup">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td>${thisPickup.clientCode}</td>
                        <td>${thisPickup.requesterName}</td>
                        <td>${thisPickup.transactionType}</td>
                        <td>${thisPickup.requestDate}</td>
                        <td>${thisPickup.status}</td>

                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>