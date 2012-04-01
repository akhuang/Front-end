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
                    left: 'today',
                    center: 'prev,title,next  agendaDay,agendaWeek,month',
                    right: ''
                },
                firstDay: '1',
                //                isRTL: true
                weekends: true,
                weekMode: 'fixed',
                //                height: 300,
                //                defaultView: 'agendaDay',
                allDaySlot: true,
                allDayText: '全天', //default:'all-day
                axisFormat: 'HH:mm tt',
                //                slotMinutes: 21, //每个间隔相差的时间
                dayClick: function (date, allDay, jsEvent, view) {
                    if (allDay) {
                        alert('Clicked on the entire day:' + date);
                    } else {
                        alert('Clicked on the slot:' + date);
                    }

                    alert('Coordidates:' + jsEvent.pageX + ',' + jsEvent.pageY);

                    alert('Current view:' + view.name);

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
                }
            });
            //change view
            //            $("#calendar").fullCalendar("changeView", "agendaDay");
        });

        //下面无效，何解?
        $('#calendar').fullCalendar('select', 'april 08 2012', 'april 10 2012', false);
    </script>
</body>
</html>
