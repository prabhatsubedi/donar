<div id="schedule-modal" class="modal" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title">Schedules</h4>
                %{--<h4 class="modal-title">Start Time: </h4>
                <h4 class="modal-title">End Time: </h4>
                <h4 class="modal-title">Date: </h4>--}%
            </div>
            <div class="modal-body">
                <div class="table-responsive">
                    <table id="blood-product-table" class="table table-striped">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Time Slot</th>
                            <th>Donor Name</th>
                            <th>Age</th>
                            <th>Blood Type</th>
                            <th>CMV Status</th>
                        </tr>
                        </thead>
                        <tbody id="blood-product-rbc">
                        <g:each in="${scheduleData}" var="row" status="i">
                            <tr>
                                <td>${i+1}</td>
                                <td>${row.startTime}</td>
                                <td>${row.user.fullName}</td>
                                <%
                                    Calendar cal = Calendar.getInstance()
                                    Integer currentYear = cal.get(Calendar.YEAR)
                                    Integer birthYear = 0;
                                    String age = "N/A"
                                    if(row.user.birthDate){
                                        cal.setTime(row.user.birthDate)
                                        birthYear = cal.get(Calendar.YEAR);
                                        age = String.valueOf(currentYear - birthYear);
                                    }

                                %>
                                <td>${age}</td>
                                <td>${row.user.bloodType}</td>
                                <td>Negative</td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
            </div>
            %{-- <div class="modal-footer">
                 <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
             </div>--}%
        </div>
    </div>
</div>
