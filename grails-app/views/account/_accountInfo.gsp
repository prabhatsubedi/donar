<div class="row m-b-lg">
    <div class="col-lg-4 text-center">
        <div class="m-b-sm">
            <asset:image class="img-circle" src="profile_small.jpg" style="width: 62px"/>
        </div>
    </div>
    <div class="col-lg-8">
       %{-- <strong>
            Organization
        </strong>--}%
        <p>
            <h2>${account.organization}</h2>
        </p>
    </div>
</div>
<div class="client-detail">
    <div class="full-height-scroll">

        <strong>Details:</strong>

        <ul class="list-group clear-list">
            <li class="list-group-item fist-item">
                <span class="pull-right"> ${account.contact} </span>
                Contact
            </li>
            <li class="list-group-item">
                <span class="pull-right"> ${account.phoneNumber} </span>
                Phone Number
                &nbsp; &nbsp; <i class="fa fa-phone-square fa-2x" aria-hidden="true"></i>
            </li>
            <li class="list-group-item">
                <span class="pull-right"> ${account.email} </span>
                Email
            </li>
            <li class="list-group-item">
                <span class="pull-right"> ${account.mobilePerYear} </span>
                Mobiles Per Year
            </li>
            <li class="list-group-item">
                <span class="pull-right"> ${account.collection} </span>
                Collections
            </li>
        </ul>
        <strong><g:link controller="account" action="schedule" params="${[id: account.id]}">Scheduling</g:link></strong>
        <hr/>

    </div>
</div>