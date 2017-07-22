<div id="generate-new-query" class="modal fade" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <g:form class="form-horizontal" controller="generateList" action="search">
                        <div class="col-sm-12"><h3 class="m-t-none m-b">Generate New Query</h3>
                            <div class="form-group"><label class="col-lg-5 control-label">Gender</label>
                                <div class="col-lg-7">
                                    <g:select from="${genderList}" name="gender" noSelection="['':'All']" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group"><label class="col-lg-5 control-label">Blood Type</label>
                                <div class="col-lg-7">
                                    <g:select from="${bloodTypeList}" name="bloodType" noSelection="['':'All']" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group"><label class="col-lg-5 control-label">Age</label>
                                <div class="col-lg-7">
                                    <g:select from="${ageList}" name="age" noSelection="['':'All']" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group"><label class="col-lg-5 control-label">Ethnicity</label>
                                <div class="col-lg-7">
                                    <g:select from="${ethnicityList}" name="ethnicity" noSelection="['':'All']" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group"><label class="col-lg-5 control-label">CMV</label>
                                <div class="col-lg-7">
                                    <g:select from="${cmvList}" name="cmv" noSelection="['':'All']" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group"><label class="col-lg-5 control-label">Donor Index</label>
                                <div class="col-lg-7">
                                    <g:select from="${donorIndexList}" name="donorIndex" noSelection="['':'All']" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group"><label class="col-lg-5 control-label">Preferred Donation Type</label>
                                <div class="col-lg-7">
                                    <g:select from="${preferredDonationTypeList}" name="preferredDonationType" noSelection="['':'All']" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group"><label class="col-lg-5 control-label">Preferred Contact Method</label>
                                <div class="col-lg-7">
                                    <g:select from="${preferredContactMethodList}" name="preferredContactMethod" noSelection="['':'All']" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group"><label class="col-lg-5 control-label">Preferred Donation Location</label>
                                <div class="col-lg-7">
                                    <g:select from="${preferredDonationLocationList}" name="preferredDonatoinLocation" noSelection="['':'All']" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group"><label class="col-lg-5 control-label">Eligible For</label>
                                <div class="col-lg-7">
                                    <g:select from="${eligibleForList}" name="eligibleFor" noSelection="['':'All']" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group"><label class="col-lg-5 control-label">HLAr</label>
                                <div class="col-lg-7">
                                    <g:select from="${[]}" name="hla" noSelection="['':'All']" class="form-control" />
                                </div>
                            </div>
                            <div>
                                <g:submitButton class="btn btn-sm btn-primary pull-right" style="margin-left: 10px;" name="save" value="Generate"/>
                                <button class="btn btn-sm btn-primary pull-right" data-dismiss="modal">
                                    Cancel
                                </button>
                            </div>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>