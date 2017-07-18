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
        var appointmentDate = '${appointmentDate}'
        var schedule_URL = '<g:createLink controller="schedule" action="schedule"/>'

    </script>
</head>

<body>
<div class="row animated fadeInDown">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5> ${location}'s Schedules</h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                </div>
            </div>
            <div class="ibox-content">
                <div id="schedule-modal-div"></div>
                <div id="calendar"></div>
            </div>
        </div>
    </div>
</div>

</body>

</html>
