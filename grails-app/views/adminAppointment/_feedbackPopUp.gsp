<div id="feedback-schedule" class="modal fade" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <g:form class="form-horizontal" controller="adminAppointment" action="saveAppointment">
                        <div class="col-sm-12"><h3 class="m-t-none m-b">Schedule</h3>
                            <g:hiddenField name="donarId"/>
                            <g:hiddenField name="query-id"/>
                            <g:hiddenField name="query-index"/>
                            <div class="form-group calendar-dob">
                                <label class="col-lg-3 control-label">Schedule</label>
                                <div class="col-lg-9 input-group date" style="padding-left: 15px;padding-right: 15px;">
                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    <input type="text" class="form-control" value="${new Date().format('MM/dd/yyyy')}" name="appointmentDate">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Location</label>
                                <div class="col-lg-9">
                                    <g:select from="${locationList}" noSelection="['':'Select']" name="location" class="form-control" required="required"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Donation Type</label>
                                <div class="col-lg-9">
                                    <g:select from="${donationType}" noSelection="['':'Select']" name="donationType" class="form-control" required="required"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Start Time</label>
                                <div class="col-lg-9">
                                    <input placeholder="14:30" required="required" name="startTime" required class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">End Time</label>
                                <div class="col-lg-9">
                                    <input placeholder="16:30" required="required" name="endTime" required class="form-control"/>
                                </div>
                            </div>
                            <div>
                                %{--<button class="btn btn-sm btn-primary pull-right" data-dismiss="modal">
                                    <strong>Apply</strong>
                                </button>--}%
                                <g:submitButton class="btn btn-sm btn-primary pull-right" style="margin-right: 15px;" name="save" value="Save"/>
                            </div>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="feedback-do-not-call" class="modal fade" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <g:form class="form-horizontal" controller="adminAppointment" action="index">
                        <div class="col-sm-12"><h3 class="m-t-none m-b">Do Not Call</h3>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">Do Not Call</label>
                                <div class="col-lg-9">
                                    <g:select from="${['Reasons']}" name="doNotCall" class="form-control" />
                                </div>
                            </div>
                            <div>
                                <button class="btn btn-sm btn-primary pull-right" data-dismiss="modal">
                                    <strong>Apply</strong>
                                </button>
                                %{--<g:submitButton class="btn btn-sm btn-primary pull-right" style="margin-right: 15px;" name="save" value="Apply"/>--}%
                            </div>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="feedback-follow-up" class="modal fade" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <g:form class="form-horizontal" controller="adminAppointment" action="index">
                        <div class="col-sm-12"><h3 class="m-t-none m-b">Follow Up</h3>
                            <div class="form-group calendar-dob">
                                <label class="col-lg-2 control-label">Follow-up</label>
                                <div class="col-lg-10 input-group date" style="padding-left: 15px;padding-right: 15px;">
                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    <input type="text" class="form-control" value="${new Date().format('MM/dd/yyyy')}" name="schedule">
                                </div>
                            </div>
                            <div>
                                <button class="btn btn-sm btn-primary pull-right" data-dismiss="modal">
                                    <strong>Apply</strong>
                                </button>
                                %{--<g:submitButton class="btn btn-sm btn-primary pull-right" style="margin-right: 15px;" name="save" value="Apply"/>--}%
                            </div>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>