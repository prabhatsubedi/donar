<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main_donar"/>

    <title>Circulate | Dashboard</title>
</head>

<body>
<div class="row animated fadeInDown">
    <div class="col-lg-12">
        <div class="ibox float-e-margins" style="margin-bottom: 5px;margin-top: -20px;">
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
                    <h1><i class="fa fa-calendar-o"></i> Optimal Donation</h1>
                </div>
                <div class="ibox-content">
                    <h4 class="no-margins">8/01/17 - 8/10/17</h4>
                    %{--<div class="stat-percent font-bold text-success">98% <i class="fa fa-bolt"></i></div>--}%
                    <span>Platelets</span>
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
                    <h1><i class="fa fa-calendar"></i> Appointments</h1>
                </div>
                <div class="ibox-content">
                    <h4 class="no-margins">08/05/17</h4>
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
                    <h1><i class="fa fa-history"></i> Donation History</h1>
                </div>
                <div class="ibox-content">
                    <h4 class="no-margins">Platelets, 12/12/16</h4>
                    <div class="stat-percent font-bold text-success">100 pts</div>
                    <span>Last Donated</span>
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
                    <h1><i class="fa fa-medkit"></i> Wellness History</h1>
                </div>
                <div class="ibox-content">
                    %{--<h4 class="no-margins"><span class="pie" style="display: none;">54/100</span></h4>

                    --}%%{--<div class="stat-percent font-bold text-success">100 pts</div>--}%%{--
                    <span>Hemoglobin</span>--}%
                    <div class="row">
                        <div class="col-md-2">
                            <h4 class="no-margins">
                                <span class="bar" style="display: none;">5, 7, 2, 3, 6,2</span>
                            </h4>
                            <span>Choles.</span>
                        </div>
                        <div class="col-md-2">
                            <h4 class="no-margins">
                                <span class="line">5,3,9,6,5,9</span>
                            </h4>
                            <span>Pulse</span>
                        </div>
                        <div class="col-md-2">
                            <h4 class="no-margins">
                                <span class="bar" style="display: none;">5, 7, 2, 3, 6,2</span>
                            </h4>
                            <span>Temp.</span>
                        </div>
                        <div class="col-md-2">
                            <h4 class="no-margins">
                                <span class="line">5,3,9,6,5,9</span>
                            </h4>
                            <span>Blood Pressure</span>
                        </div>
                        <div class="col-md-3">
                            <h4 class="no-margins">
                                <span class="line">5,3,9,6,5,9</span>
                            </h4>
                            <span>Hemoglobin</span>
                        </div>
                    </div>
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
                    <h1><i class="fa fa-gift"></i> Rewards</h1>
                </div>
                <div class="ibox-content">
                    <h4 class="no-margins">1000pts</h4>
                    %{--<div class="stat-percent font-bold text-success">1000pts</div>--}%
                    <span>Current Points</span>
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
                    <h1><i class="fa fa-envelope"></i> Messages</h1>
                </div>
                <div class="ibox-content">
                    <h4 class="no-margins">3</h4>
                    %{--<div class="stat-percent font-bold text-success">1000pts</div>--}%
                    <span>New Messages</span>
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
