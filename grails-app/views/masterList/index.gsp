<%--
  Created by IntelliJ IDEA.
  User: ReinDuque
  Date: 11/26/2014
  Time: 1:19 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Master List</title>
</head>
<body>
    <div class="page-header">
        <h3>Master List</h3>
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
                    <g:sortableColumn class="small" property="department" title="Department" />
                    <g:sortableColumn class="small" property="barCode" title="Bar Code" />
                    <g:sortableColumn class="small" property="batchCode" title="Batch Code" />
                    <g:sortableColumn class="small" property="description" title="Description" />
                    <g:sortableColumn class="small" property="status" title="Status" />
                    <g:sortableColumn class="small" property="locationCode" title="Location Code" />
                    <g:sortableColumn class="small" property="destructionDate" title="Destruction Date" />
                    <g:sortableColumn class="small" property="stockId" title="Stock Receipt ID" />
                </tr>
                </thead>
                <tbody>
                <g:each in="${allItems}" var="thisItem">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td>${thisItem.department}</td>
                        <td>${thisItem.barCode}</td>
                        <td>${thisItem.batchCode}</td>
                        <td>${thisItem.description}</td>
                        <td>${thisItem.itemID}</td>
                        <td>${thisItem.locationCode}</td>
                        <td>${thisItem.pickedUp}</td>
                        <td>${thisItem.packinglistNo}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>