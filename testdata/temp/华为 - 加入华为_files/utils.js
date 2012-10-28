var StatusNG = 0;
var StatusUP = 1;
var StatusOK = 2;

var IdxBrowser = 0; 
var IdxZone	   = 1;
var IdxJs      = 2;
var IdxCookie  = 3;
var IdxPopup   = 4;
var IdxFlash   = 5;
var IdxJre     = 6;
var IdxBrowserVer = 0;
var IETips = new Array(
		 ''
		 ,'<span>您使用的是<font color="red"><b>&nbsp;IE6&nbsp;</b></font>,如果有检测项没通过，请参考下面<font color="red"><b>&nbsp;IE6&nbsp;</b></font>的说明部分</span>'
		  ,'<span>您使用的是<font color="red"><b>&nbsp;IE7或更高&nbsp;</b></font>,如果有检测项没通过，请参考下面<font color="red"><b>&nbsp;IE7或更高&nbsp;</b></font>的说明部分</span>'

)

function showEachClientCheckResult() {
	var browser_check = document.getElementById("browser_check");
var trustsite_check = document.getElementById("trustsite_check");
var js_check = document.getElementById("js_check");
var cookie_check = document.getElementById("cookie_check");
var popup_check = document.getElementById("popup_check");
var flash_check = document.getElementById("flash_check");
var jre_check = document.getElementById("jre_check");
	alert("系统在检查可信任站点时要运行ActiveX控件,可能弹出对话框问您是否允许ActiveX控件与页面进行交互,请点击\"确定\"按钮,否则无法检查该项。");
    browser_check.innerHTML = Msg[IdxBrowser][getBrowserStatus()];
    trustsite_check.innerHTML= Msg[IdxZone][getTrustWebsiteStatus()];    
    js_check.innerHTML      = Msg[IdxJs][StatusOK];
    cookie_check.innerHTML  = Msg[IdxCookie][getCookieStatus()];
    popup_check.innerHTML   = Msg[IdxPopup][getPopupStatus("pop_check.htm")];
    flash_check.innerHTML   = Msg[IdxFlash][getFlashStatus()];
    jre_check.innerHTML     = Msg[IdxJre][getJreStatus()];
    
    browser_check.innerHTML = browser_check.innerHTML + IETips[IdxBrowserVer]; //Added Tips
}

function showOverallClientCheckResult(inMsg) {
    if (getBrowserStatus() < StatusOK
     || getCookieStatus()  < StatusOK
     || getPopupStatus("pop_check.htm") < StatusOK
     || getFlashStatus()   < StatusOK
     || getJreStatus()     < StatusOK
    ) {
        client_check_link.innerHTML = inMsg;
        client_check_td_above.height = 20;
        client_check_td_below.height = 20;
    }
}

function getBrowserStatus() {
    var status = StatusNG;
    if (!checkBrowserName(" MSIE ") || !checkBrowserName("MSIE ") || !checkBrowserName("MSIE")) {
        status = StatusNG;
    } else {
        status = StatusOK;
    }
    return status;
}

function checkBrowserName(name) {
    var verStr = navigator.appVersion;
    var verNo = 0;
    var result = false;
    if (verStr.indexOf(name) != -1) {
        tempStr = verStr.split(name);
        verNo = parseFloat(tempStr[1]);
        if (verNo == 6) {
            IdxBrowserVer = 1;
            result = true;
        }else if (verNo >= 7) {
      			IdxBrowserVer = 2;
      			result = true;
      	}
    }
    return result;
}

function getCookieStatus() {
    var status = StatusNG;
    var cookieStr = "webcookie_check=cookie_ok";
    document.cookie = cookieStr;
    if (document.cookie.indexOf(cookieStr) > -1) {
        status = StatusOK;
        var date = new Date();
        date.setTime(date.getTime() - 1000);
        document.cookie = cookieStr + "; expires=" + date.toGMTString();
    }
    return status;
}

function getPopupStatus(winUrl) {
    var status = StatusNG;
    var str_feature = 'toolbar=no'
    + ',menubar=no'
    + ',scrollbars=no'
    + ',resizable=no'
    + ',status=no'
    + ',width=1'
    + ',height=1'
    + ',top=0'
    + ',left=0'
    + ',screenX=0'
    + ',screenY=0';
    var popup_win = window.open(winUrl, "browser_check", str_feature);
    if (popup_win) {
        status = StatusOK;
    }
    return status;
}

function getFlashStatus() {
    var MinVer = 8;
    var status = StatusNG;
    if (navigator.plugins && navigator.plugins.length && navigator.plugins.length > 0) {
        var flashObj = navigator.plugins["Shockwave Flash"];
        if (flashObj && flashObj.length && flashObj.length > 0) {
            var flashMimeObj = flashObj["application/x-shockwave-flash"];
            if (flashMimeObj) {
                var tempStr = flashObj.description.split(" Flash ");
                var verNo = parseFloat(tempStr[1]);
                if (verNo >= MinVer) {
                    status = StatusOK;
                } else {
                    status = StatusUP;
                }
            }
        }
    }
    if (status == StatusNG) {
        for (var i = MinVer; i > 0; i--) {
            try {
                var flashObj = new ActiveXObject("ShockwaveFlash.ShockwaveFlash." + i);
                if (i == MinVer) {
                    status = StatusOK;
                } else {
                    status = StatusUP;
                }
                break;
            } catch(e) {
                status = StatusNG;
            }
        }
    }
    return status;
}

function getJreStatus() {
    var status = StatusNG;
    try {
        status = JRECheck.getStatus();
    } catch(e) {
        status = StatusNG;
    }
    return status;
}

//检查信任站点
function getTrustWebsiteStatus()
{
	var status = StatusNG; //StatusNG  StatusUP
	try{
		var WshShell=new ActiveXObject("WScript.Shell");
		status = StatusOK;
	}
	catch(e){
		status = StatusNG;
		//status = StatusUP;
	}
	return status;
}
