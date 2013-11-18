<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="d1.aspx.cs" Inherits="BootstrapV3.d1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/themes/base/jquery.ui.all.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <iframe src="t2.aspx"></iframe>
    </div>
    </form>
    <script src="Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.10.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        var dialogProxy = null;
        window.DialogSessions = new Array();
        var absolutePath = '<%=HttpContext.Current.Request.ApplicationPath %>';
        function GenerateHttpUrl(url) {
            if (url.charAt(0) != "/")
                url = "/" + url;
            if (absolutePath == "/")
                absolutePath = "";

            return absolutePath + url;
        }
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
            window.dialogList.push($dialog);
            $dialog.dialog('open');
        }
        function ResizeDialog(options) {
            window.dialogList = window.dialogList || [];
            if (window.dialogList.length > 0) {
                var dialogobj = window.dialogList[window.dialogList.length - 1];
                if (dialogobj) {
                    dialogobj.dialog("option", options);
                }
            }
        }
        function CloseDialog(removeObj) {
            window.dialogList = window.dialogList || [];
            if (window.dialogList.length > 0) {
                var dialog = window.dialogList[window.dialogList.length - 1];
                dialog.dialog("close");
            }
        }
    </script>
</body>
</html>
