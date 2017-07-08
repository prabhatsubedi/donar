<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main_donar"/>

    <title>Circulate | Donar Donation History</title>
</head>

<body>
<div class="row animated fadeInDown">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="row">
                <div class="col-lg-2">
                    <p class="label label-primary" style="font-size: 12pt;margin-bottom: 0px"><b>Donar Since:</b> ${user.dateCreated?.format("YYYY")}</p>
                </div>
                <div class="col-lg-3">
                    <p class="label label-info" style="font-size: 12pt;margin-bottom: 0px"><b>Total No. Of Donations: </b> 10</p>
                </div>
                <div class="col-lg-3">
                    <p class="label label-primary" style="font-size: 12pt;margin-bottom: 0px"><b>Total Vol. Of Donations: </b> 55</p>
                </div>
                <div class="col-lg-4">
                    <p class="label label-info" style="font-size: 12pt;margin-bottom: 0px"><b>Total No. Of Patients Helped: </b> 22</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row animated fadeInDown">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="row">
                <div class="col-lg-4">
                    <div class="ibox-content">
                        <h5><b>% Everyone: </b> 15</h5>
                        <h2>15%</h2>
                        <div class="progress progress-mini">
                            <div style="width: 15%;" class="progress-bar"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="ibox-content">
                        <h5><b>% Cohort Year: </b>30</h5>
                        <h2>30%</h2>
                        <div class="progress progress-mini">
                            <div style="width: 15%;" class="progress-bar"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="ibox-content">
                        <h5><b>% Cohort Age: </b> 55</h5>
                        <h2>55%</h2>
                        <div class="progress progress-mini">
                            <div style="width: 55%;" class="progress-bar"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row animated fadeInRight">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Donation History</h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                </div>
            </div>

            <div class="ibox-content inspinia-timeline">
                <div class="timeline-item">
                    <div class="row">
                        <div class="col-xs-3 date">
                            %{--<i class="fa fa-history"></i>--}%
                            10:00 am
                            <br/>
                            <small class="text-navy">August 10, 2016</small>
                        </div>
                        <div class="col-xs-7 content no-top-border">
                            %{--<p class="m-b-xs"><strong>Detail</strong></p>--}%
                            <p><b>Donation Type:</b> Platelets</p>
                            <p><b>Location:</b> Mountain View</p>
                            <p><b>Points Earned</b>: 100 pts</p>
                        </div>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="row">
                        <div class="col-xs-3 date">
                            10:00 am
                            <br/>
                            <small class="text-navy">August 10, 2016</small>
                        </div>
                        <div class="col-xs-7 content no-top-border">
                            <p><b>Donation Type:</b> Plasma</p>
                            <p><b>Location:</b> Menlo Park</p>
                            <p><b>Points Earned:</b> 100 pts</p>
                        </div>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="row">
                        <div class="col-xs-3 date">
                            10:00 am
                            <br/>
                            <small class="text-navy">August 10, 2016</small>
                        </div>
                        <div class="col-xs-7 content no-top-border">
                            <p><b>Donation Type:</b> Whole Blood</p>
                            <p><b>Location:</b> Palo Alto</p>
                            <p><b>Points Earned:</b> 100 pts</p>
                        </div>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="row">
                        <div class="col-xs-3 date">
                            10:00 am
                            <br/>
                            <small class="text-navy">August 10, 2016</small>
                        </div>
                        <div class="col-xs-7 content no-top-border">
                            <p><b>Donation Type:</b> Double Red Cells</p>
                            <p><b>Location:</b> Google Mobile</p>
                            <p><b>Points Earned:</b> 100 pts</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
