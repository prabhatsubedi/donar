<%@ page import="java.math.MathContext" %>
<%@ page defaultCodec="none" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Circulate Admin Dashboard</title>

    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="font-awesome/css/font-awesome.css"/>

    <!-- Morris -->

    <asset:stylesheet src="plugins/morris/morris-0.4.3.min.css"/>
    <asset:stylesheet src="animate.css"/>
    <asset:stylesheet src="style"/>

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
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">Admin</strong>
                                %{--</span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>--}%
                                <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                    <li><a href="profile.html">Profile</a></li>
                                    <li><a href="contacts.html">Contacts</a></li>
                                    <li><a href="mailbox.html">Mailbox</a></li>
                                    <li class="divider"></li>
                                    <li><a href="/logout">Logout</a></li>
                                </ul>
                    </div>
                    <div class="logo-element">
                        Circulate
                    </div>
                </li>
                <li class="active">
                    <a href="index.html"><i class="fa fa-th-large"></i> <span class="nav-label">Admin</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        %{--<li><a href="index.html">Dashboard v.1</a></li>
                        <li><a href="dashboard_2.html">Dashboard v.2</a></li>
                        <li><a href="dashboard_3.html">Dashboard v.3</a></li>--}%
                        <li class="active"><a href="/">Dashboard</a></li>
                        %{--<li><a href="dashboard_5.html">Dashboard v.5 </a></li>--}%
                    </ul>
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
                        <span class="m-r-sm text-muted welcome-message">Welcome to Circulate Admin Dashboard.</span>
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
            <div class="row">
                <div class="col-lg-6">
                    <div class="ibox float-e-margins">
                        <div class="ibox-content">
                            <div>
                                <h3 class="font-bold no-margins">
                                    Current Inventory Level (Raw / Percent)
                                </h3>
                            </div>

                            <div class="m-t-sm">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div data-toggle="buttons" class="btn-group">
                                            <label class="btn btn-sm btn-white active" id="current-raw-label" > <input type="radio" id="current-raw" name="options"> Raw </label>
                                            <label class="btn btn-sm btn-white" id="current-percent-label"> <input type="radio" id="current-percent" name="options"> Percent </label>
                                        </div>
                                        <div>
                                            <canvas id="currentInventoryRawPercent" height="114"></canvas>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="ibox float-e-margins">
                        <div class="ibox-content">
                            <div>
                                <h3 class="font-bold no-margins">
                                    Weekly Gap Level
                                </h3>
                            </div>

                            <div class="m-t-sm">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div>
                                            <canvas id="weeklyGapLevel" height="130"></canvas>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="ibox float-e-margins">
                        <div class="ibox-content">
                            <div>
                                <h3 class="font-bold no-margins">
                                    Gap Levels For Next 7 Days
                                </h3>
                                <g:select from="${bloodType}" name="bloodType" style="float:right"/>
                            </div>

                            <div class="m-t-sm">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div>
                                            <canvas id="forcastedDays" height="130"></canvas>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="ibox float-e-margins">
                        <div class="ibox-content">
                            <div>
                                <h3 class="font-bold no-margins">
                                    Weekly Projection Level
                                </h3>
                            </div>

                            <div class="m-t-sm">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div>
                                            <canvas id="weeklyProjectionLevel" height="130"></canvas>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">

                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Forcasted Inventory Data</h5>
                        </div>
                        <div class="ibox-content">
                            <div class="row">
                                <div class="col-sm-9 m-b-xs">
                                    <div data-toggle="buttons" class="btn-group">
                                        <label class="btn btn-sm btn-white" onclick="changeBloodProduct('rbc')"> <input type="radio" id="option1" name="options"> RBC </label>
                                        <label class="btn btn-sm btn-white active" onclick="changeBloodProduct('platelet')" > <input type="radio" id="option2" name="options"> Platelets </label>
                                        <label class="btn btn-sm btn-white" onclick="changeBloodProduct('plasma')" > <input type="radio" id="option3" name="options"> Plasma </label>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table id="blood-product-table" class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Blood Type</th>
                                        <th>Forecasted Collections Day I</th>
                                        <th>Forecasted Import </th>
                                        <th>Forecasted Usage </th>
                                        <th>Percentage Met Demand </th>
                                        <th>Demand Gap</th>
                                    </tr>
                                    </thead>
                                    <tbody style="display: none"></tbody>
                                    <tbody id="blood-product-rbc" style="display: none">
                                    <g:each in="${rbcList}" var="bloodProduct" status="i">
                                        <tr style="text-align: center">
                                            <td>${i+1}</td>
                                            <td>${bloodProduct.bloodType}</td>
                                            <td>${bloodProduct.projectedCollectionDayI}</td>
                                            <td>${bloodProduct.projectedWeeklyImport}</td>
                                            <td>${bloodProduct.projectedUsageDaily}</td>
                                            <td>
                                                <g:formatNumber number="${(bloodProduct.projectedWeeklyImport + bloodProduct.projectedCollectionDayI
                                                        + bloodProduct.projectedCollectionDayIPlusOne + bloodProduct.projectedCollectionDayIPlusTwo
                                                        + bloodProduct.projectedCollectionDayIPlusThree + bloodProduct.projectedCollectionDayIPlusFour
                                                        + bloodProduct.projectedCollectionDayIPlusFive + bloodProduct.projectedCollectionDayIPlusSix)/
                                                        bloodProduct.projectedUsageDaily}" format="#.##"/>
                                            </td>
                                            <td>
                                                <g:formatNumber number="${(bloodProduct.projectedWeeklyImport + bloodProduct.projectedCollectionDayI
                                                        + bloodProduct.projectedCollectionDayIPlusOne + bloodProduct.projectedCollectionDayIPlusTwo
                                                        + bloodProduct.projectedCollectionDayIPlusThree + bloodProduct.projectedCollectionDayIPlusFour
                                                        + bloodProduct.projectedCollectionDayIPlusFive + bloodProduct.projectedCollectionDayIPlusSix)-
                                                        bloodProduct.projectedUsageDaily}"/>
                                            </td>
                                        </tr>
                                    </g:each>
                                    </tbody>
                                    <tbody id="blood-product-platelet">
                                    <g:each in="${plateletList}" var="bloodProduct" status="i">
                                        <tr style="text-align: center">
                                            <td>${i+1}</td>
                                            <td>${bloodProduct.bloodType}</td>
                                            <td>${bloodProduct.projectedCollectionDayI}</td>
                                            <td>${bloodProduct.projectedWeeklyImport}</td>
                                            <td>${bloodProduct.projectedUsageDaily}</td>
                                            <td>
                                                <g:formatNumber number="${(bloodProduct.projectedWeeklyImport + bloodProduct.projectedCollectionDayI
                                                        + bloodProduct.projectedCollectionDayIPlusOne + bloodProduct.projectedCollectionDayIPlusTwo
                                                        + bloodProduct.projectedCollectionDayIPlusThree + bloodProduct.projectedCollectionDayIPlusFour
                                                        + bloodProduct.projectedCollectionDayIPlusFive + bloodProduct.projectedCollectionDayIPlusSix)/
                                                        bloodProduct.projectedUsageDaily}" format="#.##"/>
                                            </td>
                                            <td>
                                                <g:formatNumber number="${(bloodProduct.projectedWeeklyImport + bloodProduct.projectedCollectionDayI
                                                        + bloodProduct.projectedCollectionDayIPlusOne + bloodProduct.projectedCollectionDayIPlusTwo
                                                        + bloodProduct.projectedCollectionDayIPlusThree + bloodProduct.projectedCollectionDayIPlusFour
                                                        + bloodProduct.projectedCollectionDayIPlusFive + bloodProduct.projectedCollectionDayIPlusSix)-
                                                        bloodProduct.projectedUsageDaily}"/>
                                            </td>
                                        </tr>
                                    </g:each>
                                    </tbody>
                                    <tbody id="blood-product-plasma" style="display: none">
                                    <g:each in="${plasmaList}" var="bloodProduct" status="i">
                                        <tr style="text-align: center">
                                            <td>${i+1}</td>
                                            <td>${bloodProduct.bloodType}</td>
                                            <td>${bloodProduct.projectedCollectionDayI}</td>
                                            <td>${bloodProduct.projectedWeeklyImport}</td>
                                            <td>${bloodProduct.projectedUsageDaily}</td>
                                            <td>
                                                <g:formatNumber number="${(bloodProduct.projectedWeeklyImport + bloodProduct.projectedCollectionDayI
                                                        + bloodProduct.projectedCollectionDayIPlusOne + bloodProduct.projectedCollectionDayIPlusTwo
                                                        + bloodProduct.projectedCollectionDayIPlusThree + bloodProduct.projectedCollectionDayIPlusFour
                                                        + bloodProduct.projectedCollectionDayIPlusFive + bloodProduct.projectedCollectionDayIPlusSix)/
                                                        bloodProduct.projectedUsageDaily}" format="#.##"/>
                                            </td>
                                            <td>
                                                <g:formatNumber number="${(bloodProduct.projectedWeeklyImport + bloodProduct.projectedCollectionDayI
                                                        + bloodProduct.projectedCollectionDayIPlusOne + bloodProduct.projectedCollectionDayIPlusTwo
                                                        + bloodProduct.projectedCollectionDayIPlusThree + bloodProduct.projectedCollectionDayIPlusFour
                                                        + bloodProduct.projectedCollectionDayIPlusFive + bloodProduct.projectedCollectionDayIPlusSix)-
                                                        bloodProduct.projectedUsageDaily}"/>
                                            </td>
                                        </tr>
                                    </g:each>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="footer">
            <div>
                <strong>Copyright</strong> Circulate &copy; 2017
            </div>
        </div>

    </div>
</div>

<!-- Mainly scripts -->
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

<script>
    function changeBloodProduct(type){
        $('#blood-product-table tbody').hide();
        $('#blood-product-'+type).show();
    }
</script>

<script>
    $(document).ready(function() {
        var bloodType = ["O+", "A+", "B+", "AB+", "O-", "A-", "B-", "AB-"]
        var days = ["Day I", "Day I + 1", "Day I + 2", "Day I + 3", "Day I + 4", "Day I + 5", "Day I + 6"]

        var currentInventoryRawData = {
            labels: bloodType,
            datasets: [
                {
                    label: "Platelet",
                    data: ${plateletList.currentInventoryLevel},
                    backgroundColor: "rgba(26,179,148,0.5)",
                    borderColor: "rgba(26,179,148,0.7)",
                    pointBackgroundColor: "rgba(26,179,148,1)",
                    pointBorderColor: "#fff"
                },
                {
                    label: "RBC",
                    data: ${rbcList.currentInventoryLevel},
                    backgroundColor: "rgba(255,0,0,0.5)",
                    borderColor: "rgba(255,0,0,1)",
                    pointBackgroundColor: "rgba(255,0,0,1)",
                    pointBorderColor: "#fff"
                },
                {
                    label: "Plasma",
                    data: ${plasmaList.currentInventoryLevel},
                    backgroundColor: "rgba(220,220,220,0.5)",
                    borderColor: "rgba(220,220,220,1)",
                    pointBackgroundColor: "rgba(220,220,220,1)",
                    pointBorderColor: "#fff"
                }
            ]
        };
        var currentInventoryPercentData = {
            labels: bloodType,
            datasets: [
                {
                    label: "Platelet",
                    backgroundColor: "rgba(26,179,148,0.5)",
                    borderColor: "rgba(26,179,148,0.7)",
                    pointBackgroundColor: "rgba(26,179,148,1)",
                    pointBorderColor: "#fff",
                    data: ${currentInventoryPercent.platelet}
                },
                {
                    label: "RBC",
                    backgroundColor: "rgba(255,0,0,0.5)",
                    borderColor: "rgba(255,0,0,1)",
                    pointBackgroundColor: "rgba(255,0,0,1)",
                    pointBorderColor: "#fff",
                    data: ${currentInventoryPercent.rbc}
                },
                {
                    label: "Plasma",
                    backgroundColor: "rgba(220,220,220,0.5)",
                    borderColor: "rgba(220,220,220,1)",
                    pointBackgroundColor: "rgba(220,220,220,1)",
                    pointBorderColor: "#fff",
                    data: ${currentInventoryPercent.plasma}
                }
            ]
        };

        var lineOptions = {
            responsive: true
        };

        var ctx = document.getElementById("currentInventoryRawPercent").getContext("2d");
        var cIRPChart = new Chart(ctx, {type: 'bar', data: currentInventoryRawData, options:lineOptions});

        $('#current-raw-label').on('click', function(){
            cIRPChart.destroy()
            ctx = document.getElementById("currentInventoryRawPercent").getContext("2d");
            cIRPChart = new Chart(ctx, {type: 'bar', data: currentInventoryRawData, options:lineOptions});
        });
        $('#current-percent-label').on('click', function(){
            cIRPChart.destroy()
            ctx = document.getElementById("currentInventoryRawPercent").getContext("2d");
            cIRPChart = new Chart(ctx, {type: 'bar', data: currentInventoryPercentData, options:lineOptions});
        });

        var forcastedGraphDataMap = ${forcastedGraphDataMap}
        var forcastedDaysData = prepareForcastedGraphData(forcastedGraphDataMap, days, bloodType[0]);

        var ctx1 = document.getElementById("forcastedDays").getContext("2d");
        var forcastedChart = new Chart(ctx1, {type: 'line', data: forcastedDaysData, options:lineOptions});

        $('#bloodType').on('change', function(){
            var selectedBloodType = $(this).val();
            forcastedDaysData = prepareForcastedGraphData(forcastedGraphDataMap, days, selectedBloodType);
            forcastedChart.destroy()
            ctx1 = document.getElementById("forcastedDays").getContext("2d");
            forcastedChart = new Chart(ctx1, {type: 'line', data: forcastedDaysData, options:lineOptions});
        });

        /*var optimalCurrentInventoryData = {
            labels: bloodType,
            datasets: [
                {
                    label: "Platelet - Current",
                    data: ${plateletList.currentInventoryLevel},
                    borderColor: "#1ab394",
                    fill: false
                },
                {
                    label: "RBC - Current",
                    data: ${rbcList.currentInventoryLevel},
                    borderColor: "#ff0000",
                    fill: false
                },
                {
                    label: "Plasma - Current",
                    data: ${plasmaList.currentInventoryLevel},
                    borderColor: "#3e95cd",
                    fill: false
                },
                {
                    label: "Platelet - Optimal",
                    data: ${plateletList.optimalLevel},
                    borderColor: "#0000ff",
                    fill: false
                },
                {
                    label: "RBC - Optimal",
                    data: ${rbcList.optimalLevel},
                    borderColor: "#ff00ff",
                    fill: false
                },
                {
                    label: "Plasma - Optimal",
                    data: ${plasmaList.optimalLevel},
                    borderColor: "#008000",
                    fill: false
                }
            ]
        };

        var ctx1 = document.getElementById("optimalCurrentInventory").getContext("2d");
        new Chart(ctx1, {type: 'line', data: optimalCurrentInventoryData, options:lineOptions});*/

        var weeklyGapData = {
            labels: bloodType,
            datasets: [
                {
                    label: "Platelet",
                    backgroundColor: "rgba(26,179,148,0.5)",
                    borderColor: "rgba(26,179,148,0.7)",
                    pointBackgroundColor: "rgba(26,179,148,1)",
                    pointBorderColor: "#fff",
                    data: ${weeklyGapMap.platelet}
                },
                {
                    label: "RBC",
                    backgroundColor: "rgba(255,0,0,0.5)",
                    borderColor: "rgba(255,0,0,1)",
                    pointBackgroundColor: "rgba(255,0,0,1)",
                    pointBorderColor: "#fff",
                    data: ${weeklyGapMap.rbc}
                },
                {
                    label: "Plasma",
                    backgroundColor: "rgba(220,220,220,0.5)",
                    borderColor: "rgba(220,220,220,1)",
                    pointBackgroundColor: "rgba(220,220,220,1)",
                    pointBorderColor: "#fff",
                    data: ${weeklyGapMap.plasma}
                }
            ]
        };

        var ctx1 = document.getElementById("weeklyGapLevel").getContext("2d");
        new Chart(ctx1, {type: 'bar', data: weeklyGapData, options:lineOptions});

        var weeklyProjectionData = {
            labels: bloodType,
            datasets: [
                {
                    label: "Platelet",
                    backgroundColor: "rgba(26,179,148,0.5)",
                    borderColor: "rgba(26,179,148,0.7)",
                    pointBackgroundColor: "rgba(26,179,148,1)",
                    pointBorderColor: "#fff",
                    data: ${weeklyProjectionMap.platelet}
                },
                {
                    label: "RBC",
                    backgroundColor: "rgba(255,0,0,0.5)",
                    borderColor: "rgba(255,0,0,1)",
                    pointBackgroundColor: "rgba(255,0,0,1)",
                    pointBorderColor: "#fff",
                    data: ${weeklyProjectionMap.rbc}
                },
                {
                    label: "Plasma",
                    backgroundColor: "rgba(220,220,220,0.5)",
                    borderColor: "rgba(220,220,220,1)",
                    pointBackgroundColor: "rgba(220,220,220,1)",
                    pointBorderColor: "#fff",
                    data: ${weeklyProjectionMap.plasma}
                }
            ]
        };

        var ctx1 = document.getElementById("weeklyProjectionLevel").getContext("2d");
        new Chart(ctx1, {type: 'bar', data: weeklyProjectionData, options:lineOptions});
    });

    function prepareForcastedGraphData(forcastedGraphDataMap, days, bloodType){
        var forcastedDaysData = {
            labels: days,
            datasets: [
                {
                    label: "Platelet",
                    borderColor: "rgba(26,179,148,0.7)",
                    data: forcastedGraphDataMap['platelet'][bloodType],
                    fill: false
                },
                {
                    label: "RBC",
                    borderColor: "rgba(255,0,0,1)",
                    data:  forcastedGraphDataMap['rbc'][bloodType],
                    fill: false
                },
                {
                    label: "Plasma",
                    borderColor: "rgba(220,220,220,1)",
                    data:  forcastedGraphDataMap['plasma'][bloodType],
                    fill: false
                }
            ]
        };

        return forcastedDaysData;
    }
</script>
</body>
</html>
