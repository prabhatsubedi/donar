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
                <div class="row">
                    <div class="col-lg-4">
                        <h2><b>Blood Type:</b> ${user.bloodType}</h2>
                    </div>
                    <div class="col-lg-4">
                        <h2><b>Donor Since:</b> ${user.dateCreated?.format("YYYY")}</h2>
                    </div>
                    <div class="col-lg-4">
                        %{--<strong>Preferred Donation: </strong>N/A--}%
                    </div>
                </div>
        </div>
    </div>
</div>
<div class="row">
<div class="col-lg-4">
    <g:link controller="appointment" action="optimalDonation">
    <div class="widget navy-bg p-lg text-center" style="min-height: 185px; max-height: 185px">
        <div class="m-b-md">
            <h2 class="font-bold">
                Optimal Donation:
            </h2>
            <h1 class="font-bold" style="margin-top: 10px;">
                Platelets
            </h1>
            <h2 class="font-bold">
                <i class="fa fa-calendar-o"></i>
                8-1-17 to 8-10-17
            </h2>
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
        <g:link controller="healthHistory" action="index">
            <div class="widget blue-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-medkit fa-4x"></i>
                    <h1 class="font-bold">
                        Wellness History
                    </h1>
                </div>
            </div>
        </g:link>
    </div>
    <div class="col-lg-4">
        <g:link controller="reward" action="index">
            <div class="widget red-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-gift fa-4x"></i>
                    <h1 class="font-bold">
                        Rewards
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
