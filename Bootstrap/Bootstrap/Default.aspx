<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Bootstrap.Default" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body
        {
            padding-top: 60px;
            padding-bottom: 40px;
        }
    </style>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
    <%--  <link href="assets/css/docs.css" rel="stylesheet" type="text/css" />--%>
</head>
<body>
    <form id="form1" runat="server">
    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span
                    class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </a><a class="brand" href="#">Project Name</a>
                <div class="nav-collapse">
                    <ul class="nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="Register.aspx">Register</a></li>
                        <li><a href="#">link</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="hero-unit">
            <h1>
                Hello world</h1>
            <p>
                This is a template for a simple marketing or informational website. It includes
                a large callout called the hero unit and three supporting pieces of content. Use
                it as a starting point to create something more unique.</p>
            <p>
                <a class="btn btn-primary btn-large">Learn more &raquo;</a>
            </p>
        </div>
        <div class="row">
            <div class="span4">
                <h2>
                    Heading</h2>
                <p>
                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus
                    commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
                    Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
                </p>
                <p>
                    <a class="btn">View Detail</a>
                </p>
            </div>
            <div class="span4">
                <h2>
                    Heading</h2>
                <p>
                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus
                    commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
                    Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
                </p>
                <p>
                    <a class="btn">View Detail</a>
                </p>
            </div>
            <div class="span4">
                <h2>
                    Heading</h2>
                <p>
                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus
                    commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
                    Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
                </p>
                <p>
                    <a class="btn">View Detail</a>
                </p>
            </div>
        </div>
        <hr />
        <footer>
          © company 2012
        </footer>
    </div>
    <script type="text/javascript">
        function GetValue() {
            var xmlHttp = GetHttpObject();
            var newUrl = "PostData.aspx";
            xmlHttp.open("GET", newUrl, true);
            xmlHttp.onreadystatechange = function () {
                if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                    if (xmlHttp.responseText == "-1")
                        alert("kd");
                    else {
                        //                        xmlHttp.
                        //                        location.href = "ImportItem.aspx";
                    }
                }
            };
            xmlHttp.send(null);
            return false;
        }
        function GetRandomValue() {
            return Math.random() * Math.random() * 10000000;
        }
        function GetHttpObject() {
            if (typeof XMLHttpRequest != 'undefined') return new XMLHttpRequest();
            try { return new ActiveXObject("Msxml2.XMLHTTP"); }
            catch (e) { try { return new ActiveXObject("Microsoft.XMLHTTP"); } catch (e) { } }
        }
    </script>
    </form>
    <script src="assets/js/jquery.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap-collapse.js" type="text/javascript"></script>
</body>
</html>
