<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BootstrapV3._default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.10.3.js" type="text/javascript"></script>
    <script src="Scripts/core.js" type="text/javascript"></script>
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
            //            window.dialogList = window.dialogList || [];
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
</head>
<frameset id="TopFrame" border="0" rows="75,8,*" framespacing="0" frameborder="0"
    maginheight="0">
        <frame id="frHeaderTop" frameSpacing="0" margheight="0" class="Noprint" name="header" src="top.aspx" scrolling="no" noresize frameborder="0" />
	      <frame id="Frame1" frameSpacing="0" margheight="0" class="Noprint" name="header" src="nav-split.aspx" scrolling="no" noresize frameborder="0" />
		<frame  frameSpacing="0" margheight="0" id="main" name="main" width="1000" src="t2.aspx" frameborder="0" noresize="noresize" scrolling="auto" />
</frameset>
<noframes>
    <body>
        您的浏览器不支持框架！
    </body>
</noframes>
</html>
