<div id="account-create" class="modal fade" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <g:form controller="account" action="save" method="POST">
                        <div class="col-sm-12"><h3 class="m-t-none m-b">Create Account</h3>
                            <div class="form-group"><label>Organizaiton</label>
                                <input name="organization" class="form-control" required/>
                            </div>
                            <div class="form-group"><label>Contact</label>
                                <input name="contact" required class="form-control"/>
                            </div>
                            <div class="form-group"><label>Phone Number</label>
                                <input name="phoneNumber" required class="form-control"/>
                            </div>
                            <div class="form-group"><label>Email</label>
                                <input name="email" type="email" required class="form-control"/>
                            </div>
                            <div class="form-group"><label>Mobiles Per Year</label>
                                <input name="mobilePerYear" type="number" required class="form-control"/>
                            </div>
                            <div class="form-group"><label>Collections</label>
                                <input name="collection" type="number" required class="form-control"/>
                            </div>
                            <div>
                                <button class="btn btn-sm btn-primary pull-right m-t-n-xs" data-dismiss="modal">
                                    <strong>Close</strong>
                                </button>
                                <g:submitButton class="btn btn-primary" name="save" value="Save"/>
                            </div>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>