<div id="past-donation-form" class="modal" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title">Past Donations of ${user.fullName} (${user.id})</h4>
            </div>
            <div class="modal-body">
                <div class="table-responsive">
                    <table id="blood-product-table" class="table table-striped">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Donation Type</th>
                            <th>Location</th>
                            <th>Points Earned</th>
                        </tr>
                        </thead>
                        <tbody id="blood-product-rbc">
                        <g:each in="${pastDonationList}" var="row" status="i">
                            <tr>
                                <td>${i+1}</td>
                                <td>${row.location}</td>
                                <td>${row.donationType}</td>
                                <td>${row.earnedPoint}</td>
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
