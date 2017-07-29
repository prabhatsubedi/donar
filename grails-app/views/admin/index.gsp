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
                    <h5>Accounts</h5>
                </div>
                <div class="ibox-content">
                    <h1 class="no-margins">589</h1>
                    %{--<div class="stat-percent font-bold text-success">100 pts</div>--}%
                    <small>Total Active Accounts</small>
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
                    <h5>Appointments</h5>
                </div>
                <div class="ibox-content">
                    <h1 class="no-margins">65</h1>
                    %{--<div class="stat-percent font-bold text-success">100 pts</div>--}%
                    <small>Donors to Contact Today</small>
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
                    <h5>Donor Contacts</h5>
                </div>
                <div class="ibox-content">
                    <h1 class="no-margins">1024</h1>
                    %{--<div class="stat-percent font-bold text-success">100 pts</div>--}%
                    <small>Active Donors</small>
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
                    <h5>List Generator</h5>
                </div>
                <div class="ibox-content">
                    <h1 class="no-margins">6</h1>
                    %{--<div class="stat-percent font-bold text-success">100 pts</div>--}%
                    <small>Active Lists</small>
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
                    <h5>Schedule</h5>
                </div>
                <div class="ibox-content">
                    <h1 class="no-margins">208</h1>
                    %{--<div class="stat-percent font-bold text-success">100 pts</div>--}%
                    <small>Weekly Appointments Scheduled</small>
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
                    <h5>Inventory</h5>
                </div>
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-md-6">
                            <h1 class="no-margins">34</h1>
                            <small>Platelet Gap for week</small>
                        </div>
                        <div class="col-md-6">
                            <h1 class="no-margins">205</h1>
                            <small>WB Gap for week</small>
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
