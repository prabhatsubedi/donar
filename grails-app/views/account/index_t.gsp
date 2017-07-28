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
            %{--<div class="ibox-content">
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
            </div>--}%
            <div class="ibox-content">
                <span class="text-muted small pull-right">Last modification: <i class="fa fa-clock-o"></i> 2:10 pm - 12.06.2014</span>
                <h2>Clients</h2>
                <p>
                    All clients need to be verified before you can send email and set a project.
                </p>
                <div class="input-group">
                    <input type="text" placeholder="Search client " class="input form-control">
                    <span class="input-group-btn">
                        <button type="button" class="btn btn btn-primary"> <i class="fa fa-search"></i> Search</button>
                    </span>
                </div>
                <div class="clients-list">
                    <ul class="nav nav-tabs">
                        <span class="pull-right small text-muted">1406 Elements</span>
                        <li class="active"><a data-toggle="tab" href="#tab-1"><i class="fa fa-user"></i> Contacts</a></li>
                        <li class=""><a data-toggle="tab" href="#tab-2"><i class="fa fa-briefcase"></i> Companies</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane active">
                            <div class="full-height-scroll">
                                <div class="table-responsive">
                                    <table class="table table-striped table-hover">
                                        <tbody>
                                        <tr>
                                            <td class="client-avatar"><img alt="image" src="img/a2.jpg"> </td>
                                            <td><a data-toggle="tab" href="#contact-1" class="client-link">Anthony Jackson</a></td>
                                            <td> Tellus Institute</td>
                                            <td class="contact-type"><i class="fa fa-envelope"> </i></td>
                                            <td> gravida@rbisit.com</td>
                                            <td class="client-status"><span class="label label-primary">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><img alt="image" src="img/a3.jpg"> </td>
                                            <td><a data-toggle="tab" href="#contact-2" class="client-link">Rooney Lindsay</a></td>
                                            <td>Proin Limited</td>
                                            <td class="contact-type"><i class="fa fa-envelope"> </i></td>
                                            <td> rooney@proin.com</td>
                                            <td class="client-status"><span class="label label-primary">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><img alt="image" src="img/a4.jpg"> </td>
                                            <td><a data-toggle="tab" href="#contact-3" class="client-link">Lionel Mcmillan</a></td>
                                            <td>Et Industries</td>
                                            <td class="contact-type"><i class="fa fa-phone"> </i></td>
                                            <td> +432 955 908</td>
                                            <td class="client-status"></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a5.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-4" class="client-link">Edan Randall</a></td>
                                            <td>Integer Sem Corp.</td>
                                            <td class="contact-type"><i class="fa fa-phone"> </i></td>
                                            <td> +422 600 213</td>
                                            <td class="client-status"><span class="label label-warning">Waiting</span></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a6.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-2" class="client-link">Jasper Carson</a></td>
                                            <td>Mone Industries</td>
                                            <td class="contact-type"><i class="fa fa-phone"> </i></td>
                                            <td> +400 468 921</td>
                                            <td class="client-status"></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a7.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-3" class="client-link">Reuben Pacheco</a></td>
                                            <td>Magna Associates</td>
                                            <td class="contact-type"><i class="fa fa-envelope"> </i></td>
                                            <td> pacheco@manga.com</td>
                                            <td class="client-status"><span class="label label-info">Phoned</span></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a1.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-1" class="client-link">Simon Carson</a></td>
                                            <td>Erat Corp.</td>
                                            <td class="contact-type"><i class="fa fa-envelope"> </i></td>
                                            <td> Simon@erta.com</td>
                                            <td class="client-status"><span class="label label-primary">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a3.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-2" class="client-link">Rooney Lindsay</a></td>
                                            <td>Proin Limited</td>
                                            <td class="contact-type"><i class="fa fa-envelope"> </i></td>
                                            <td> rooney@proin.com</td>
                                            <td class="client-status"><span class="label label-warning">Waiting</span></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a4.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-3" class="client-link">Lionel Mcmillan</a></td>
                                            <td>Et Industries</td>
                                            <td class="contact-type"><i class="fa fa-phone"> </i></td>
                                            <td> +432 955 908</td>
                                            <td class="client-status"></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a5.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-4" class="client-link">Edan Randall</a></td>
                                            <td>Integer Sem Corp.</td>
                                            <td class="contact-type"><i class="fa fa-phone"> </i></td>
                                            <td> +422 600 213</td>
                                            <td class="client-status"></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a2.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-1" class="client-link">Anthony Jackson</a></td>
                                            <td> Tellus Institute</td>
                                            <td class="contact-type"><i class="fa fa-envelope"> </i></td>
                                            <td> gravida@rbisit.com</td>
                                            <td class="client-status"><span class="label label-danger">Deleted</span></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a7.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-2" class="client-link">Reuben Pacheco</a></td>
                                            <td>Magna Associates</td>
                                            <td class="contact-type"><i class="fa fa-envelope"> </i></td>
                                            <td> pacheco@manga.com</td>
                                            <td class="client-status"><span class="label label-primary">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a5.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-3"class="client-link">Edan Randall</a></td>
                                            <td>Integer Sem Corp.</td>
                                            <td class="contact-type"><i class="fa fa-phone"> </i></td>
                                            <td> +422 600 213</td>
                                            <td class="client-status"><span class="label label-info">Phoned</span></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a6.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-4" class="client-link">Jasper Carson</a></td>
                                            <td>Mone Industries</td>
                                            <td class="contact-type"><i class="fa fa-phone"> </i></td>
                                            <td> +400 468 921</td>
                                            <td class="client-status"><span class="label label-primary">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a7.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-2" class="client-link">Reuben Pacheco</a></td>
                                            <td>Magna Associates</td>
                                            <td class="contact-type"><i class="fa fa-envelope"> </i></td>
                                            <td> pacheco@manga.com</td>
                                            <td class="client-status"><span class="label label-primary">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a1.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-1" class="client-link">Simon Carson</a></td>
                                            <td>Erat Corp.</td>
                                            <td class="contact-type"><i class="fa fa-envelope"> </i></td>
                                            <td> Simon@erta.com</td>
                                            <td class="client-status"></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a3.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-3" class="client-link">Rooney Lindsay</a></td>
                                            <td>Proin Limited</td>
                                            <td class="contact-type"><i class="fa fa-envelope"> </i></td>
                                            <td> rooney@proin.com</td>
                                            <td class="client-status"></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a4.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-4" class="client-link">Lionel Mcmillan</a></td>
                                            <td>Et Industries</td>
                                            <td class="contact-type"><i class="fa fa-phone"> </i></td>
                                            <td> +432 955 908</td>
                                            <td class="client-status"><span class="label label-primary">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a5.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-1" class="client-link">Edan Randall</a></td>
                                            <td>Integer Sem Corp.</td>
                                            <td class="contact-type"><i class="fa fa-phone"> </i></td>
                                            <td> +422 600 213</td>
                                            <td class="client-status"><span class="label label-info">Phoned</span></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a2.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-2" class="client-link">Anthony Jackson</a></td>
                                            <td> Tellus Institute</td>
                                            <td class="contact-type"><i class="fa fa-envelope"> </i></td>
                                            <td> gravida@rbisit.com</td>
                                            <td class="client-status"><span class="label label-warning">Waiting</span></td>
                                        </tr>
                                        <tr>
                                            <td class="client-avatar"><a href=""><img alt="image" src="img/a7.jpg"></a> </td>
                                            <td><a data-toggle="tab" href="#contact-4" class="client-link">Reuben Pacheco</a></td>
                                            <td>Magna Associates</td>
                                            <td class="contact-type"><i class="fa fa-envelope"> </i></td>
                                            <td> pacheco@manga.com</td>
                                            <td class="client-status"></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div id="tab-2" class="tab-pane">
                            <div class="full-height-scroll">
                                <div class="table-responsive">
                                    <table class="table table-striped table-hover">
                                        <tbody>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-1" class="client-link">Tellus Institute</a></td>
                                            <td>Rexton</td>
                                            <td><i class="fa fa-flag"></i> Angola</td>
                                            <td class="client-status"><span class="label label-primary">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-2" class="client-link">Velit Industries</a></td>
                                            <td>Maglie</td>
                                            <td><i class="fa fa-flag"></i> Luxembourg</td>
                                            <td class="client-status"><span class="label label-primary">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-3" class="client-link">Art Limited</a></td>
                                            <td>Sooke</td>
                                            <td><i class="fa fa-flag"></i> Philippines</td>
                                            <td class="client-status"></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-1" class="client-link">Tempor Arcu Corp.</a></td>
                                            <td>Eisden</td>
                                            <td><i class="fa fa-flag"></i> Korea, North</td>
                                            <td class="client-status"><span class="label label-warning">Waiting</span></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-2" class="client-link">Penatibus Consulting</a></td>
                                            <td>Tribogna</td>
                                            <td><i class="fa fa-flag"></i> Montserrat</td>
                                            <td class="client-status"></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-3" class="client-link"> Ultrices Incorporated</a></td>
                                            <td>Basingstoke</td>
                                            <td><i class="fa fa-flag"></i> Tunisia</td>
                                            <td class="client-status"><span class="label label-primary">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-2" class="client-link">Et Arcu Inc.</a></td>
                                            <td>Sioux City</td>
                                            <td><i class="fa fa-flag"></i> Burundi</td>
                                            <td class="client-status"><span class="label label-primary">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-1" class="client-link">Tellus Institute</a></td>
                                            <td>Rexton</td>
                                            <td><i class="fa fa-flag"></i> Angola</td>
                                            <td class="client-status"><span class="label label-primary">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-2" class="client-link">Velit Industries</a></td>
                                            <td>Maglie</td>
                                            <td><i class="fa fa-flag"></i> Luxembourg</td>
                                            <td class="client-status"></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-3" class="client-link">Art Limited</a></td>
                                            <td>Sooke</td>
                                            <td><i class="fa fa-flag"></i> Philippines</td>
                                            <td class="client-status"></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-1" class="client-link">Tempor Arcu Corp.</a></td>
                                            <td>Eisden</td>
                                            <td><i class="fa fa-flag"></i> Korea, North</td>
                                            <td class="client-status"><span class="label label-warning">Waiting</span></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-2" class="client-link">Penatibus Consulting</a></td>
                                            <td>Tribogna</td>
                                            <td><i class="fa fa-flag"></i> Montserrat</td>
                                            <td class="client-status"></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-3" class="client-link"> Ultrices Incorporated</a></td>
                                            <td>Basingstoke</td>
                                            <td><i class="fa fa-flag"></i> Tunisia</td>
                                            <td class="client-status"><span class="label label-primary">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-2" class="client-link">Et Arcu Inc.</a></td>
                                            <td>Sioux City</td>
                                            <td><i class="fa fa-flag"></i> Burundi</td>
                                            <td class="client-status"><span class="label label-primary">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-1" class="client-link">Tellus Institute</a></td>
                                            <td>Rexton</td>
                                            <td><i class="fa fa-flag"></i> Angola</td>
                                            <td class="client-status"><span class="label label-primary">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-2" class="client-link">Velit Industries</a></td>
                                            <td>Maglie</td>
                                            <td><i class="fa fa-flag"></i> Luxembourg</td>
                                            <td class="client-status"></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-3" class="client-link">Art Limited</a></td>
                                            <td>Sooke</td>
                                            <td><i class="fa fa-flag"></i> Philippines</td>
                                            <td class="client-status"></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-1" class="client-link">Tempor Arcu Corp.</a></td>
                                            <td>Eisden</td>
                                            <td><i class="fa fa-flag"></i> Korea, North</td>
                                            <td class="client-status"><span class="label label-warning">Waiting</span></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-2" class="client-link">Penatibus Consulting</a></td>
                                            <td>Tribogna</td>
                                            <td><i class="fa fa-flag"></i> Montserrat</td>
                                            <td class="client-status"></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-3" class="client-link"> Ultrices Incorporated</a></td>
                                            <td>Basingstoke</td>
                                            <td><i class="fa fa-flag"></i> Tunisia</td>
                                            <td class="client-status"><span class="label label-primary">Active</span></td>
                                        </tr>
                                        <tr>
                                            <td><a data-toggle="tab" href="#company-2" class="client-link">Et Arcu Inc.</a></td>
                                            <td>Sioux City</td>
                                            <td><i class="fa fa-flag"></i> Burundi</td>
                                            <td class="client-status"><span class="label label-primary">Active</span></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div id="account-info-div"></div>
        <g:render template="/account/create" model="${[user: [:]]}"/>
    </div>
</div>

</body>

</html>
