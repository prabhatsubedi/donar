<div id="account-info" class="modal fade" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-12"><h3 class="m-t-none m-b">Account Info</h3>
                        <div class="form-group"><label>Account ID : </label> ${account.id}</div>
                        <div class="form-group"><label>Organization</label>
                            <input readonly type="text" class="form-control" value="${account.organization}">
                        </div>
                        <div class="form-group"><label>Contact</label>
                            <input readonly type="text" class="form-control" value="${account.contact}">
                        </div>
                        <div class="form-group"><label>Phone Number : </label>
                            <span style="margin-right: 20px">${account.phoneNumber}</span>
                            <i class="fa fa-phone-square fa-2x" aria-hidden="true"></i> &nbsp; &nbsp;
                            %{--<i class="fa fa-comments fa-2x" aria-hidden="true"></i>--}%
                        </div>
                        <div class="form-group"><label>Email</label>
                            <input readonly type="text" class="form-control" value="${account.email}">
                        </div>
                        <div class="form-group"><label>Mobiles Per Year</label>
                            <input readonly type="text" class="form-control" value="${account.mobilePerYear}">
                        </div>
                        <div class="form-group"><label>Collections</label>
                            <input readonly type="text" class="form-control" value="${account.collection}">
                        </div>
                        <div class="form-group">
                            <label><g:link controller="account" action="schedule" params="${[id: account.id]}">Scheduling</g:link></label>
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