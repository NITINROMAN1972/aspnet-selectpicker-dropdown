
// select2 dropdowns
$(document).ready(function () {

    // Initialize select2 dropdowns
    $('#ddSelect').select2({
        placeholder: 'Select here.....',
        Page_Validators: ''
    });
    $('#ddSelect').on('select2:select', function (e) {
        __doPostBack('<%= ddSelect.ClientID %>', '');
    });
});