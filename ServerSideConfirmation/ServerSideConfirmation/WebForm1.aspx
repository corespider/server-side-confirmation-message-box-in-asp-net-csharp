<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ServerSideConfirmation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type = "text/javascript">
         function ConfirmBox() {
            var confirmval = document.createElement("input");
             confirmval.type = "hidden";
             confirmval.name = "confirmval";
            if (confirm("Do you want to save data?")) {
                confirmval.value = "Yes";
            } else {
                confirmval.value = "No";
            }
             document.forms[0].appendChild(confirmval);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="vertical-align:central;">
             <asp:Button ID="btnConfirm" runat="server" Text="Confirm Box" OnClientClick="ConfirmBox()" OnClick="btnConfirm_Click"/>
        </div>
    </form>
</body>
</html>
