<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fluid.aspx.cs" Inherits="Bootstrap.Default" %>

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
                        <li><a href="#">link</a></li>
                        <li><a href="#">link</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span3">
                <div class="well sidebar-nav">
                    <ul class="nav nav-list">
                        <li class="nav-header">Sidebar</li>
                        <li class="active"><a>index</a></li>
                        <li><a>link</a></li>
                        <li><a>link</a></li>
                        <li><a>link</a></li>
                        <li><a>link</a></li>
                    </ul>
                </div>
            </div>
            <div class="span9">
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
            </div>
        </div>
        <hr />
        <footer>
         <p> © company 2012</p>
        </footer>
    </div>
    </form>
    <script src="assets/js/jquery.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap-collapse.js" type="text/javascript"></script>
</body>
</html>
