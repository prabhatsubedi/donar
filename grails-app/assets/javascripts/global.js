$(document).ready(function() {

    $('.i-checks').iCheck({
        checkboxClass: 'icheckbox_square-green',
        radioClass: 'iradio_square-green'
    });

    /* initialize the external events
     -----------------------------------------------------------------*/


    $('#external-events div.external-event').each(function() {

        // store data so the calendar knows to render an event upon drop
        $(this).data('event', {
            title: $.trim($(this).text()), // use the element's text as the event title
            stick: true // maintain when user navigates (see docs on the renderEvent method)
        });

        // make the event draggable using jQuery UI
        $(this).draggable({
            zIndex: 1111999,
            revert: true,      // will cause the event to go back to its
            revertDuration: 0  //  original position after the drag
        });

    });

    $('.calendar-dob .input-group.date').datepicker({
        todayBtn: "linked",
        keyboardNavigation: false,
        forceParse: false,
        calendarWeeks: true,
        autoclose: true
    });

    $(".select2_demo_3").select2({
        placeholder: "Choose Location",
        allowClear: true
    });
});

function validateForm(){
    var password = $("#password").val().trim();
    var confirmPassword = $("#confirmPassword").val().trim();
    if(password != confirmPassword){
        alert("Password Did Not Match!");
        return false;
    }
    return true;
}

function selectDonationTime(url, index, appointmentDate, id){
    var donationType = $("#donation-type-"+index).val();
    if(donationType == ""){
        alert("Please Select Donation Type!");
        return
    }
    location.href = url+"?index="+index+"&appointmentDate="+appointmentDate+"&donationType="+donationType+"&accountScheduleId="+id
}

function pushCallDetail(userId){
    $('#donarId').val(userId)
    $('#query-id').val( $('#queryId').val())
    $('#query-index').val( $('#queryIndex').val())
    $('#call-stat').show()
}

function loadFeedbackPopup(){
    var val = $('#callFeedback').val();
    $("#feedback-"+val).modal()
}

function showPastDonation(id){
    $('#donar-contact-info').modal('toggle');
    var parameters = {'id':id}
    jQuery.ajax({
        type:'POST',
        data: parameters,
        url:pastDonation_URL,
        success:function (data, textStatus) {
            $('#past-donation-form-div').html(data);
            $('#past-donation-form').modal();

        },
        error:function (XMLHttpRequest, textStatus, errorThrown) {
            alert("Error!")
        },
        complete:function (XMLHttpRequest, textStatus) {
            //$('#error-message').hide();
        }
    });
}

function saveCallFeedback(userId, queryId){
    $('#donar-contact-info').modal('toggle');
    var parameters = {'userId':userId, 'queryId':queryId}
    jQuery.ajax({
        type:'POST',
        data: parameters,
        url:saveCallFeedback_URL,
        success:function (data, textStatus) {
            $('#donation-info-div').html(data);

        },
        error:function (XMLHttpRequest, textStatus, errorThrown) {
            alert("Error!")
        },
        complete:function (XMLHttpRequest, textStatus) {
            //$('#error-message').hide();
        }
    });
}

function changeQueryStatus(queryId, status){
    location.href = statusChangeUrl+"?queryId="+queryId+"&status="+status
}