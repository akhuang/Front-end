<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="Bootstrap.Calendar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="assets/js/jquery.js" type="text/javascript"></script>
    <link href="assets/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
    <script src="assets/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
    <script src="assets/fullcalendar/gcal.js" type="text/javascript"></script>
    <script src="assets/jquery-ui-1.8.18.custom/js/jquery-ui-1.8.18.custom.min.js" type="text/javascript"></script>
    <link href="assets/jquery-ui-1.8.18.custom/css/flick/jquery-ui-1.8.18.custom.css"
        rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div id="calendar">
    </div>
    <div style="display: none">
        <div id="dialog">
            <p>
                Dialog content goes here.</p>
        </div>
    </div>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            //fullCalendar,注意大小写
            $("#calendar").fullCalendar({
                theme: true,
                eventSources: ['https://www.google.com/calendar/feeds/huangfeng050%40gmail.com/public/basic'],
                events: [
                    {
                        title: 'My Event',
                        start: '2012-04-01',
                        url: 'http://google.com'
                    },
                    {
                        title: 'tt',
                        start: '2012-04-02',
                        end: '2012-04-10',
                        url: '',
                        allDay: true
                    }
                ],
                currentTimezone: 'Asia/shanghai',
                header: {
                    left: 'prev next today',
                    center: 'title  agendaDay,agendaWeek,month,basicWeek',
                    right: ''
                },
                firstDay: '0', //0 is sunday
                //                isRTL: true
                weekends: true,
                weekMode: 'fixed',
                height: 400,
                //对day,week有效
                //                contentHeight: 130,
                aspectRatio: 100,
                //每次改变日期时调用，如：Month-->Week
                //                viewDisplay: function (view) {
                //                    alert("the new title of the view is " + view.title);
                //                }
                //Calendar resize
                windowResize: function (view) {
                    alert("The calendar has adjusted to a window resize.");
                },
                //                height: 300,
                //                defaultView: 'agendaDay',
                allDaySlot: true,
                allDayText: '全天', //default:'all-day
                axisFormat: 'HH:mm tt',
                //                slotMinutes: 21, //每个间隔相差的时间
                dayClick: function (date, allDay, jsEvent, view) {
                    //                    if (allDay) {
                    //                        alert('Clicked on the entire day:' + date);
                    //                    } else {
                    //                        alert('Clicked on the slot:' + date);
                    //                    }

                    //                    alert('Coordidates:' + jsEvent.pageX + ',' + jsEvent.pageY);

                    //                    alert('Current view:' + view.name);

                    $("#dialog").dialog();

                    //                    $(this).css('background-color', 'red');

                },
                //                eventMouseover: function (event, jsEvent, view) {
                //                    alert('eventMouseover');
                //                },
                //                eventMouseout: function (event, jsEvent, view) {
                //                    alert('eventMouseout');
                //                },
                selectable: true,
                selectHelper: true,
                select: function (startDate, endDate, allDay, jsEvent, view) {
                    alert(startDate + ',' + endDate);
                },
                loading: function (isloading, view) {

                }
            });
            //            $("#calendar").fullCalendar('destroy');
            //change view
            //            $("#calendar").fullCalendar("changeView", "agendaDay");
            firstHour: 3
        });

        //下面无效，何解?
        $('#calendar').fullCalendar('select', '2012-4-11', '2012-4-20', false);
    </script>
</body>
</html>
