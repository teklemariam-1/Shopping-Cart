"use strict"

$(function () {
    $('#address').change(function () {
        alert("event started")
        //  var file='resources/Address/' + $('#address').val();
        var file = $('#address').val();
        alert(file)

        $.ajax({
            'url': file,
            'type': 'GET',
            'success': ajaxSuccess,
            'error': ajaxFailure
        });
    });
});

function ajaxSuccess(data) {
    alert("sucess")
    $('output').val(data);
}

function ajaxFailure(xhr, status, exception) {

    alert("NO sucess")
    console.log(xhr, status, exception);
}


