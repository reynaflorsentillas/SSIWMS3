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
    <title>Transaction History</title>
</head>
<body>
<div class="page-header">
    <h3>Transaction History</h3>
</div>



<%--
<div class="dropdown">
         <g:select class="btn btn-default dropdown-toggle" optionKey="clientCode" optionValue="clientName" name="Client.clientName" from="${allClient}" />
</div>
 --%>

<div class="panel panel-success">
    <div class="panel-body">
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
</body>
</html>