<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main_admin"/>

    <title>Circulate | Account Schedule</title>

    <asset:stylesheet src="plugins/iCheck/custom.css"/>

    <asset:stylesheet src="plugins/fullcalendar/fullcalendar.css"/>
    <asset:stylesheet src="plugins/fullcalendar/fullcalendar.print.css" media="print"/>

    <!-- Morris -->
    <asset:stylesheet src="animate.css"/>
    <asset:stylesheet src="style"/>
    <script>
        var appointData = ${raw(appointData as String)}
        var byDayPlace_URL = '<g:createLink controller="schedule" action="byDayPlace"/>'
    </script>
</head>

<body>
<div class="row animated fadeInDown">
    <div class="col-lg-12">
        <div class="pull-right" style="padding-bottom: 10px;">
            <a data-toggle="modal" class="btn btn-primary" href="#account-schedule">Schedule</a>
        </div>
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Account Schedule for ${account.organization} </h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                </div>
            </div>
            <div class="ibox-content">
                <div id="account-schedule" class="modal fade" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body">
                                <div class="row">
                                    <g:form controller="account" action="saveSchedule" method="POST">
                                        <div class="col-sm-12"><h3 class="m-t-none m-b">Create Schedule</h3>
                                            <g:hiddenField name="accountId" value="${account.id}"/>
                                            <div class="form-group"><label>Location</label>
                                                <g:select from="${mobileLocationList}" name="location" required="required" noSelection="['':'Select']" class="form-control" />
                                            </div>
                                            <div class="form-group calendar-dob">
                                                <label>Date</label>
                                                <div class="input-group date">
                                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                    <input type="text" class="form-control" value="${new java.util.Date().format("MM/dd/yyyy")}" name="date">
                                                </div>
                                            </div>
                                            <div class="form-group"><label>Start Time</label>
                                                <input placeholder="14:30" required="required" name="startTime" required class="form-control"/>
                                            </div>
                                            <div class="form-group"><label>End Time</label>
                                                <input placeholder="16:30" required="required" name="endTime" required class="form-control"/>
                                            </div>

                                            <div>
                                                <button class="btn btn-sm btn-primary pull-right" data-dismiss="modal">
                                                    <strong>Close</strong>
                                                </button>
                                                <g:submitButton class="btn btn-sm btn-primary" name="save" value="Save"/>
                                            </div>
                                        </div>
                                    </g:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="calendar"></div>
            </div>
        </div>
    </div>
</div>

</body>

</html>
