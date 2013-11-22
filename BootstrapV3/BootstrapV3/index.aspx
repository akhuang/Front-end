<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BootstrapV3.index" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Content/style.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        body
        {
            padding-top: 83px;
        }
    </style>
</head>
<body>
    <div id="top_container" class="navbar-fixed-top">
        <div class="container" style="width: 100%; padding: 0px;">
            <div class="navbar-header">
            </div>
            <div class="nav-link">
                <ul class="nav-tabs">
                    <li><a href="Policy/AddPolicy.aspx?op=1" target="main">新增销售</a></li>
                    <li><a href="Policy/PolicyList.aspx" target="main">销售记录</a></li>
                    <li><a href="#">销售统计</a></li>
                    <li><a href="#">我的统计</a></li>
                    <li><a href="#">我的资料</a></li>
                    <li><a href="#">修改密码</a></li>
                </ul>
            </div>
            <div class="login-info">
                <table>
                    <tr>
                        <td>
                            欢迎&nbsp; &nbsp;&nbsp;
                        </td>
                        <td rowspan="2">
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="nav-split">
            <div class="nav-img" id="split-container">
                <a href="#" title="隐藏菜单栏" id="lnkHide">
                    <img src="Content/images/cn_nav_control02.gif" /></a> <a href="#" title="显示菜单栏" id="lnkShow"
                        style="display: none">
                        <img src="Content/images/cn_nav_control01.gif" /></a>
            </div>
        </div>
    </div>
    <!-- /.container -->
    <script src="Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $(".nav-img").click(function () {
                shift_status();
            });
        });
        var flag = false;
        function shift_status() {
            var topContainer = $("#top_container .container");

            if (flag) {
                $("#lnkHide").show();
                $("#lnkShow").hide();
                topContainer.show();
            }
            else {
                $("#lnkHide").hide();
                $("#lnkShow").show();
                topContainer.hide();
            }
            flag = !flag;
        }


    </script>
</body>
</html>
