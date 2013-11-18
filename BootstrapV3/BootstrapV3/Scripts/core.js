(function ($) {

    $.ShowDialog = function (url, title, options, callbackName, isInFrame) {
        isInFrame = isInFrame || true;
        var $options = { type: "iframe" };
        $options = $.extend($options, options)
        if (title != "_blank") {
            $options.title = title;
        }
        $options.href = url;
        if (callbackName != null && typeof (callbackName) === "object") {
            var callbacktrigger = callbackName.trigger;
            callbackName = callbackName.name;
            if (callbackName != "" && callbackName != null) {
                var session = { callback: { "name": callbackName, "trigger": callbacktrigger }, "iscallback": false }
                $._DialogSessionCallBack(session, true);
                //$options.onCallBack =$._DialogSessionCallBack;
                $options.close = CloseDialogCallbackProxy
            }
        }
        else {
            if (callbackName != "" && callbackName != null) {
                var session = { callback: { "name": callbackName }, "iscallback": false }
                $._DialogSessionCallBack(session, true);
                //$options.onCallBack =$._DialogSessionCallBack;
                $options.close = CloseDialogCallbackProxy
            }
        }

        window.top.ShowDialog($options);
    };

    //session format : { "paras": data, iscallback: true }
    $.SetDialogSession = function (session, isInFrame) {
        isInFrame = isInFrame || true;
        $._DialogSessionCallBack(session)
    };

    $.CloseDialog = function (data, isinternal) {
        if (data != null) {
            $.SetDialogSession({ "paras": data, iscallback: true }, isinternal);
        }
        var $isinternal = isinternal || true;
        window.top.CloseDialog();
    };

    $._DialogSessionCallBack = function (session, isinitfg) {
        var $session = {};
        if (isinitfg == null || isinitfg == false) {
            window.top.DialogSessions = window.top.DialogSessions || [];
            if (window.top.DialogSessions.length > 0) {
                $session = window.top.DialogSessions.pop();
            }
        }
        var $orignalparas = $session.paras || {};
        var $newparas = session.paras || {};
        $newparas = $.extend($orignalparas, $newparas);
        var $iscallback = session.iscallback == null ? true : session.iscallback;
        $session = $.extend($session, session, { "paras": $newparas, "iscallback": $iscallback });
        //$("body").data("DialogSession", $session);
        top.window.DialogSessions = window.top.DialogSessions || [];
        top.window.DialogSessions.push($session);
    };

    //session format : { "paras": data, iscallback: true }
    $.SetDialogSession = function (session, isInFrame) {
        isInFrame = isInFrame || true;
        $._DialogSessionCallBack(session)
        //       if (isInFrame) {
        //            parent.;
        //       }
        //       else{
        //            $._DialogSessionCallBack(session);
        //       }
    };


    //callback proxy function
    function CallbackProxy(callback, data, target) {
        if (callback != null && callback != undefined && callback != "") {
            var $callback = callback
            if (!$.isFunction($callback)) $callback = eval('(' + callback + ')');
            if (target == null)
                $callback(data);
            else
                $callback.call(target, data);
            return false;
        }
    }

    function CloseDialogCallbackProxy() {
        var $session = {};
        window.top.DialogSessions = window.top.DialogSessions || [];
        if (window.top.DialogSessions.length > 0) {
            $session = window.top.DialogSessions.pop();
        }
        if ($session == null) return;
        var $callback = $session.callback;
        if ($callback != null && $session.iscallback == true) {
            if ($callback.trigger == null) {
                CallbackProxy($callback.name, $session.paras);
            }
            else {
                if (typeof $callback.trigger == "string")
                    CallbackProxy($callback.name, $session.paras, $("#" + $callback.trigger));
                else
                    CallbackProxy($callback.name, $session.paras, $callback.trigger);
            }
        }
        //$.ClearDialogSession();
    }

})(jQuery);