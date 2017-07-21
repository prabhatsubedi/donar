<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main_admin"/>

    <title>Circulate | Appointments</title>
    <style>
    #donation-info .form-group{
        margin-bottom: 0px;
    }
    </style>
    <script>
        var pastDonation_URL = '<g:createLink controller="donarContact" action="pastDonation"/>'
        var saveCallFeedback_URL = '<g:createLink controller="adminAppointment" action="saveCallFeedback"/>'
    </script>
</head>

<body>
<div class="row animated fadeInDown">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Appointments</h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                </div>
            </div>
            <div class="ibox-content">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="form-group"><h3>Contact List</h3>
                            <g:each in="${queryList}" var="row">
                                <div>
                                    <g:link controller="adminAppointment" action="index" params="${[queryId : row.id]}" style="width: 150px; text-align: left" class="btn btn-sm btn-${(currentQuery.id == row.id)?'primary':'default'}">${row.name}</g:link>
                                </div>
                            </g:each>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div id="donation-info-div" class="col-sm-12">
                            <g:render template="donorInformation" model="${[currentUser: currentUser]}"/>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div id="call-stat" class="row" style="display: none;">
                            <div class="col-sm-12 b-r"><h3 class="m-t-none m-b">Call Statistics</h3>
                                <g:form role="form" controller="adminAppointment" action="saveCallFeedback">
                                    <div class="form-group">
                                        <span>Call Duration : 4:30</span><br>

                                    </div>
                                    <div class="form-group"><span>Call Feedback</span>
                                        <select onchange="loadFeedbackPopup()" class="select2_demo form-control" id="callFeedback" name="callFeedback" required="required">
                                            <option value="">Select</option>
                                            <option value="schedule">Schedule An Appointment</option>
                                            <option value="follow-up">Follow-Up</option>
                                            <option value="do-not-call">Do Not Call</option>
                                        </select>
                                    </div>
                                    <div class="form-group"><span>Additional Note</span>
                                        <g:textArea class="form-control" name="additionalNote">

                                        </g:textArea>
                                        <g:if test="${currentUser}">
                                            <g:hiddenField name="userId" value="${currentUser.id}"/>
                                            <g:hiddenField name="queryId" value="${currentQuery.id}"/>
                                            <g:hiddenField name="queryIndex" value="${queryIndex}"/>
                                        </g:if>
                                    </div>
                                    <div>
                                        <button %{--onclick="saveCallFeedback('${currentUser.id}', '${currentQuery.id}')"--}% class="btn btn-sm btn-primary pull-right m-t-n-xs" type="submit">
                                            <strong>Submit</strong>
                                        </button>
                                    </div>
                                </g:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <g:render template="feedbackPopUp"/>
            <div id="past-donation-form-div"></div>
        </div>
    </div>
</div>

</body>

</html>
