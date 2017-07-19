<g:if test="${currentUser}">
    <h3>Donor Information</h3>
    <form id="donation-info" class="form-horizontal">
        <div class="form-group">
            <label class="col-lg-5 control-label">Name :</label>
            <div class="col-lg-5">
                <p class="form-control-static">${currentUser.fullName}</p>
            </div>
        </div>
        <div class="form-group">
            <label class="col-lg-5 control-label">Address :</label>
            <div class="col-lg-5">
                <p class="form-control-static">${currentUser.streetAddress}</p>
            </div>
        </div>
        <div class="form-group">
            <label class="col-lg-5 control-label">Phone Number :</label>
            <div class="col-lg-5" style="margin-top: -8px;">
                <p class="form-control-static">
                    <span style="margin-right: 20px">${currentUser.phoneNumber}</span>
                    <i onclick="pushCallDetail();" class="fa fa-phone-square fa-2x" aria-hidden="true"></i> &nbsp; &nbsp;
                    <i class="fa fa-comments fa-2x" aria-hidden="true"></i>
                </p>

            </div>
        </div>
        <div class="form-group">
            <label class="col-lg-5 control-label">Email :</label>
            <div class="col-lg-5" style="margin-top: -8px;">
                <p class="form-control-static">
                    <span style="margin-right: 20px">${currentUser.email}</span>
                    <i class="fa fa-envelope fa-2x" aria-hidden="true"></i>
                </p>
            </div>
        </div>
        <div class="form-group">
            <label class="col-lg-5 control-label">Location Preference :</label>
            <div class="col-lg-5">
                <p class="form-control-static">
                    <span style="margin-right: 20px">Mountain View</span>
                </p>
            </div>
        </div>
        <div class="form-group">
            <label class="col-lg-5 control-label">Preferred Method of Contact :</label>
            <div class="col-lg-5">
                <p class="form-control-static">
                    <span style="margin-right: 20px">Phone</span>
                </p>
            </div>
        </div>
        <div class="form-group">
            <label class="col-lg-5 control-label">Donation History :</label>
            <div class="col-lg-5">
                <p class="form-control-static">
                    <a style="margin-right: 20px" onclick="showPastDonation(${1})" href="#">Click Here</a>
                </p>
            </div>
        </div>
        <div class="form-group">
            <label class="col-lg-5 control-label">Donor Index :</label>
            <div class="col-lg-5">
                <p class="form-control-static">
                    <span style="margin-right: 20px">90%</span>
                </p>
            </div>
        </div>
    </form>
</g:if>
<g:else>
    <h3>No Donor Available From Current List.</h3>
</g:else>
