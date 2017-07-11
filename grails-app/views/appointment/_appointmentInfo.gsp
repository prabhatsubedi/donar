<div id="appointment-info" class="modal fade" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-12 b-r"><h3 class="m-t-none m-b">Appointment Info</h3>
                        <div class="form-group no-calendar-dob" style="text-align: left;">
                            <label>Date</label><br>
                            <div class="input-group date">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                <input readonly type="text" class="form-control" value="${userAppointment.date.format("MM/dd/yyyy")}">
                            </div>
                        </div>
                        <div class="form-group"><label>Donation Type</label>
                            <input readonly type="text" class="form-control" value="${userAppointment.donationType}">
                        </div>
                        <div class="form-group"><label>Location</label>
                            <input readonly type="text" class="form-control" value="${userAppointment.location}">
                        </div>
                        <div class="form-group"><label>Time Slot</label>
                            <input readonly type="text" class="form-control" value="${userAppointment.startTime + ' To '+ userAppointment.endTime}">
                        </div>
                        <div>
                            <button class="btn btn-sm btn-primary pull-right m-t-n-xs" data-dismiss="modal"><strong>Close</strong></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>