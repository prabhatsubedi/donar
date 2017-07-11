$(document).ready(function() {

    var event = []
    for (i = 0; i < appointData.length; i++) {
        var map = new Object();
        map['title'] = appointData[i].title
        map['start'] = new Date(appointData[i].start[0], appointData[i].start[1], appointData[i].start[2], appointData[i].start[3], appointData[i].start[4]),
            map['end'] = new Date(appointData[i].end[0], appointData[i].end[1], appointData[i].end[2], appointData[i].end[3], appointData[i].end[4])

        event.push(map)
    }

    $('#calendar').fullCalendar({
        header: {
            left: '',
            center: 'title',
            right: ''
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

            /*alert('Clicked on: ' + date.format("MM-DD-YYYY"));

            alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);

            alert('Current view: ' + view.name);

            // change the day's background color just for fun
            $(this).css('background-color', 'red');*/
            $('#appointmentDate').val(date.format("MM-DD-YYYY"))
            $('#modal-form').modal()

        },
        defaultView: 'basic',
        visibleRange: {
            start: moment('2017-08-01'),
            end: moment('2017-08-11')
        },
        events: event
    });

});