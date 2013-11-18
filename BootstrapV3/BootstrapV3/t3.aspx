<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="t3.aspx.cs" Inherits="BootstrapV3.t3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="Scripts/core.js" type="text/javascript"></script>
</head>
<body>
    <h3>
        t3.aspx</h3>
    <form id="form1" runat="server">
    <div>
        <a href="javascript:void(0);" id="btnCancel">cancel</a>
    </div>
    </form>
    <script type="text/javascript">
        $(function () {
            $("#btnCancel").click(function () {
                var data = { name: "p" };
                $.CloseDialog(data);
            });
        });
    </script>
</body>
</html>
