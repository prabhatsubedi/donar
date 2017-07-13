<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main_admin"/>

    <title>Circulate | Schedule</title>

    <asset:stylesheet src="plugins/iCheck/custom.css"/>

    <asset:stylesheet src="plugins/fullcalendar/fullcalendar.css"/>
    <asset:stylesheet src="plugins/fullcalendar/fullcalendar.print.css" media="print"/>

    <!-- Morris -->
    <asset:stylesheet src="animate.css"/>
    <asset:stylesheet src="style"/>
    <script>
        var appointData = ${raw(appointData as String)}
        var appointmentInfo_URL = '<g:createLink controller="appointment" action="appointmentDetail"/>'
    </script>
</head>

<body>
<div class="row animated fadeInDown">
    <div class="col-lg-12">
        <div class="pull-right" style="padding-bottom: 10px;">
            <a data-toggle="modal" class="btn btn-primary" href="#modal-form">Schedule</a>
        </div>
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Schedule </h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                </div>
            </div>
            <div class="ibox-content">
                <div id="modal-form" class="modal fade" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12 b-r"><h3 class="m-t-none m-b">Schedule Appointment</h3>
                                        <g:form role="form" controller="appointment" action="donationList">
                                            <div class="form-group calendar-dob" style="text-align: left;">
                                                <label>Date</label><br>
                                                <div class="input-group date">
                                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                    <input type="text" class="form-control" value="${new java.util.Date().format("MM/dd/yyyy")}" id="appointmentDate" name="appointmentDate">
                                                </div>
                                            </div>
                                            <div class="form-group"><label>Location</label>
                                                <select class="select2_demo form-control" name="location" required="required">
                                                    <option value="">Choose Location</option>
                                                    <g:each in="${location}" var="l">
                                                        <option value="${l}">${l}</option>
                                                    </g:each>
                                                </select>
                                            </div>
                                            <div>
                                                <button class="btn btn-sm btn-primary pull-right m-t-n-xs" type="submit"><strong>Continue</strong></button>
                                            </div>
                                        </g:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="schedule-info-div"></div>
                <div id="calendar"></div>
            </div>
        </div>
    </div>
</div>

</body>

</html>
