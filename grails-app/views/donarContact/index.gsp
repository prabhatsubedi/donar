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
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Donor Contacts</h5>
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
                            <th>Donor ID</th>
                            <th>Name</th>
                            <th>Blood Type</th>
                            <th>Phone Number</th>
                            <th>Email</th>
                            <th>Birth Date</th>
                            <th>Role</th>
                        </tr>
                        </thead>
                        <tbody id="blood-product-rbc">
                            <g:each in="${donarList}" var="row" status="i">
                                <tr>
                                    <td>${i+1}</td>
                                    <td>${row.user.id}</td>
                                    <td><a href="javascript:void(0)" onclick="viewDonarDetails('${row.user.id}')">${row.user.fullName}</a></td>
                                    <td>${row.user.bloodType}</td>
                                    <td>${row.user.phoneNumber}</td>
                                    <td>${row.user.email}</td>
                                    <td>${row.user.birthDate?.format("MM/dd/yyyy")}</td>
                                    <td>${row.authority.authority}</td>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div id="donar-contact-info-div"></div>
    </div>
</div>

</body>

</html>
