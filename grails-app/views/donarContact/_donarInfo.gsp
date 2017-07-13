<div id="donar-contact-info" class="modal fade" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-12"><h3 class="m-t-none m-b">Donor Contact Info</h3>
                        <div class="form-group"><label>Donor ID</label>
                            <input readonly type="text" class="form-control" value="${user.id}">
                        </div>
                        <div class="form-group"><label>Donor Name</label>
                            <input readonly type="text" class="form-control" value="${user.fullName}">
                        </div>
                        <div class="form-group"><label>Blood Type</label>
                            <input readonly type="text" class="form-control" value="${user.bloodType}">
                        </div>
                        <div class="form-group no-calendar-dob" style="text-align: left;">
                            <label>Birth Date</label><br>
                            <div class="input-group date">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                <input readonly type="text" class="form-control" value="${user.birthDate?.format("MM/dd/yyyy")}">
                            </div>
                        </div>
                        <div class="form-group"><label>Phone Number</label>
                            <input readonly type="text" class="form-control" value="${user.phoneNumber}">
                        </div>
                        <div class="form-group"><label>Email</label>
                            <input readonly type="text" class="form-control" value="${user.email}">
                        </div>
                        <div class="form-group"><label>Address</label>
                            <input readonly type="text" class="form-control" value="${user.streetAddress}">
                        </div>
                        <div class="form-group">
                            <label><a href="#">Past Donations</a></label><span style="margin-left: 60px;">Average Donor Index: 94%</span>
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