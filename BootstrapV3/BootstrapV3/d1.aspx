<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="d1.aspx.cs" Inherits="BootstrapV3.d1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <iframe src="t2.aspx"></iframe>
    </div>
    </form>
    <script src="Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function GenerateHttpUrl(url) {
            if (url.charAt(0) != "/")
                url = "/" + url;
            if (absolutePath == "/")
                absolutePath = "";

            return absolutePath + url;
        }
    </script>
</body>
</html>
