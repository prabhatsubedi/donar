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
                        <th>Donation Tpye</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${data}" var="row" status="i">
                        <tr>
                            <td>${row.startTime}</td>
                            <td>${row.endTime}</td>
                            <td>${row.location}</td>
                            <td>
                                <select class="select2_demo form-control" id="donation-type-${row.id}" style="width: auto">
                                    <option value="">Select</option>
                                    <g:each in="${donationType}" var="l">
                                        <option value="${l}">${l}</option>
                                    </g:each>
                                </select>
                            </td>
                            <td>
                                <div style="float: left">
                                    <button onclick="selectDonationTime('<g:createLink controller="appointment" action="saveAppointment"/>', ${row.id}, '${appointmentDate}')" class="btn btn-sm btn-primary pull-right m-t-n-xs" type="submit">
                                        <strong>Go</strong>
                                    </button>
                                </div>

                            </td>
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
