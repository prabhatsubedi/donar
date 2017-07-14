function changeBloodProduct(type){
    $('#blood-product-table tbody').hide();
    $('#blood-product-'+type).show();
}

$(document).ready(function() {
    var bloodType = ["O+", "A+", "B+", "AB+", "O-", "A-", "B-", "AB-"]
    var days = ["Day I", "Day I + 1", "Day I + 2", "Day I + 3", "Day I + 4", "Day I + 5", "Day I + 6"]

    var currentInventoryRawData = {
        labels: bloodType,
        datasets: [
            {
                label: "Platelet",
                data: currentInventoryLevel.platelet,
                backgroundColor: "rgba(26,179,148,0.5)",
                borderColor: "rgba(26,179,148,0.7)",
                pointBackgroundColor: "rgba(26,179,148,1)",
                pointBorderColor: "#fff"
            },
            {
                label: "RBC",
                data: currentInventoryLevel.rbc,
                backgroundColor: "rgba(255,0,0,0.5)",
                borderColor: "rgba(255,0,0,1)",
                pointBackgroundColor: "rgba(255,0,0,1)",
                pointBorderColor: "#fff"
            },
            {
                label: "Plasma",
                data: currentInventoryLevel.plasma,
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
                data: currentInventoryPercent.platelet
            },
            {
                label: "RBC",
                backgroundColor: "rgba(255,0,0,0.5)",
                borderColor: "rgba(255,0,0,1)",
                pointBackgroundColor: "rgba(255,0,0,1)",
                pointBorderColor: "#fff",
                data: currentInventoryPercent.rbc
            },
            {
                label: "Plasma",
                backgroundColor: "rgba(220,220,220,0.5)",
                borderColor: "rgba(220,220,220,1)",
                pointBackgroundColor: "rgba(220,220,220,1)",
                pointBorderColor: "#fff",
                data: currentInventoryPercent.plasma
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

    var weeklyGapData = {
        labels: bloodType,
        datasets: [
            {
                label: "Platelet",
                backgroundColor: "rgba(26,179,148,0.5)",
                borderColor: "rgba(26,179,148,0.7)",
                pointBackgroundColor: "rgba(26,179,148,1)",
                pointBorderColor: "#fff",
                data: weeklyGapMap.platelet
            },
            {
                label: "RBC",
                backgroundColor: "rgba(255,0,0,0.5)",
                borderColor: "rgba(255,0,0,1)",
                pointBackgroundColor: "rgba(255,0,0,1)",
                pointBorderColor: "#fff",
                data: weeklyGapMap.rbc
            },
            {
                label: "Plasma",
                backgroundColor: "rgba(220,220,220,0.5)",
                borderColor: "rgba(220,220,220,1)",
                pointBackgroundColor: "rgba(220,220,220,1)",
                pointBorderColor: "#fff",
                data: weeklyGapMap.plasma
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
                data: weeklyProjectionMap.platelet
            },
            {
                label: "RBC",
                backgroundColor: "rgba(255,0,0,0.5)",
                borderColor: "rgba(255,0,0,1)",
                pointBackgroundColor: "rgba(255,0,0,1)",
                pointBorderColor: "#fff",
                data: weeklyProjectionMap.rbc
            },
            {
                label: "Plasma",
                backgroundColor: "rgba(220,220,220,0.5)",
                borderColor: "rgba(220,220,220,1)",
                pointBackgroundColor: "rgba(220,220,220,1)",
                pointBorderColor: "#fff",
                data: weeklyProjectionMap.plasma
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