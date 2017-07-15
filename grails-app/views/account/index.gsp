<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main_admin"/>

    <title>Circulate | Account</title>
    <script>
        var accountInfo_URL = '<g:createLink controller="account" action="accountDetail"/>'
    </script>
</head>

<body>
<div class="row animated fadeInDown">
    <div class="col-lg-12">
        <div class="pull-right" style="padding-bottom: 10px;">
            <a data-toggle="modal" class="btn btn-primary" href="#account-create">Create New Account</a>
        </div>
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Account</h5>
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
                            <th>Account ID</th>
                            <th>Organization</th>
                            <th>Contact</th>
                            <th>Phone Number</th>
                            <th>Email</th>
                        </tr>
                        </thead>
                        <tbody id="blood-product-rbc">
                        <g:each in="${accountList}" var="row" status="i">
                            <tr>
                                <td>${i+1}</td>
                                <td>${row.id}</td>
                                <td><a href="javascript:void(0)" onclick="viewAccountDetails('${row.id}')">${row.organization}</a></td>
                                <td>${row.contact}</td>
                                <td>${row.phoneNumber}</td>
                                <td>${row.email}</td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div id="account-info-div"></div>
        <g:render template="/account/create" model="${[user: [:]]}"/>
    </div>
</div>

</body>

</html>
