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
            $('#appointmentDate').val(date.format("MM/DD/YYYY"))
            $('#modal-form').modal()

        },
        eventClick: function (event) {
            var parameters = {'id':event.id}
            jQuery.ajax({
                type:'POST',
                data: parameters,
                url:appointmentInfo_URL,
                success:function (data, textStatus) {
                    $('#appointment-info-div').html(data);
                    $('#appointment-info').modal();
                },
                error:function (XMLHttpRequest, textStatus, errorThrown) {
                    alert("Error!")
                },
                complete:function (XMLHttpRequest, textStatus) {
                    //$('#error-message').hide();
                }
            });


        },
        events: event
    });

});
