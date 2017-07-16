<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main_admin"/>

    <title>Circulate | Generate List</title>
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
                            <th>Generate</th>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${queryTrackList}" var="row" status="i">
                            <tr>
                                <td>${i+1}</td>
                                <td>${row.query.name}</td>
                                <td>${row.query.lastUpdated?.format("MM/dd/yyyy")}</td>
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
        <div class="pull-right" style="padding-bottom: 10px;">
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
                            <th>Delete</th>
                            <th>Generate</th>
                            <th>Run Count</th>
                        </tr>
                        </thead>
                        <tbody id="blood-product-rbc">
                        <g:each in="${queryList}" var="row" status="i">
                            <tr>
                                <td>${i+1}</td>
                                <td>${row.name}</td>
                                <td>${row.dateCreated?.format("MM/dd/yyyy")}</td>
                                <td><g:link class="btn btn-sm btn-danger">Delete</g:link></td>
                                <td><g:link class="btn btn-sm btn-primary" action="generate" params="${[id: row.id]}">Generate</g:link></td>
                                <td>${row.count}</td>
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
