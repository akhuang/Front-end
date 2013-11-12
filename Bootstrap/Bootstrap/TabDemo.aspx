﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TabDemo.aspx.cs" Inherits="Bootstrap.TabDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
    <script src="assets/js/jquery.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap-tab.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <ul id="myTab" class="nav nav-tabs">
            <li><a href="#home" data-toggle="tab">Home</a></li>
            <li><a href="#profile" data-toggle="tab">Profile</a></li>
            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown
                <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="#dropdown1" data-toggle="tab">@fat</a></li>
                    <li><a href="#dropdown2" data-toggle="tab">@mdo</a></li>
                </ul>
            </li>
        </ul>
        <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="home">
                <p>
                    Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown
                    aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles
                    vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby
                    sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia
                    cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate
                    nisi qui.</p>
            </div>
            <div class="tab-pane fade" id="profile">
                <p>
                    Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee
                    squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes
                    anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress,
                    commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR.
                    Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica
                    VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio
                    cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry
                    richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui
                    sapiente accusamus tattooed echo park.</p>
            </div>
            <div class="tab-pane fade" id="dropdown1">
                <p>
                    Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's
                    organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify
                    pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy
                    hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred
                    pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel
                    fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of
                    them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray
                    yr.</p>
            </div>
            <div class="tab-pane fade" id="dropdown2">
                <p>
                    Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they
                    sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny
                    pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin.
                    Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS
                    viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh
                    craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
            </div>
        </div>
    </div>
    </form>
</body>
</html>