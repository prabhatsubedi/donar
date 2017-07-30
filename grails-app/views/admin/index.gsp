<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main_admin"/>

    <title>Circulate | Admin Dashboard</title>
</head>

<body>
<div class="row">
    <div class="col-lg-4">
        <g:link controller="account" action="index">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    %{--<span class="label label-success pull-right">Monthly</span>--}%
                    <h1><i class="fa fa-user-circle"></i> Accounts</h1>

                </div>
                <div class="ibox-content">
                    <h4 class="no-margins">589</h4>
                    %{--<div class="stat-percent font-bold text-success">100 pts</div>--}%
                    <span>Total Active Accounts</span>
                </div>
            </div>
            %{--<div class="widget navy-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-user-circle fa-4x"></i>
                    <h1 class="font-bold">
                        Accounts
                    </h1>
                </div>
            </div>--}%
        </g:link>
        <g:link controller="adminAppointment" action="index">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    %{--<span class="label label-success pull-right">Monthly</span>--}%
                    <h1><i class="fa fa-clock-o"></i> Appointments</h1>
                </div>
                <div class="ibox-content">
                    <h4 class="no-margins">65</h4>
                    %{--<div class="stat-percent font-bold text-success">100 pts</div>--}%
                    <span>Donors to Contact Today</span>
                </div>
            </div>
            %{--<div class="widget navy-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-clock-o fa-4x"></i>
                    <h1 class="font-bold">
                        Appointments
                    </h1>
                </div>
            </div>--}%
        </g:link>
    </div>
    <div class="col-lg-4">
        <g:link controller="donarContact" action="index">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    %{--<span class="label label-success pull-right">Monthly</span>--}%
                    <h1><i class="fa fa-address-book"></i> Donor Contacts</h1>
                </div>
                <div class="ibox-content">
                    <h4 class="no-margins">1024</h4>
                    %{--<div class="stat-percent font-bold text-success">100 pts</div>--}%
                    <span>Active Donors</span>
                </div>
            </div>
            %{--<div class="widget blue-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-address-book fa-4x"></i>
                    <h1 class="font-bold">
                        Donor Contacts
                    </h1>
                </div>
            </div>--}%
        </g:link>
        <g:link controller="generateList" action="index">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    %{--<span class="label label-success pull-right">Monthly</span>--}%
                    <h1><i class="fa fa-list-ol"></i> List Generator</h1>
                </div>
                <div class="ibox-content">
                    <h4 class="no-margins">6</h4>
                    %{--<div class="stat-percent font-bold text-success">100 pts</div>--}%
                    <span>Active Lists</span>
                </div>
            </div>
            %{--<div class="widget blue-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-list-ol fa-4x"></i>
                    <h1 class="font-bold">
                        List Generator
                    </h1>
                </div>
            </div>--}%
        </g:link>
    </div>
    <div class="col-lg-4">
        <g:link controller="schedule" action="index">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    %{--<span class="label label-success pull-right">Monthly</span>--}%
                    <h1><i class="fa fa-calendar"></i> Schedule</h1>
                </div>
                <div class="ibox-content">
                    <h4 class="no-margins">208</h4>
                    <div class="stat-percent font-bold text-info">20% <i class="fa fa-level-up"></i></div>
                    <span>Weekly Appointments Scheduled</span>
                </div>
            </div>
            %{--<div class="widget red-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-calendar fa-4x"></i>
                    <h1 class="font-bold">
                        Schedule
                    </h1>
                </div>
            </div>--}%
        </g:link>
        <g:link controller="inventory" action="index">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    %{--<span class="label label-success pull-right">Monthly</span>--}%
                    <h1><i class="fa fa-bar-chart"></i> Inventory</h1>
                </div>
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-md-6">
                            <h4 class="no-margins">34</h4>
                            <span>Platelet Gap for week</span>
                        </div>
                        <div class="col-md-6">
                            <h4 class="no-margins">205</h4>
                            <span>WB Gap for week</span>
                        </div>
                    </div>
                </div>
            </div>
            %{--<div class="widget red-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-bar-chart fa-4x"></i>
                    <h1 class="font-bold">
                        Inventory
                    </h1>
                </div>
            </div>--}%
        </g:link>
    </div>
</div>
</body>
</html>
