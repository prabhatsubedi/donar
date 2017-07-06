<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main_donar"/>

    <title>Circulate | Profile</title>

    <asset:stylesheet src="plugins/datapicker/datepicker3.css"/>
</head>

<body>
    <div class="row">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Profile Information</h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                </div>
            </div>
            <div class="ibox-content">
                <g:form method="POST" class="form-horizontal" controller="profile" action="save" onsubmit="return validateForm();">
                    <div class="form-group"><label class="col-sm-2 control-label">Full Name</label>

                        <div class="col-sm-10"><input type="text" class="form-control" value="${user.fullName}" name="fullName"></div>
                    </div>
                    <div class="hr-line-dashed"></div>
                    <div class="form-group"><label class="col-sm-2 control-label">Password</label>

                        <div class="col-sm-10"><input id="password" type="password" class="form-control" name="password" value="${user.password}"></div>
                    </div>
                    <div class="hr-line-dashed"></div>
                    <div class="form-group"><label class="col-sm-2 control-label">Confirm Password</label>

                        <div class="col-sm-10"><input id="confirmPassword" type="password" class="form-control" name="confirmPassword" value="${user.password}"></div>
                    </div>
                    <div class="hr-line-dashed"></div>
                    <div class="form-group"><label class="col-lg-2 control-label">Donar ID</label>

                        <div class="col-lg-10"><p class="form-control-static">${user.id}</p></div>
                    </div>
                    <div class="hr-line-dashed"></div>
                    <div class="form-group"><label class="col-lg-2 control-label">Blood Type</label>

                        <div class="col-lg-10"><p class="form-control-static">${user.bloodType}</p></div>
                    </div>
                    <div class="hr-line-dashed"></div>
                    <div class="form-group"><label class="col-lg-2 control-label">Gender</label>

                        <div class="col-lg-10"><p class="form-control-static">${user.gender}</p></div>
                    </div>
                    <div class="hr-line-dashed"></div>
                    <div class="form-group calendar-dob">
                        <label class="col-lg-2 control-label">Date Of Birth</label>
                        <div class="input-group date" style="padding-left: 15px;">
                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                            <input type="text" class="form-control" value="${user.birthDate.format('MM/dd/yyyy')}" name="birthDate">
                        </div>
                    </div>
                    <div class="hr-line-dashed"></div>
                    <div class="form-group"><label class="col-lg-2 control-label">Email</label>

                        <div class="col-lg-10"><input type="text" class="form-control" value="${user.email}" name="email"/></div>
                    </div>
                    <div class="hr-line-dashed"></div>
                    <div class="form-group"><label class="col-lg-2 control-label">Phone Number</label>

                        <div class="col-lg-10"><input type="text" class="form-control" value="${user.phoneNumber}" name="phoneNumber"/></div>
                    </div>
                    <div class="hr-line-dashed"></div>
                    <div class="form-group"><label class="col-lg-2 control-label">Street Address</label>

                        <div class="col-lg-10"><input type="text" class="form-control" value="${user.streetAddress}" name="streetAddress"/></div>
                    </div>
                    <div class="hr-line-dashed"></div>
                    <div class="form-group"><label class="col-lg-2 control-label">State</label>

                        <div class="col-lg-10"><input type="text" class="form-control" value="${user.state}" name="state"/></div>
                    </div>
                    <div class="hr-line-dashed"></div>
                    <div class="form-group"><label class="col-lg-2 control-label">City</label>

                        <div class="col-lg-10"><input type="text" class="form-control" value="${user.city}" name="city"/></div>
                    </div>
                    <div class="hr-line-dashed"></div>
                    <div class="form-group"><label class="col-lg-2 control-label">Zip Code</label>

                        <div class="col-lg-10"><input type="text" class="form-control" value="${user.zipCode}" name="zipCode"/></div>
                    </div>
                    <div class="hr-line-dashed"></div>
                    <div class="form-group"><label class="col-lg-2 control-label">Country</label>

                        <div class="col-lg-10"><input type="text" class="form-control" value="${user.country}" name="country"/></div>
                    </div>

                    <div class="hr-line-dashed"></div>
                    <div class="form-group">
                        <div class="col-sm-4 col-sm-offset-2">
                            <button class="btn btn-primary" type="submit">Save changes</button>
                        </div>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
