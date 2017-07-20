<div id="save-query" class="modal fade" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <g:form class="form-horizontal" controller="generateList" action="save">
                        <div class="col-sm-12"><h3 class="m-t-none m-b">Save List As</h3>
                            <div class="form-group"><label class="col-lg-3 control-label">Query Name</label>
                                <div class="col-lg-9">
                                    <g:textField name="name" class="form-control" />
                                    <g:hiddenField name="query" value="${queryJSON}"/>
                                </div>
                            </div>
                            <div class="form-group"><label class="col-lg-3 control-label">Frequency</label>
                                <div class="col-lg-9">
                                    <g:select from="${frequencyList}" name="frequency" noSelection="['':'All']" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group calendar-dob">
                                <label class="col-lg-3 control-label">Start Date</label>
                                <div class="input-group date col-lg-9" style="padding: 0 15px;">
                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    <input type="text" class="form-control" name="startDate">
                                </div>
                            </div>
                            <div class="form-group calendar-dob">
                                <label class="col-lg-3 control-label">End Date</label>
                                <div class="input-group date col-lg-9" style="padding: 0 15px;">
                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    <input type="text" class="form-control" name="endDate">
                                </div>
                            </div>
                            <div>
                                <button class="btn btn-sm btn-primary pull-right" data-dismiss="modal">
                                    <strong>Cancel</strong>
                                </button>
                                <g:submitButton class="btn btn-sm btn-primary pull-right" style="margin-right: 15px;" name="save" value="Save"/>
                            </div>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>