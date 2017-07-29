<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main_admin"/>

    <title>Circulate | Donor Contacts</title>
    <script>
        var donarInfo_URL = '<g:createLink controller="donarContact" action="donarDetail"/>'
        var pastDonation_URL = '<g:createLink controller="donarContact" action="pastDonation"/>'
    </script>
</head>

<body>
<div class="row">
    <div class="col-sm-8">
        <div class="ibox">
            <div class="ibox-content">
                <h2>Donor Contacts</h2>
                <div class="clients-list">
                    <ul class="nav nav-tabs">
                        <span class="pull-right small text-muted">${donarList.size()} Donors</span>
                        <li class="active"><a data-toggle="tab" href="#tab-1"><i class="fa fa-user"></i> Donors</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane active">
                            <div class="full-height-scroll">
                                <div class="table-responsive">
                                    <table class="table table-striped table-hover">
                                        <tbody>
                                        <g:each in="${donarList}" var="row" status="i">
                                            <tr>
                                                <td class="client-avatar"><asset:image src="profile_small.jpg"/> </td>
                                                <td><a href="javascript:void(0)" onclick="viewDonarDetails('${row.user.id}')" class="client-link">${row.user.fullName}</a></td>
                                                <td>${row.user.bloodType}</td>
                                                <td class="contact-type"><i class="fa fa-phone"> </i></td>
                                                <td>${row.user.phoneNumber}</td>
                                                <td class="contact-type"><i class="fa fa-envelope"> </i></td>
                                                <td>${row.user.email}</td>
                                                <td class="client-status"><span class="label label-primary">Active</span></td>
                                            </tr>
                                        </g:each>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="ibox ">
            <div class="ibox-content">
                <div class="tab-content">
                    <div id="donor-detail" class="tab-pane active">
                        <g:render template="donarInfo" model="${[user: user]}"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="past-donation-form-div"></div>
</body>

</html>
