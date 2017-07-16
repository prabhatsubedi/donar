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
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                                <h4 class="modal-title">Locations</h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-group"><h3>Fixed Sites</h3>
                                    <g:hiddenField name="appointmentDate"/>
                                    <g:each in="${location}" var="row">
                                        <div>
                                            <button style="width: 150px; text-align: left" class="btn btn-sm btn-primary">${row}</button>
                                        </div>
                                    </g:each>
                                </div>
                                <div class="form-group"><h3>Mobile Sites</h3>
                                    <g:each in="${mobileLocationList}" var="row">
                                        <div>
                                            <button style="width: 150px; text-align: left" class="btn btn-sm btn-primary">${row}</button>
                                        </div>
                                    </g:each>
                                </div>
                            </div>
                           %{-- <div class="modal-footer">
                                <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>--}%
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
