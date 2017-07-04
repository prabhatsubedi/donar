<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main_donar"/>

    <title>Circulate | Dashboard</title>
</head>

<body>
<div class="row animated fadeInDown">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-content">
                <div class="row">
                    <div class="col-lg-4">
                        <strong>Blood Type: </strong>${user.bloodType}
                    </div>
                    <div class="col-lg-4">
                        <strong>Donar Since: </strong>${user.dateCreated?.format("YYYY")}
                    </div>
                    <div class="col-lg-4">
                        <strong>Preferred Donation: </strong>N/A
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
<div class="col-lg-4">
    <g:link controller="profile" action="index">
        <div class="widget navy-bg p-lg text-center">
            <div class="m-b-md">
                <i class="fa fa-user fa-4x"></i>
                <h1 class="font-bold">
                    Profile
                </h1>
            </div>
        </div>
    </g:link>
    <g:link controller="appointment" action="index">
        <div class="widget navy-bg p-lg text-center">
            <div class="m-b-md">
                <i class="fa fa-calendar-o fa-4x"></i>
                <h1 class="font-bold">
                    Appointments
                </h1>
            </div>
        </div>
        </div>
    </g:link>
    <div class="col-lg-4">
        <g:link controller="donationHistory" action="index">
            <div class="widget blue-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-history fa-4x"></i>
                    <h1 class="font-bold">
                        Donation History
                    </h1>
                </div>
            </div>
        </g:link>
        <g:link controller="reward" action="index">
            <div class="widget blue-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-gift fa-4x"></i>
                    <h1 class="font-bold">
                        Rewards
                    </h1>
                </div>
            </div>
        </g:link>
    </div>
    <div class="col-lg-4">
        <g:link controller="healthHistory" action="index">
            <div class="widget red-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-medkit fa-4x"></i>
                    <h1 class="font-bold">
                        Wellness History
                    </h1>
                </div>
            </div>
        </g:link>
        <g:link controller="message" action="index">
            <div class="widget red-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-envelope fa-4x"></i>
                    <h1 class="font-bold">
                        Messages
                    </h1>
                </div>
            </div>
        </g:link>
    </div>
</div>
</body>
</html>
