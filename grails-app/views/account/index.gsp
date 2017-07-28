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
<div class="row">
    <div class="col-lg-12">
        <div class="pull-right" style="padding-bottom: 10px;">
            <a data-toggle="modal" class="btn btn-primary" href="#account-create">Create New Account</a>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-sm-8">
        <div class="ibox">
            <div class="ibox-content">
                <h2>Accounts</h2>
                <div class="clients-list">
                    <ul class="nav nav-tabs">
                        <span class="pull-right small text-muted">${accountList.size()} Accounts</span>
                        <li class="active"><a data-toggle="tab" href="#tab-1"><i class="fa fa-user"></i> Accounts</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane active">
                            <div class="full-height-scroll">
                                <div class="table-responsive">
                                    <table class="table table-striped table-hover">
                                        <tbody>
                                        <g:each in="${accountList}" var="row" status="i">
                                            <tr>
                                                <td class="client-avatar"><asset:image src="profile_small.jpg"/> </td>
                                                <td><a href="javascript:void(0)" onclick="viewAccountDetails('${row.id}')" class="client-link">${row.organization}</a></td>
                                                <td>${row.contact}</td>
                                                <td class="contact-type"><i class="fa fa-phone"> </i></td>
                                                <td>${row.phoneNumber}</td>
                                                <td class="contact-type"><i class="fa fa-envelope"> </i></td>
                                                <td>${row.email}</td>
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
                    <div id="account-detail" class="tab-pane active">
                        <g:render template="accountInfo" model="${[account: account]}"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<g:render template="/account/create" model="${[user: [:]]}"/>
</body>

</html>
