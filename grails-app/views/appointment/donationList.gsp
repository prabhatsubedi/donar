<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main_donar"/>

    <title>Circulate | Appointment</title>

    <asset:stylesheet src="plugins/iCheck/custom.css"/>

    <asset:stylesheet src="plugins/fullcalendar/fullcalendar.css"/>
    <asset:stylesheet src="plugins/fullcalendar/fullcalendar.print.css" media="print"/>

    <!-- Morris -->
    <asset:stylesheet src="animate.css"/>
    <asset:stylesheet src="style"/>
</head>

<body>
<div class="row animated fadeInDown">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-content inspinia-timeline">
                <div class="timeline-item">
                    <div class="row">
                        <div class="col-lg-6">
                            <p style="font-size: 13pt;margin-bottom: 0px"><b>Location:</b> ${selectedLocation}</p>
                        </div>
                        <div class="col-lg-6">
                            <p style="font-size: 13pt;margin-bottom: 0px"><b>Date: </b> ${appointmentDate}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row animated fadeInDown">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Scheduled Donation</h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                </div>
            </div>
            <div class="ibox-content">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>Start Time</th>
                        <th>End Time</th>
                        <th>Location</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${data}" var="row" status="i">
                        <tr style="cursor: pointer" onclick="selectDonationTime('<g:createLink controller="appointment" action="saveAppointment"/>', ${row.id}, '${appointmentDate}')">
                            <td title="Click Here To Select">${row.startTime}</td>
                            <td title="Click Here To Select">${row.endTime}</td>
                            <td title="Click Here To Select" class="text-navy"> ${row.location} </td>
                        </tr>
                    </g:each>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</body>

</html>
