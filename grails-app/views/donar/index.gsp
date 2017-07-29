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
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    %{--<span class="label label-success pull-right">Monthly</span>--}%
                    <h5>Optimal Donation</h5>
                </div>
                <div class="ibox-content">
                    <h1 class="no-margins">8/01/17 - 8/10/17</h1>
                    %{--<div class="stat-percent font-bold text-success">98% <i class="fa fa-bolt"></i></div>--}%
                    <small>Platelets</small>
                </div>
            </div>
        %{--<div class="widget navy-bg p-lg text-center" style="min-height: 185px; max-height: 185px">
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
        </div>--}%
        </g:link>
        <g:link controller="appointment" action="index">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    %{--<span class="label label-success pull-right">Monthly</span>--}%
                    <h5>Appointments</h5>
                </div>
                <div class="ibox-content">
                    <h1 class="no-margins">08/05/2017</h1>
                    <div class="stat-percent font-bold text-success">Double Red Blood Cells</div>
                    <small>Next Appointment Date</small>
                </div>
            </div>
            %{--<div class="widget navy-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-calendar-o fa-4x"></i>
                    <h1 class="font-bold">
                        Appointments
                    </h1>
                </div>
            </div>--}%
        </g:link>
    </div>
    <div class="col-lg-4">
        <g:link controller="donationHistory" action="index">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    %{--<span class="label label-success pull-right">Monthly</span>--}%
                    <h5>Donation History</h5>
                </div>
                <div class="ibox-content">
                    <h1 class="no-margins">Platelets, 12/12/16</h1>
                    <div class="stat-percent font-bold text-success">100 pts</div>
                    <small>Last Donated</small>
                </div>
            </div>
            %{--<div class="widget blue-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-history fa-4x"></i>
                    <h1 class="font-bold">
                        Donation History
                    </h1>
                </div>
            </div>--}%
        </g:link>
        <g:link controller="healthHistory" action="index">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    %{--<span class="label label-success pull-right">Monthly</span>--}%
                    <h5>Wellness History</h5>
                </div>
                <div class="ibox-content">
                    <h1 class="no-margins">54 Average</h1>
                    %{--<div class="stat-percent font-bold text-success">100 pts</div>--}%
                    <small>Hemoglobin</small>
                </div>
            </div>
            %{--<div class="widget blue-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-medkit fa-4x"></i>
                    <h1 class="font-bold">
                        Wellness History
                    </h1>
                </div>
            </div>--}%
        </g:link>
    </div>
    <div class="col-lg-4">
        <g:link controller="reward" action="index">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    %{--<span class="label label-success pull-right">Monthly</span>--}%
                    <h5>Rewards</h5>
                </div>
                <div class="ibox-content">
                    <h1 class="no-margins">1000pts</h1>
                    %{--<div class="stat-percent font-bold text-success">1000pts</div>--}%
                    <small>Current Points</small>
                </div>
            </div>
            %{--<div class="widget red-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-gift fa-4x"></i>
                    <h1 class="font-bold">
                        Rewards
                    </h1>
                </div>
            </div>--}%
        </g:link>
        <g:link controller="message" action="index">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    %{--<span class="label label-success pull-right">Monthly</span>--}%
                    <h5>Messages</h5>
                </div>
                <div class="ibox-content">
                    <h1 class="no-margins">3</h1>
                    %{--<div class="stat-percent font-bold text-success">1000pts</div>--}%
                    <small>New Messages</small>
                </div>
            </div>
            %{--<div class="widget red-bg p-lg text-center">
                <div class="m-b-md">
                    <i class="fa fa-envelope fa-4x"></i>
                    <h1 class="font-bold">
                        Messages
                    </h1>
                </div>
            </div>--}%
        </g:link>
    </div>
</div>
</body>
</html>
