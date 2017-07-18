/**
 * Created by prabhat on 7/13/17.
 */
function viewDonarDetails(id){
    var parameters = {'id':id}
    jQuery.ajax({
        type:'POST',
        data: parameters,
        url:donarInfo_URL,
        success:function (data, textStatus) {
            $('#donar-contact-info-div').html(data);
            $('#donar-contact-info').modal();
        },
        error:function (XMLHttpRequest, textStatus, errorThrown) {
            alert("Error!")
        },
        complete:function (XMLHttpRequest, textStatus) {
            //$('#error-message').hide();
        }
    });
}
function showPastDonation(id){
    $('#donar-contact-info').modal('toggle');
    var parameters = {'id':id}
    jQuery.ajax({
        type:'POST',
        data: parameters,
        url:pastDonation_URL,
        success:function (data, textStatus) {
            $('#past-donation-form-div').html(data);
            $('#past-donation-form').modal();

        },
        error:function (XMLHttpRequest, textStatus, errorThrown) {
            alert("Error!")
        },
        complete:function (XMLHttpRequest, textStatus) {
            //$('#error-message').hide();
        }
    });
}
