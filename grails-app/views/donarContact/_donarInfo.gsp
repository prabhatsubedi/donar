<div class="row m-b-lg">
    <div class="col-lg-4 text-center">
        <div class="m-b-sm">
            <asset:image class="img-circle" src="profile_small.jpg" style="width: 62px"/>
        </div>
    </div>
    <div class="col-lg-8">
         <strong>
             &nbsp;
         </strong>
        <p>
        <h2>${user.fullName}</h2>
    </p>
    </div>
</div>
<div class="client-detail">
    <div class="full-height-scroll">

        <strong>Details:</strong>

        <ul class="list-group clear-list">
            <li class="list-group-item fist-item">
                <span class="pull-right"> ${user.bloodType} </span>
                Blood Type
            </li>
            <li class="list-group-item">
                <span class="pull-right"> ${user.phoneNumber} </span>
                Phone Number
                &nbsp; &nbsp; <i class="fa fa-phone-square fa-2x" aria-hidden="true"></i>
            </li>
            <li class="list-group-item">
                <span class="pull-right"> ${user.email} </span>
                Email
            </li>
            <li class="list-group-item">
                <span class="pull-right"> ${user.birthDate?.format("MM/dd/yyyy")} </span>
                Date Of Birth
            </li>
            <li class="list-group-item">
                <span class="pull-right"> ${user.streetAddress} </span>
                Address
            </li>
            <li class="list-group-item">
                <span class="pull-right"> Phone </span>
                Preferred Contact Method
            </li>
            <li class="list-group-item">
                <span class="pull-right"> <textarea class="form-control" name="comment"></textarea> </span>
                Comment
            </li>
        </ul><br/><br/>
        <strong><a onclick="showPastDonation(${user.id})" href="javascript:void(0)">Past Donations</a></strong>
        <span style="margin-left:20px;">Average Donor Index: 94%</span>
        <hr/>

    </div>
</div>