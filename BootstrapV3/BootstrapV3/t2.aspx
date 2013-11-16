<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="t2.aspx.cs" Inherits="BootstrapV3.t2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        t2.aspx
        <input type="button" id="btnTest" value="Test" />
    </div>
    </form>
    <script src="Scripts/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
    <script src="Scripts/core.js" type="text/javascript"></script>
    <script type="text/javascript">
        function GenerateHttpUrl(url) {
            if (url.charAt(0) != "/")
                url = "/" + url;
            if (window.top.absolutePath == "/")
                window.top.absolutePath = "";

            return window.top.absolutePath + url;
        }

        $(function () {
            $("#btnTest").click(function () {
                //                debugger;
                $.ShowDialog(GenerateHttpUrl("webform1.aspx"), "test", "{ width:500, height:500}", function () {
                    console.log("btnTest callback");
                });


            });
        });

        function ShowDialog(options) {
            window.dialogList = window.dialogList || [];
            var $dialog = $('<div></div>')
            .html('<iframe style="border: 0px; " frameborder=0 src="' + options.href + '" width="100%" height="100%"></iframe>')
            .dialog({
                autoOpen: false,
                modal: true,
                height: options.height,
                width: options.width,
                title: options.title,
                close: function () {
                    var dialog = window.dialogList.pop();
                    if (options.close)
                        options.close.call();
                    setTimeout(function () {
                        dialog.find("iframe").attr("src", "");
                        dialog.remove();
                    }, 1);
                }
            });
            //            window.dialogList.push($dialog);
            $dialog.dialog('open');
        }
    </script>
</body>
</html>
