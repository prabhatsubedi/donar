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
            $('#donor-detail').html(data);
            //$('#donar-contact-info').modal();
        },
        error:function (XMLHttpRequest, textStatus, errorThrown) {
            alert("Error!")
        },
        complete:function (XMLHttpRequest, textStatus) {
            //$('#error-message').hide();
        }
    });
}

