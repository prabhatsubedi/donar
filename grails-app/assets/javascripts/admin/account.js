/**
 * Created by prabhat on 7/13/17.
 */
function viewAccountDetails(id){
    var parameters = {'id':id}
    jQuery.ajax({
        type:'POST',
        data: parameters,
        url:accountInfo_URL,
        success:function (data, textStatus) {
            $('#account-info-div').html(data);
            $('#account-info').modal();
        },
        error:function (XMLHttpRequest, textStatus, errorThrown) {
            alert("Error!")
        },
        complete:function (XMLHttpRequest, textStatus) {
            //$('#error-message').hide();
        }
    });
}

/*function createAccount(){
    $('#account-create').modal();
    /!*var parameters = {'id':id}
    jQuery.ajax({
        type:'POST',
        data: parameters,
        url:accountInfo_URL,
        success:function (data, textStatus) {
            $('#account-info-div').html(data);
            $('#account-info').modal();
        },
        error:function (XMLHttpRequest, textStatus, errorThrown) {
            alert("Error!")
        },
        complete:function (XMLHttpRequest, textStatus) {
            //$('#error-message').hide();
        }
    });*!/
}*/
