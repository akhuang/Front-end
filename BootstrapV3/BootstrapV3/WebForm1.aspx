<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BootstrapV3.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Content/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="stack1" class="modal fade" tabindex="-1" data-focus-on="input:first" style="display: none;">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                ×</button>
            <h4 class="modal-title">
                Stack One</h4>
        </div>
        <div class="modal-body">
            <p>
                One fine body…</p>
            <p>
                One fine body…</p>
            <p>
                One fine body…</p>
            <input class="form-control" type="text" data-tabindex="1">
            <input class="form-control" type="text" data-tabindex="2">
            <button class="btn btn-default" data-toggle="modal" href="#stack2">
                Launch modal</button>
        </div>
        <div class="modal-footer">
            <button type="button" data-dismiss="modal" class="btn btn-default">
                Close</button>
            <button type="button" class="btn btn-primary">
                Ok</button>
        </div>
    </div>
    <!-- Button trigger modal -->
    <button class="btn btn-primary btn-lg" data-toggle="modal" id="btnLauch" data-target="#myModal">
        Launch demo modal
    </button>
    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;</button>
                    <h4 class="modal-title" id="myModalLabel">
                        Modal title</h4>
                </div>
                <div class="modal-body">
                    ...
                    <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal1">
                        Launch demo modal 1
                    </button>
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
        <!-- /.modal-dialog -->
    </div>
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;</button>
                    <h4 class="modal-title" id="H1">
                        Modal title</h4>
                </div>
                <div class="modal-body">
                    ...
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
        <!-- /.modal-dialog -->
    </div>
    </form>
    <script type="text/javascript">
        $(function () {
            $('#myModal').on('show.bs.modal', function () {
                // do something…
                console.log("init");
            });

            $('#myModal').on('hidden.bs.modal', function () {
                // do something…
                console.log("hidden");
            });

            $('#myModal').on('hide.bs.modal', function () {
                // do something…
                console.log("hide");
            });
        });
      
    </script>
</body>
</html>
