/* Add here all your JS customizations */
function toasterMessage(type, message) {
    $('.notifyjs-corner').empty();
    if (type == 'success') {
        var title = '';
        var icon = SITE_URL + "assets/backend/img/alert-icons/alert-checked.svg";
    }
    if (type == 'info') {
        // var title = 'Info';
        var title = '';
        var icon = SITE_URL + "assets/backend/img/alert-icons/alert-checked.svg";
    }
    if (type == 'warning') {
        var title = '';
        var icon = SITE_URL + "assets/backend/img/alert-icons/alert-danger.svg";
    }
    if (type == 'error') {
        var title = '';
        var icon = SITE_URL + "assets/backend/img/alert-icons/alert-disabled.svg";
    }
    if (type == 'error')
        type = "danger";
    $.notify({
        icon: icon,
        title: "<strong>" + title + "</strong> ",
        message: message
    }, {
        icon_type: 'image',
        type: type,
        allow_duplicates: false
    });
}

function check_user_email(email) {
    $.post('http://localhost:8080/projects/myketo/check-user-email',
            {email: email},
            function (data, status) {
                if (status === 'success') {
                    if (data == '1') {
                        return 1;
                    } else {
                        return 0;
                    }
                } else {
                    return false;
                }

            });

}