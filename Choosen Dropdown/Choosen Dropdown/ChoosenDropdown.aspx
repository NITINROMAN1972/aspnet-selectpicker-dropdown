<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChoosenDropdown.aspx.cs" Inherits="Choosen_Dropdown_ChoosenDropdown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Choosen Dropdown</title>

    <!--Bootstrap CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!--Bootstrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <!--jQuery-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!--AJAX JS-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <!--Select2 library CSS-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />
    <!--Select2 library JS-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>

    <!--Selectpicker documentation https://developer.snapappointments.com/bootstrap-select/ -->
    <!--Bootstrap Selectpicker CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css" />

    <script src="select2.js"></script>
    <script src="selectPickerJS.js"></script>
    <link rel="stylesheet" type="text/css" href="selectPickerCSS.css" />

</head>
<body>
    <form id="form1" runat="server">

       <div class="mt-5 col-md-4 mx-auto bg-light border border-secondary-subtle shadow ">
           <!-- disabled, multiple data-actions-box="true", data-header="Select a header" -->
           <asp:DropDownList id="ddselect" runat="server" class="selectpicker select-search-custom" data-live-search="true" data-size="5" data-width="100%"  
                OnSelectedIndexChanged="ddselect_SelectedIndexChanged" AutoPostBack="true" >
           </asp:DropDownList>
       </div>
        
    </form>

    
    <!--jQuery Porpper JS-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <!--Bootstrap Selectpicker JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
</body>
</html>
