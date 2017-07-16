<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main_admin"/>

    <title>Circulate | Donor Contacts</title>
    <script>
        var donarInfo_URL = '<g:createLink controller="donarContact" action="donarDetail"/>'
    </script>
</head>

<body>
<div class="row animated fadeInDown">
    <div class="col-lg-12">
        <div class="pull-right" style="padding-bottom: 10px;">
            <a data-toggle="modal" class="btn btn-primary" href="#save-query">Save List</a>
        </div>
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Generated Contact List</h5>
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
                            <th>Name</th>
                            <th>Phone Number</th>
                            <th>Email</th>
                            <th>Average Donor Index</th>
                        </tr>
                        </thead>
                        <tbody id="blood-product-rbc">
                            <g:each in="${donarList}" var="row" status="i">
                                <tr>
                                    <td>${i+1}</td>
                                    <td>${row.user.fullName}</td>
                                    <td>${row.user.phoneNumber}</td>
                                    <td>${row.user.email}</td>
                                    <td>${row.authority.authority}</td>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <g:render template="/generateList/save"/>
    </div>
</div>

</body>

</html>
