<%@ page defaultCodec="none" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        <g:layoutTitle default="Circulate"/>
    </title>

    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="font-awesome/css/font-awesome.css"/>
    <asset:stylesheet src="plugins/toastr/toastr.min.css"/>
    <asset:stylesheet src="plugins/select2/select2.min.css"/>
    <asset:stylesheet src="plugins/datapicker/datepicker3.css"/>
    <asset:stylesheet src="plugins/iCheck/custom.css"/>
    <!-- Morris -->
    <asset:stylesheet src="plugins/morris/morris-0.4.3.min.css"/>
    <asset:stylesheet src="animate.css"/>
    <asset:stylesheet src="style"/>
    <script>
        var appointData = ''
    </script>
    <g:layoutHead/>
</head>
<body>

<div id="wrapper">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                        <asset:image alt="image" class="img-circle" src="profile_small.jpg" />
                    </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear">
                                <span class="block m-t-xs">
                                    <strong class="font-bold">${session.user.fullName}</strong>
                                </span>
                                %{--<span class="text-muted text-xs block">Art Director <b class="caret"></b></span>--}%
                            </span>
                        </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><g:link controller="profile" action="index">Profile</g:link></li>
                            <li><a href="">Contacts</a></li>
                            <li><a href="">Mailbox</a></li>
                            <li class="divider"></li>
                            <li><a href="/logout">Logout</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        Circulate
                    </div>
                </li>
                <li class="${(controllerName == 'admin')?'active':''}">
                    <a href="/"><i class="fa fa-th-large"></i> <span class="nav-label">Home</span></a>
                </li>
                <li class="${(controllerName == 'account')?'active':''}">
                    <g:link controller="account" action="index"><i class="fa fa-user-circle"></i> <span class="nav-label">Accounts</span></g:link>
                </li>
                <li class="${(controllerName == 'donarContact')?'active':''}">
                    <g:link controller="donarContact" action="index"><i class="fa fa-address-book"></i> <span class="nav-label">Donor Contacts</span></g:link>
                </li>
                <li class="${(controllerName == 'schedule')?'active':''}">
                    <g:link controller="schedule" action="index"><i class="fa fa-calendar"></i> <span class="nav-label">Schedule</span></g:link>
                </li>
                <li class="${(controllerName == 'adminAppointment')?'active':''}">
                    <g:link controller="adminAppointment" action="index"><i class="fa fa-clock-o"></i> <span class="nav-label">Appointments</span></g:link>
                </li>
                <li class="${(controllerName == 'generateList')?'active':''}">
                    <g:link controller="generateList" action="index"><i class="fa fa-list-ol"></i> <span class="nav-label">List Generate</span></g:link>
                </li>
                <li class="${(controllerName == 'inventory')?'active':''}">
                    <g:link controller="inventory" action="index"><i class="fa fa-bar-chart"></i> <span class="nav-label">Inventory</span></g:link>
                </li>

            </ul>

        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                    <a href="" class="minimalize-styl-2 btn btn-primary pull-right" style="float: right">Change Inventory Settings</a>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li>
                        <span class="m-r-sm text-muted welcome-message">Welcome Admin!</span>
                    </li>

                    <li>
                        <a href="/logout">
                            <i class="fa fa-sign-out"></i> Log out
                        </a>
                    </li>
                    %{-- <li>
                         <a class="right-sidebar-toggle">
                             <i class="fa fa-tasks"></i>
                         </a>
                     </li>--}%
                </ul>

            </nav>
        </div>

        <div class="wrapper wrapper-content">
            <g:layoutBody/>
        </div>
        <div class="footer">
            <div>
                <strong>Copyright</strong> Circulate &copy; 2017
            </div>
        </div>

    </div>
</div>

<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>


<!-- Mainly scripts -->
<asset:javascript src="plugins/fullcalendar/moment.min.js"/>
<asset:javascript src="jquery-3.1.1.min.js"/>
<asset:javascript src="bootstrap.min.js"/>
<asset:javascript src="plugins/metisMenu/jquery.metisMenu.js"/>
<asset:javascript src="plugins/slimscroll/jquery.slimscroll.min.js"/>

<!-- Flot -->
<asset:javascript src="plugins/flot/jquery.flot.js"/>
<asset:javascript src="plugins/flot/jquery.flot.tooltip.min.js"/>
<asset:javascript src="plugins/flot/jquery.flot.spline.js"/>
<asset:javascript src="plugins/flot/jquery.flot.resize.js"/>
<asset:javascript src="plugins/flot/jquery.flot.pie.js"/>
<asset:javascript src="plugins/flot/jquery.flot.symbol.js"/>
<asset:javascript src="plugins/flot/curvedLines.js"/>

<!-- Peity -->
<asset:javascript src="plugins/peity/jquery.peity.min.js"/>
<asset:javascript src="demo/peity-demo.js"/>

<!-- Custom and plugin javaasset:javascript -->
<asset:javascript src="inspinia.js"/>
<asset:javascript src="plugins/pace/pace.min.js"/>

<!-- jQuery UI -->
<asset:javascript src="plugins/jquery-ui/jquery-ui.min.js"/>

<!-- Jvectormap -->
<asset:javascript src="plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"/>
<asset:javascript src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"/>

<!-- Sparkline -->
<asset:javascript src="plugins/sparkline/jquery.sparkline.min.js"/>

<!-- Sparkline demo data  -->
<asset:javascript src="demo/sparkline-demo.js"/>

<!-- ChartJS-->
<asset:javascript src="plugins/chartJs/Chart.min.js"/>
<!-- iCheck -->
<asset:javascript src="plugins/iCheck/icheck.min.js"/>
<!-- Select2 -->
<asset:javascript src="plugins/select2/select2.full.min.js"/>
<!-- Full Calendar -->
<asset:javascript src="plugins/fullcalendar/fullcalendar.min.js"/>
<!-- Data picker -->
<asset:javascript src="plugins/datapicker/bootstrap-datepicker.js"/>
<g:if test="${hasOwnJs}">
    <asset:javascript src="admin/${hasOwnJs}.js"/>
</g:if>
<!-- For All Pages-->
<asset:javascript src="global.js"/>

</body>
</html>
