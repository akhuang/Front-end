<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="t1.aspx.cs" Inherits="BootstrapV3.t1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/themes/base/jquery.ui.all.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;</button>
                    <h4 class="modal-title" id="H1">Modal title</h4>
                </div>
                <div class="modal-body">
                    t1.aspx

                    <button class="btn" id="btnTest">Close</button>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        Close</button>
                    <button type="button" class="btn btn-primary">
                        Save changes</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>

        <script type="text/javascript">

            $(function () {
                $("#btnTest").click(function (e) {
                    e.preventDefault();
                    var data = { name: 'phoenix' }

                    $("#txtTmp").val("KJKJKJ");
                    $("#divTest").modal("hide");
                });

            });
        </script>
    </form>
</body>
</html>
