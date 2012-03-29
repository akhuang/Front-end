<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="Bootstrap.Calendar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="assets/js/jquery.js" type="text/javascript"></script>
    <link href="assets/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
    <script src="assets/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
    <script src="assets/fullcalendar/gcal.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="calendar">
    </div>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            //fullCalendar,注意大小写
            $("#calendar").fullCalendar({
                events: 'https://www.google.com/calendar/feeds/huangfeng050%40gmail.com/public/basic',
                currentTimezone: 'Asia/Hong_Kong',
                header: {
                    left: 'today',
                    center: 'prev,title,next  agendaDay,agendaWeek,month',
                    right: ''
                },
                firstDay: '1',
                //                isRTL: true
                weekends: false,
                weekMode: 'fixed',
                height: 300

            });
        });
    </script>
</body>
</html>
