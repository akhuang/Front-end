<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Typeahead.aspx.cs" Inherits="Bootstrap.Typeahead" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="assets/js/jquery.js" type="text/javascript"></script>
    <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="assets/js/bootstrap-typeahead.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="name" />
        <input id="btn" type="button" value="kkk" />
    </div>
    </form>
    <script type="text/javascript">

        $(function () {
            var labels, mapped;
            $("input").typeahead({
                source: function (query, process) {
                    // Query to server.
                    $.get('Handler1.ashx', { q: query }, function (data) {
                        debugger;
                        labels = [];
                        mapped = {};

                        $.each(data, function (i, item) {
                            mapped[item.label] = { id: item.id, label: item.labelTwo }
                            labels.push(item.label);
                        });

                        process(labels) // Tell typeahead to "process" these results (i.e. render them).
                    });
                }
                // Method fired when a result is selected.
                , updater: function (item) { // Item will be the selected rows text i.e. "Rihanna - Umbrella (Good Girl Gone Bad, 2007)"
                    var selObj = mapped[item];
                    // Do some js here to set the value of your hidden input (selObj.id).
                    return selObj.labelTwo // Put the labelTwo attribute in the typeahead input. 
                }

            });


            $("#btn").click(function () {
                $.get('Handler1.ashx', function (data) {
                    alert(data);
                });

            });
        });
    </script>
</body>
</html>
