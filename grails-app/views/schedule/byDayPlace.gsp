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
    %{--<style>
    #calendar .fc-event{
        background-color: #fff !important;
        border-color: #fff !important;
        /*padding: 0px;*/
        text-align: center;
    }

    </style>--}%
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
                <h5> ${location}'s Schedules</h5><br/><br/>
               %{-- <h4 style="color: #1ab394;">Blood Type: ${bloodType}</h4><br/>--}%
                <div style="padding-bottom: 30px;text-align: center;margin-top: -13px;">
                    <div style="float: left;width: 25%;color: #676a6c;padding: 5px 0 5px 5px;">${bloodType}</div>
                    <div style="float: left;width: 25%;background: green;color: #fff; margin-bottom: 1px; padding: 5px;">${donated}</div>
                    <div style="float: left;width: 25%;background: red;color: #fff; margin-bottom: 1px; padding: 5px;">${remaining}</div>
                </div>
                <div class="ibox-tools">
                    %{--<a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>--}%
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
