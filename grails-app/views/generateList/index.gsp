<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main_admin"/>

    <title>Circulate | List Generator</title>
</head>

<body>
<div class="row animated fadeInDown">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Most Recent Queries</h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                </div>
            </div>
            <div class="ibox-content">
                <div class="table-responsive">
                    <table id="most-recent-queries" class="table table-striped">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Query</th>
                            <th>Last Run</th>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th>Frequency</th>
                            <th>Active</th>
                            <th>Generate</th>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${queryTrackList}" var="row" status="i">
                            <tr>
                                <td>${i+1}</td>
                                <td>${row.query.name}</td>
                                <td>${row.query.lastUpdated?.format("MM/dd/yyyy")}</td>
                                <td>
                                    <g:if test="${row.query.startDate}">
                                        ${row.query.startDate?.format("MM/dd/yyyy")}
                                    </g:if>
                                    <g:else>
                                        Indefinite
                                    </g:else>
                                </td>
                                <td>
                                    <g:if test="${row.query.endDate}">
                                        ${row.query.endDate?.format("MM/dd/yyyy")}</td>
                                    </g:if>
                                    <g:else>
                                        Indefinite
                                    </g:else>

                                <td>${row.query.frequency}</td>
                                <td>
                                    <g:if test="${row.query.isActive}">
                                        <div class="icheckbox_square-green checked" style="position: relative;">
                                            <input value="" checked="" style="position: absolute; opacity: 0;" type="checkbox">
                                            <ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                    </g:if>
                                    <g:else>
                                        <div class="icheckbox_square-green disabled" style="position: relative;">
                                            <input value="" disabled="" style="position: absolute; opacity: 0;" type="checkbox">
                                            <ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                    </g:else>
                                </td>
                                <td><g:link class="btn btn-sm btn-primary" action="generate" params="${[id: row.query.id]}">Generate</g:link></td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row animated fadeInDown">
    <div class="col-lg-12">
        <div class="pull-right" style="padding-bottom: 10px;margin-top: -10px;">
            <a data-toggle="modal" class="btn btn-primary" href="#generate-new-query">Generate New Query</a>
        </div>
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>All Queries</h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                </div>
            </div>
            <div class="ibox-content">
                <div class="table-responsive">
                    <table id="blood-product-table" class="table table-striped">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Query</th>
                            <th>Created</th>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th>Frequency</th>
                            <th>Active</th>
                            <th>Run Count</th>
                            <th>Generate</th>
                            <th>Delete</th>
                        </tr>
                        </thead>
                        <tbody id="blood-product-rbc">
                        <g:each in="${queryList}" var="row" status="i">
                            <tr>
                                <td>${i+1}</td>
                                <td>${row.name}</td>
                                <td>${row.dateCreated?.format("MM/dd/yyyy")}</td>
                                <td>
                                    <g:if test="${row.startDate}">
                                        ${row.startDate?.format("MM/dd/yyyy")}
                                    </g:if>
                                    <g:else>
                                        Indefinite
                                    </g:else>
                                </td>
                            <td>
                                <g:if test="${row.endDate}">
                                    ${row.endDate?.format("MM/dd/yyyy")}</td>
                                </g:if>
                                <g:else>
                                    Indefinite
                                </g:else>

                                <td>${row.frequency}</td>
                                <td>
                                    <g:if test="${row.isActive}">
                                        <div class="icheckbox_square-green checked" style="position: relative;">
                                            <input value="" checked="" style="position: absolute; opacity: 0;" type="checkbox">
                                            <ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                    </g:if>
                                    <g:else>
                                        <div class="icheckbox_square-green disabled" style="position: relative;">
                                            <input value="" disabled="" style="position: absolute; opacity: 0;" type="checkbox">
                                            <ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                    </g:else>
                                </td>
                                <td>${row.count}</td>
                                <td><g:link class="btn btn-sm btn-primary" action="generate" params="${[id: row.id]}">Generate</g:link></td>
                                <td><g:link class="btn btn-sm btn-danger">Delete</g:link></td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <g:render template="/generateList/generate"/>
    </div>
</div>
</body>

</html>
