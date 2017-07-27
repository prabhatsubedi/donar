$(document).ready(function() {

    $('.i-checks').iCheck({
        checkboxClass: 'icheckbox_square-green',
        radioClass: 'iradio_square-green'
    });

    /* initialize the calendar
     -----------------------------------------------------------------*/
    var event = []
    for (i = 0; i < appointData.length; i++) {
        var map = new Object();
        map['id'] = appointData[i].id
        map['title'] = appointData[i].title
        map['type'] = appointData[i].type
        map['value'] = appointData[i].value
       // map['drbc'] = appointData[i].drbc
        map['start'] = new Date(appointData[i].start[0], appointData[i].start[1], appointData[i].start[2], appointData[i].start[3], appointData[i].start[4]),
        map['end'] = new Date(appointData[i].end[0], appointData[i].end[1], appointData[i].end[2], appointData[i].end[3], appointData[i].end[4])

        event.push(map)
    }

    $('#calendar').fullCalendar({
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay'
        },
        editable: true,
        droppable: true, // this allows things to be dropped onto the calendar
        drop: function() {
            // is the "remove after drop" checkbox checked?
            if ($('#drop-remove').is(':checked')) {
                // if so, remove the element from the "Draggable Events" list
                $(this).remove();
            }
        },
        dayClick: function(date, jsEvent, view) {
            /*$('#appointmentDate').val(date.format("MM/DD/YYYY"))
            $('#modal-form').modal()*/

        },
        eventClick: function (event) {
            //alert(event.type)
            $('#appointmentDate').val(event.start.format("MM/DD/YYYY"));
            $('#bloodType').val(event.type)
            $('#modal-form').modal()
        },
        events: event,
        eventRender: function(event, element) {
            element.find(".fc-content").remove();
            var desc =  '<div><div style="float: left;width: 25%;background: green; margin-bottom: 1px; padding: 5px;">'+event.value[0]+'</div>' +
                        '<div style="float: left;width: 25%;background: red; margin-bottom: 1px; padding: 5px;">'+event.value[1]+'</div>' +
                        '<div style="float: left;color: #676a6c;padding: 5px 0 5px 5px;">'+event.type+'</div></div>'/* +
                        '<div><div style="float: left;width: 25%;background: green; margin-bottom: 1px; padding: 5px;">'+event.wb[0]+'</div>' +
                        '<div style="float: left;width: 25%;background: red; margin-bottom: 1px; padding: 5px;">'+event.wb[1]+'</div>' +
                        '<div style="float: left;color: #676a6c;padding: 5px 0 5px 5px;">WB</div></div></br></br>' +
                        '<div><div style="float: left;width: 25%;background: green; margin-bottom: 1px; padding: 5px;">'+event.drbc[0]+'</div>' +
                        '<div style="float: left;width: 25%;background: red; margin-bottom: 1px; padding: 5px;">'+event.drbc[1]+'</div>' +
                        '<div style="float: left;color: #676a6c;padding: 5px 0 5px 5px;">DRBC</div></div>'*/
                ;
            element.append(desc);
            element.on('click', function (e) {
                e.preventDefault();
            });
        }
    });

});

function viewByDayAndPlace(loc){
    var date = $("#appointmentDate").val();
    var bloodType = $("#bloodType").val();
    location.href = byDayPlace_URL+"?date="+date+"&location="+loc+"&bloodType="+bloodType
    /*var parameters = {'date':date, 'location': location}
    jQuery.ajax({
        type:'POST',
        data: parameters,
        url:byDayPlace_URL,
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
    });*/
}
