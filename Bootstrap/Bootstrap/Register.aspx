<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Bootstrap.Register" %>

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
    <div class="container">
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
        <form id="form1" runat="server" class="well form-horizontal">
        <fieldset>
            <legend>Register</legend>
            <div class="control-group">
                <label class="control-label">
                    Account Name:</label>
                <div class="controls">
                    <input type="text" /></div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    Password:</label>
                <div class="controls">
                    <input type="password" /></div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    Retype Password:</label>
                <div class="controls">
                    <input type="password" /></div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    Email:</label>
                <div class="controls">
                    <input type="text" />
                </div>
            </div>
            <div class="form-actions">
                <input type="button" class="btn btn-primary" value="Register" />
                <a class="btn">Cancel</a>
            </div>
        </fieldset>
        </form>
        <hr />
        <footer>
          © company 2012
        </footer>
    </div>
    <script src="assets/js/jquery.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap-collapse.js" type="text/javascript"></script>
</body>
</html>
