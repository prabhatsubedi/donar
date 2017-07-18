<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main_admin"/>

    <title>Circulate | Appointments</title>
    <style>
    #donation-info .form-group{
        margin-bottom: 0px;
    }
    </style>
    <script>
        var pastDonation_URL = '<g:createLink controller="donarContact" action="pastDonation"/>'
    </script>
</head>

<body>
<div class="row animated fadeInDown">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Appointments</h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                </div>
            </div>
            <div class="ibox-content">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="form-group"><h3>Contact List</h3>
                            <g:each in="${queryList}" var="row">
                                <div>
                                    <button style="width: 150px; text-align: left" class="btn btn-sm btn-primary">${row.name}</button>
                                </div>
                            </g:each>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="col-sm-12" style="background: #ddd;">
                            <h3>Donor Information</h3>
                            <form id="donation-info" class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-lg-5 control-label">Name :</label>
                                    <div class="col-lg-5">
                                        <p class="form-control-static">Narayan</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-5 control-label">Address :</label>
                                    <div class="col-lg-5">
                                        <p class="form-control-static">123 street, New York</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-5 control-label">Phone Number :</label>
                                    <div class="col-lg-5" style="margin-top: -8px;">
                                        <p class="form-control-static">
                                            <span style="margin-right: 20px">650-323-333</span>
                                            <i onclick="pushCallDetail();" class="fa fa-phone-square fa-2x" aria-hidden="true"></i> &nbsp; &nbsp;
                                            <i class="fa fa-comments fa-2x" aria-hidden="true"></i>
                                        </p>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-5 control-label">Email :</label>
                                    <div class="col-lg-5" style="margin-top: -8px;">
                                        <p class="form-control-static">
                                            <span style="margin-right: 20px">email@example.com</span>
                                            <i class="fa fa-envelope fa-2x" aria-hidden="true"></i>
                                        </p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-5 control-label">Location Preference :</label>
                                    <div class="col-lg-5">
                                        <p class="form-control-static">
                                            <span style="margin-right: 20px">Mountain View</span>
                                        </p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-5 control-label">Preferred Method of Contact :</label>
                                    <div class="col-lg-5">
                                        <p class="form-control-static">
                                            <span style="margin-right: 20px">Phone</span>
                                        </p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-5 control-label">Donation History :</label>
                                    <div class="col-lg-5">
                                        <p class="form-control-static">
                                            <a style="margin-right: 20px" onclick="showPastDonation(${1})" href="#">Click Here</a>
                                        </p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-5 control-label">Donor Index :</label>
                                    <div class="col-lg-5">
                                        <p class="form-control-static">
                                            <span style="margin-right: 20px">90%</span>
                                        </p>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div id="call-stat" class="row" style="display: none;background: #ddd;">
                            <div class="col-sm-12 b-r"><h3 class="m-t-none m-b">Call Statistics</h3>
                                <g:form role="form" controller="adminAppointment" action="index">
                                    <div class="form-group">
                                        <span>Call Duration : 4:30</span><br>

                                    </div>
                                    <div class="form-group"><span>Call Feedback</span>
                                        <select onchange="loadFeedbackPopup()" class="select2_demo form-control" id="callFeedback" name="callFeedback" required="required">
                                            <option value="">Select</option>
                                            <option value="schedule">Schedule An Appointment</option>
                                            <option value="follow-up">Follow-Up</option>
                                            <option value="do-not-call">Do Not Call</option>
                                        </select>
                                    </div>
                                    <div class="form-group"><span>Additional Note</span>
                                        <g:textArea class="form-control" name="additionalNote">

                                        </g:textArea>
                                    </div>
                                    <div>
                                        <button class="btn btn-sm btn-primary pull-right m-t-n-xs" type="submit">
                                            <strong>Submit</strong>
                                        </button>
                                    </div>
                                </g:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <g:render template="feedbackPopUp"/>
            <div id="past-donation-form-div"></div>
        </div>
    </div>
</div>

</body>

</html>
