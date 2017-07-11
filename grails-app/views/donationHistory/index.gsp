<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main_donar"/>

    <title>Circulate | Donation History</title>
</head>

<body>
<div class="row animated fadeInDown">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="row">
                <div class="col-lg-2">
                    <h2 style="font-size: 12pt;margin-bottom: 0px"><b>Donor Since:</b> ${user.dateCreated?.format("YYYY")}</h2>
                </div>
                <div class="col-lg-3">
                    <h2 style="font-size: 12pt;margin-bottom: 0px"><b>Tot. # of Donations: </b> 10</h2>
                </div>
                <div class="col-lg-3">
                    <h2 style="font-size: 12pt;margin-bottom: 0px"><b>Tot. vol. of Donation: </b> 4500mL</h2>
                </div>
                <div class="col-lg-4">
                    <h2 style="font-size: 12pt;margin-bottom: 0px"><b>Tot. # of Patients Helped: </b> 22</h2>
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
                        <h4>Compared to all Donors</h4>
                        <h2>15 Percentile</h2>
                        <div class="progress progress-mini">
                            <div style="width: 15%;" class="progress-bar"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="ibox-content">
                        <h4>Compared to Donors since 2017</h4>
                        <h2>30 Percentile</h2>
                        <div class="progress progress-mini">
                            <div style="width: 30%;" class="progress-bar"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="ibox-content">
                        <h4>Compared to Donors Your Age</h4>
                        <h2>55 Percentile</h2>
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
