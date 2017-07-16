<%@ page import="java.math.MathContext" %>
<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main_admin"/>

    <title>Circulate | Inventory</title>
    <script>
        var currentInventoryLevel = ${raw(currentInventoryLevel as String)}
        var currentInventoryPercent = ${raw(currentInventoryPercent as String)}
        var forcastedGraphDataMap = ${raw(forcastedGraphDataMap as String)}
        var weeklyGapMap = ${raw(weeklyGapMap as String)}
        var weeklyProjectionMap = ${raw(weeklyProjectionMap as String)}
    </script>
</head>

<body>
    <div class="row">
        %{--<div class="pull-right" style="padding-bottom: 10px;">
            <a data-toggle="modal" class="btn btn-primary" href="#account-create">Create New Account</a>
        </div>--}%
        <div class="col-lg-6" %{--style="margin-top: 44px;"--}%>
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
</body>
</html>
