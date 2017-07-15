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
            <div class="widget navy-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-user-circle fa-4x"></i>
                    <h1 class="font-bold">
                        Accounts
                    </h1>
                </div>
            </div>
        </g:link>
        <g:link controller="adminAppointment" action="index">
            <div class="widget navy-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-clock-o fa-4x"></i>
                    <h1 class="font-bold">
                        Appointments
                    </h1>
                </div>
            </div>
        </g:link>
    </div>
    <div class="col-lg-4">
        <g:link controller="donarContact" action="index">
            <div class="widget blue-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-address-book fa-4x"></i>
                    <h1 class="font-bold">
                        Donor Contacts
                    </h1>
                </div>
            </div>
        </g:link>
        <g:link controller="generateList" action="index">
            <div class="widget blue-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-list-ol fa-4x"></i>
                    <h1 class="font-bold">
                        Generate Lists
                    </h1>
                </div>
            </div>
        </g:link>
    </div>
    <div class="col-lg-4">
        <g:link controller="schedule" action="index">
            <div class="widget red-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-calendar fa-4x"></i>
                    <h1 class="font-bold">
                        Schedule
                    </h1>
                </div>
            </div>
        </g:link>
        <g:link controller="inventory" action="index">
            <div class="widget red-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-bar-chart fa-4x"></i>
                    <h1 class="font-bold">
                        Inventory
                    </h1>
                </div>
            </div>
        </g:link>
    </div>
</div>
</body>
</html>
