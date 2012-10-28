/********************************************* 
*
*  global.js
*
*  requires mootools.js 
*  core and native components
*  http://mootools.net/download
*
*********************************************/

/*********************************************
 image rollovers
*********************************************/

function initRollovers() {
	var images = $A(document.getElementsByTagName('IMG'));
	images.each(function (img) {
		if ($(img).hasClass('roll')) {
			// skip active images
			if (img.src.test('-d.gif$')) return;
			
			var overImg = new Image();
			overImg.src = img.oversrc = img.src.replace(/\.gif$/, '-o.gif');
			img.outsrc = img.src;
			
			img.onmouseover = function() { this.src = this.oversrc; };
			img.onmouseout = function() { this.src = this.outsrc; };
		}
	});
}

window.addEvent('load', initRollovers);



  // this function is need to work around 
  // a bug in IE related to element attributes
  function hasClass(obj) {
     var result = false;
     if (obj.getAttributeNode("class") != null) {
         result = obj.getAttributeNode("class").value;
     }
     return result;
  }   

  function stripeById(id) {

    // the flag we'll use to keep track of 
    // whether the current row is odd or even
    var even = false;

    // if arguments are provided to specify the colours
    // of the even & odd rows, then use the them;
    // otherwise use the following defaults:
    var evenColor = arguments[1] ? arguments[1] : "#fff";
    var oddColor = arguments[2] ? arguments[2] : "#eee";

    // obtain a reference to the desired table
    // if no such table exists, abort
    var table = document.getElementById(id);
    if (! table) { return; }
    
    // by definition, tables can have more than one tbody
    // element, so we'll have to get the list of child
    // &lt;tbody&gt;s 
    var tbodies = table.getElementsByTagName("tbody");

    // and iterate through them...
    for (var h = 0; h < tbodies.length; h++) {
    
     // find all the &lt;tr&gt; elements... 
      var trs = tbodies[h].getElementsByTagName("tr");
      
      // ... and iterate through them
      for (var i = 0; i < trs.length; i++) {

        // avoid rows that have a class attribute
        // or backgroundColor style
        if (!hasClass(trs[i]) && ! trs[i].style.backgroundColor) {

         // get all the cells in this row...
          var tds = trs[i].getElementsByTagName("td");
        
          // and iterate through them...
          for (var j = 0; j < tds.length; j++) {
        
            var mytd = tds[j];

            // avoid cells that have a class attribute
            // or backgroundColor style
            if (! hasClass(mytd) && ! mytd.style.backgroundColor) {
        
              mytd.style.backgroundColor = even ? evenColor : oddColor;
              
            }
          }
        }
        // flip from odd to even, or vice-versa
        even =  ! even;
      }
    }
  }

  function stripeByName(name) {

    // the flag we'll use to keep track of 
    // whether the current row is odd or even
    var even = false;

    // if arguments are provided to specify the colours
    // of the even & odd rows, then use the them;
    // otherwise use the following defaults:
    var evenColor = arguments[1] ? arguments[1] : "#fff";
    var oddColor = arguments[2] ? arguments[2] : "#eee";

    // obtain a reference to the desired table
    // if no such table exists, abort
    var tableElements = document.getElementsByTagName("table");
    
	    for(var m = 0; m < tableElements.length; m++){
		    var table = tableElements.item(m);
		    var even = false;
		    
		    if (! table) 
		    {  

		    }
		    else if(table.className == name)
		    {
			    // by definition, tables can have more than one tbody
			    // element, so we'll have to get the list of child
			    // &lt;tbody&gt;s 
			    var tbodies = table.getElementsByTagName("tbody");

			    // and iterate through them...
			    for (var h = 0; h < tbodies.length; h++) {

			     // find all the &lt;tr&gt; elements... 
			      var trs = tbodies[h].getElementsByTagName("tr");

			      // ... and iterate through them
			      for (var i = 0; i < trs.length; i++) {

				// avoid rows that have a class attribute
				// or backgroundColor style
				if (!hasClass(trs[i]) && ! trs[i].style.backgroundColor) {

				 // get all the cells in this row...
				  var tds = trs[i].getElementsByTagName("td");

				  // and iterate through them...
				  for (var j = 0; j < tds.length; j++) {

				    var mytd = tds[j];

				    // avoid cells that have a class attribute
				    // or backgroundColor style
				    if (! hasClass(mytd) && ! mytd.style.backgroundColor) {

				      mytd.style.backgroundColor = even ? evenColor : oddColor;

				    }
				  }
				}
				// flip from odd to even, or vice-versa
				even =  ! even;
			      }
			    }
		    }
	    }
    
  }
  
  /*********************************************
   table striping
  *********************************************/
  
  function initTableStripe() {
  	stripeByName('data', '#fff', '#efefef');
  }
  
window.addEvent('load', initTableStripe);

document.write('<div id="popupContainer"></div><div id="windowMask"></div>');

var popupBox={
ie7: window.XMLHttpRequest && document.all && !window.opera,
ie7offline: this.ie7 && window.location.href.indexOf("http")==-1, //check for IE7 and offline
scrollbarwidth: 16,

ajaxConnect:function(url, thediv){
var pageBody_request = false
var bustcacheparameter=""
if (window.XMLHttpRequest && !this.ie7offline) // if Mozilla, IE7 online, Safari etc
pageBody_request = new XMLHttpRequest()
else if (window.ActiveXObject){ // if IE6 or below, or IE7 offline (for testing purposes)
try {
pageBody_request = new ActiveXObject("Msxml2.XMLHTTP")
} 
catch (e){
try{
pageBody_request = new ActiveXObject("Microsoft.XMLHTTP")
}
catch (e){}
}
}
else
return false
pageBody_request.onreadystatechange=function(){
popupBox.loadPageBody(pageBody_request, thediv)
}
if (this.ajaxbustcache) //if bust caching of external pageBody
bustcacheparameter=(url.indexOf("?")!=-1)? "&"+new Date().getTime() : "?"+new Date().getTime()
pageBody_request.open('GET', url+bustcacheparameter, true)
pageBody_request.send(null)
},

loadPageBody:function(pageBody_request, thediv){
if (pageBody_request.readyState == 4 && (pageBody_request.status==200 || window.location.href.indexOf("http")==-1)){
document.getElementById("popupContent").innerHTML=pageBody_request.responseText
}
},


insertIframe:function(contentsource){	
	if(typeof(this.containerHeightSpace) != "undefined" && typeof(this.containerWidthSpace) != "undefined")
	{
		var frameHeight = parseInt(this.containerHeight) - this.containerHeightSpace;
		var frameWidth = parseInt(this.containerWidth) - this.containerWidthSpace;
		document.getElementById("popupContent").innerHTML='<iframe src="' + contentsource + '" scrolling="no" frameborder="0" marginheight="0" marginwidth="0" style="margin:0; padding:0; width:' + frameWidth + 'px; height: ' + frameHeight + 'px;"></iframe>';
	}
	else
	{
		document.getElementById("popupContent").innerHTML='<iframe src="' + contentsource + '" scrolling="no" frameborder="0" marginheight="0" marginwidth="0" style="margin:0; padding:0; width:100%; height: 100%"></iframe>';
	}
},
insertImg:function(contentsource){	
	document.getElementById("popupContent").innerHTML='<img id="insertImgPopUp" src="' + contentsource + '" style="margin:0; padding:0;">';
},

createContainer:function(){
	document.getElementById("popupContainer").innerHTML = this.innerWrapperBegin + this.headerCode + '<div id="popupContent"></div>' + this.innerWrapperEnd;
	this.popupContainer=document.getElementById("popupContainer"); //reference popup container
	this.popupContainer.style.height = this.containerHeight + "px";
	this.popupContainer.style.width =  this.containerWidth + "px";
	this.windowMask=document.getElementById("windowMask"); //reference veil
	this.pageBody=(document.compatMode=="CSS1Compat")? document.documentElement : document.body; //create reference to common "body" across doctypes
},


displayBox:function(){
var ie=document.all && !window.opera
var dom=document.getElementById
var scroll_top=(ie)? this.pageBody.scrollTop : window.pageYOffset
var scroll_left=(ie)? this.pageBody.scrollLeft : window.pageXOffset
var docwidth=(ie)? this.pageBody.clientWidth : window.innerWidth-this.scrollbarwidth
var docheight=(ie)? this.pageBody.clientHeight: window.innerHeight
var docheightcomplete=(this.pageBody.offsetHeight>this.pageBody.scrollHeight)? this.pageBody.offsetHeight : this.pageBody.scrollHeight
var objwidth=this.popupContainer.offsetWidth
var objheight=this.popupContainer.offsetHeight
this.windowMask.style.width=docwidth+"px" //set up veil over page
this.windowMask.style.height=docheightcomplete+"px" //set up veil over page
this.windowMask.style.left=0 //Position veil over page
this.windowMask.style.top=0 //Position veil over page
this.windowMask.style.visibility="visible" //Show veil over page
this.popupContainer.style.left=docwidth/2-objwidth/2+"px" //Position interstitial box
var topposition=(docheight>objheight)? scroll_top+docheight/2-objheight/2+"px" : scroll_top+5+"px" //Position interstitial box
this.popupContainer.style.top=Math.floor(parseInt(topposition))+"px"
this.popupContainer.style.visibility="visible" //Show interstitial box
},


closePopUp:function(){
this.windowMask.style.visibility="hidden";
this.popupContainer.style.visibility="hidden";
document.getElementById("popupContainer").innerHTML = "";  //destroy
if (this.disablescrollbars && window.XMLHttpRequest) //if disablescrollbars enabled and modern browsers- IE7, Firefox, Safari, Opera 8+ etc
this.pageBody.style.overflow="auto";
},

getScrollbarWidth:function(){
var scrollbarwidth=window.innerWidth-(this.windowMask.offsetLeft+this.windowMask.offsetWidth)
this.scrollbarwidth=(typeof scrollbarwidth=="number")? scrollbarwidth : this.scrollbarwidth
},

hideScrollbar:function(){
if (this.disablescrollbars){ //if disablescrollbars enabled
if (window.XMLHttpRequest) //if IE7, Firefox, Safari, Opera 8+ etc
this.pageBody.style.overflow="hidden"
else //if IE6 and below, just scroll to top of pageBody to ensure popup is in focus
window.scrollTo(0,0)
}
},

addCustomEvent:function(target, funcref, eventtype){ //assign a function to execute to an event handler (ie: onunload)
var eventtype=(window.addEventListener)? eventtype : "on" + eventtype
if (target.addEventListener)
target.addEventListener(eventtype, funcref, false)
else if (target.attachEvent)
target.attachEvent(eventtype, funcref)
},

initPopUp:function(){
	hideSelectBoxes()
	this.createContainer() //write out popup container
	if(this.contenttype=="ajax")
	{	
		this.ajaxConnect(this.displayurl, this.popupContainer) //load pageBody via ajax
	}
	else if(this.contenttype=="iframe")
	{	
		this.insertIframe(this.displayurl);
	}
	else if(this.contenttype=="img")
	{	
		this.insertImg(this.displayurl);
		this.displayResizedPopUp(this.displayurl);
		this.addCustomEvent(window, function(){if (document.getElementById("popupContent") != null){popupBox.displayBox()}}, "resize")
		return;
	}
popupBox.hideScrollbar(); popupBox.getScrollbarWidth(); 
popupBox.displayBox();
this.addCustomEvent(window, function(){if (document.getElementById("popupContent") != null){popupBox.displayBox()}}, "resize")
},
displayResizedPopUp:function(imgPath){
	myImage = new Image();
	myImage.name = imgPath;
	myImage.onload = function(){
		//alert(document.getElementById("insertImgPopUp").height);
		//alert(document.getElementById("insertImgPopUp").width);
		document.getElementById("popupContainer").style.height = myImage.height + "px";
		document.getElementById("popupContainer").style.width = myImage.width + "px";
		popupBox.hideScrollbar(); popupBox.getScrollbarWidth(); 
		popupBox.displayBox();
	}
	myImage.src = imgPath;
}
}

function showSelectBoxes(){
	var selects = document.getElementsByTagName("select");
	for (i = 0; i != selects.length; i++) {
		selects[i].style.visibility = "visible";
	}
}

// ---------------------------------------------------

function hideSelectBoxes(){
	var selects = document.getElementsByTagName("select");
	for (i = 0; i != selects.length; i++) {
		selects[i].style.visibility = "hidden";
	}
}

function slideShowPopUp(myurl)
{
	popupBox.displayurl = myurl;

	popupBox.containerHeight = 400;
	
	popupBox.containerWidth = 600;
	
	popupBox.innerWrapperBegin ="";
	popupBox.innerWrapperEnd ="";

	//HTML for the header bar portion of the popup box
	popupBox.headerCode = '<div class="popupHeader"><a class="closeLink" href="#" onClick="javascript:popupBox.closePopUp(); return false">X</a></div>';

	//type ajax or iframe
	popupBox.contenttype = 'iframe';

	//bust caching of pageBodys fetched via Ajax?
	popupBox.ajaxbustcache = true;

	//Disable browser scrollbars while popup is shown
	popupBox.disablescrollbars = false;

	popupBox.initPopUp();
}


function mediaPopUp(myurl,width,height)
{
	popupBox.displayurl = myurl;
	
	popupBox.containerHeight = height;
		
	popupBox.containerWidth = width;
	
	popupBox.innerWrapperBegin ="";
	popupBox.innerWrapperEnd ="";

	//HTML for the header bar portion of the popup box
	popupBox.headerCode = '<div class="popupHeader"><a class="closeLink" href="#" onClick="javascript:popupBox.closePopUp(); return false">X</a></div>';

	//type ajax or iframe
	popupBox.contenttype = 'iframe';

	//bust caching of pageBodys fetched via Ajax?
	popupBox.ajaxbustcache = true;

	//Disable browser scrollbars while popup is shown
	popupBox.disablescrollbars = false;

	popupBox.initPopUp();
}


function dynamicPopUp(myurl)
{
	popupRequest(myurl, "", "");
}


function createPopUp(myurl,height,width)
{
	popupBox.displayurl = myurl;
	
	popupBox.containerHeight = height;
		
	popupBox.containerWidth = width;
	
	popupBox.containerWidthSpace = 10;
	popupBox.containerHeightSpace = 10;

	popupBox.innerWrapperBegin ="<div class=\"popupOuterBorder\">";
	popupBox.innerWrapperBegin +="<div class=\"popupInnerBorder\">";
	popupBox.innerWrapperEnd ="</div></div>";
	
	//HTML for the header bar portion of the popup box
	
	popupBox.headerCode = "<div class=\"cornerClose\"><a class=\"cornerCloseLink\" href=\"#\" onclick=\"javascript:popupBox.closePopUp(); return false\"></a></div>";
	
	//type ajax or iframe
	popupBox.contenttype = 'iframe';

	//bust caching of pageBodys fetched via Ajax?
	popupBox.ajaxbustcache = true;

	//Disable browser scrollbars while popup is shown
	popupBox.disablescrollbars = false;

	popupBox.initPopUp();
}


var http_request = false;
function popupRequest(url, parameters, targetid) {
http_request = false;
if (window.XMLHttpRequest) { // Mozilla, Safari,...
  http_request = new XMLHttpRequest();
  if (http_request.overrideMimeType) {
	// set type accordingly to anticipated content type
     //http_request.overrideMimeType('text/xml');
     http_request.overrideMimeType('text/html');
  }
} else if (window.ActiveXObject) { // IE
  try {
     http_request = new ActiveXObject("Msxml2.XMLHTTP");
  } catch (e) {
     try {
	http_request = new ActiveXObject("Microsoft.XMLHTTP");
     } catch (e) {}
  }
}
if (!http_request) {
  alert('Cannot create XMLHTTP instance');
  return false;
}
http_request.onreadystatechange = function(){ alertContents(url, targetid)};
http_request.open('GET', url + parameters, true);
http_request.send(null);
}


var WCM = WCM || {}; // namespace object

//***************************************************************************

WCM.IsString = function(obj) { return (typeof obj == 'string'); }
WCM.IsBoolean = function(obj) { return (typeof obj == 'boolean'); }
WCM.IsUndefined = function(obj) { return (typeof obj == 'undefined'); }
WCM.IsNull = function(obj) { return (obj == null); }
WCM.IsValid = function(obj) { return (!WCM.IsNull(obj) && !WCM.IsUndefined(obj)); }

//***************************************************************************

WCM.ToBool = function(obj, def)
{
	if (WCM.IsValid(obj))
	{
		return ((obj == 1) || (obj == true) || (obj == "1") || (obj.toString().toLowerCase() == "true") || (obj.toString().toLowerCase() == 'yes'));
	}

	return (WCM.IsBoolean(def) ? def : false);
};


$J = (function () 
{
	var INDENT = "\t";
	var NEWLINE = "\n";
	var prettyPrint = false;
	var indentLevel = 0;
	var propCount = 0;
	
	var isWindow = function(x)
	{
		return (x && x.self && x.self.top && x.top && x.self.top === x.top)
	};
	
	var isDomObject = function(x)
	{
		return (x && x.nodeName && x.nodeType && x.nodeType < 13);
	};

	var indent = function(a) 
	{
		if (!prettyPrint)
		{
			return a;
		}
		for (var l=0; l<indentLevel; l++) 
		{
			a[a.length] = INDENT;
		}
		return a;
	};

	var newline = function(a) 
	{
		if (prettyPrint)
		{
			a[a.length] = NEWLINE;
		}
		return a;
	};

	var m = 
	{
		'\b': '\\b',
		'\t': '\\t',
		'\n': '\\n',
		'\f': '\\f',
		'\r': '\\r',
		'"' : '\\"',
		'\\': '\\\\'
	},
        
	s = 
	{
		array: function (x) 
		{
			var a = ['['], b, f, i, l = x.length, v;
			a = newline(a);
			indentLevel++;
			for (i = 0; i < l; i += 1) 
			{
				v = x[i];
				f = s[typeof v];
				if (f) 
				{
					v = f(v);
					if (typeof v == 'string') 
					{
						if (b) 
						{
							a[a.length] = ',';
							a = newline(a);
						}
						a = indent(a);
						a[a.length] = v;
						b = true;
					}
				}
			}
			indentLevel--;
			a = newline(a);
			a = indent(a);			
			a[a.length] = ']';
			return a.join('');
		},

		'boolean': function (x) 
		{
			return String(x);
		},
		
		'null': function (x) 
		{
			return "null";
		},
  
		number: function (x) 
		{
			return isFinite(x) ? String(x) : 'null';
		},
  
		object: function (x) 
		{
			if (x) 
			{
				if (x instanceof Array) 
				{
					return s.array(x);
				}
				if (isWindow(x))
				{
					var loc = '';
					try { loc = x.location; } catch(e) { }
					return '"[window object] ' + loc + '"';
				}
				if (isDomObject(x))
				{
					return '"[dom object] ' + x.nodeName + '"';
				}
				var a = ['{'], b, f, i, v;
				a = newline(a);
				indentLevel++;
				for (i in x) 
				{
					if (++propCount > 5000)
					{
						a = newline(a);
						a[a.length] = 'Too many properties to serialize';
						return a.join('');
					}
					v = x[i];
					f = s[typeof v];
					if (f) 
					{
						v = f(v);
						if (typeof v == 'string') 
						{
							if (b) 
							{
								a[a.length] = ',';
								a = newline(a);
							}
							a = indent(a);
							a.push(s.string(i), ((prettyPrint) ? ' : ' : ':'), v);
							b = true;
						}
					}
				}
				indentLevel--;
				a = newline(a);
				a = indent(a);
				a[a.length] = '}';
				return a.join('');
			}
			return 'null';
		},
  
		string: function (x) 
		{
			if (/["\\\x00-\x1f]/.test(x)) 
			{
				x = x.replace(/([\x00-\x1f\\"])/g, function(a, b) 
				{
					var c = m[b];
					if (c) 
					{
						return c;
					}
					c = b.charCodeAt();
					return '\\u00' + Math.floor(c / 16).toString(16) + (c % 16).toString(16);
				});
			}
			if (/[\x7f-\xff]/.test(x)) 
			{
				x = x.replace(/([\x7f-\xff])/g, function(a, b) 
				{
					var c = m[b];
					if (c) 
					{
						return c;
					}
					c = b.charCodeAt();
					return '\\u00' + Math.floor(c / 16).toString(16) + (c % 16).toString(16);
				});
			}
			if (/[\u0100-\u0fff]/.test(x)) 
			{
				x = x.replace(/([\u0100-\u0fff])/g, function(a, b) 
				{
					var c = m[b];
					if (c) 
					{
						return c;
					}
					c = b.charCodeAt();
					return '\\u0' + c.toString(16);
				});
			}
			if (/[\u1000-\uffff]/.test(x)) 
			{
				x = x.replace(/([\u1000-\uffff])/g, function(a, b) 
				{
					var c = m[b];
					if (c) 
					{
						return c;
					}
					c = b.charCodeAt();
					return '\\u' + c.toString(16);
				});
			}
			return '"' + x + '"';
		}
	};
	
	var toJSONObject = function(s) 
	{
		try 
		{
			// Ensure the string passed in is a valid JSON string.
			return (/^[\],:{}\s]*$/.test(s.replace(/\\./g, '@').
					replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g, ']').
					replace(/(?:^|:|,)(?:\s*\[)+/g, '')) && eval('(' + s + ')'));
		} 
		catch (e) 
		{
			return false;
		}
	}
	
	var toJSONString = function(x, format)
	{
		propCount = 0;
		prettyPrint = format;
		return s.object(x);
	}
	
	return function(s, format)
	{
		return WCM.IsString(s) ? toJSONObject(s) : toJSONString(s, WCM.ToBool(format, false));
	}
})();


function alertContents(url, targetid) {
	if (http_request.readyState == 4) {
	  if (http_request.status == 200) {
	     //alert(http_request.responseText);
	     result = http_request.responseText;
	     /*Correct the URLs based on the ssUrlPrefix*/

		height = 300;
		width = 300;

		var config = result.match("<!--POP_CONFIG_BEGIN.*END_POP_CONFIG-->");

		if(config != null && config.length > 0)
		{
			//alert(config);
			//var re = new RegExp(RegExp.escape('<!--POP_CONFIG_BEGIN [' + '(.*)\]', 'igm');
			//alert((re.test(config) && $J(RegExp.$1)) || {});

			config = config[0];

			config = config.replace("<!--POP_CONFIG_BEGIN [","")
			config = config.replace("] END_POP_CONFIG-->","");

			if(config)
			{
				config = $J(config);

				height = config.popupheight;
				width = config.popupwidth;
			}
		}	

			createPopUp(url,height,width);

	    //document.getElementById(targetid).innerHTML = result;            
	  } else {
	     alert('There was a problem with the request.');
	  }
	}
}

function assignPopUps()
{
	var links = document.getElementsByTagName('a');
	
	var urlTestExp = new RegExp(/.*\/pop-up-assets\/.*/);
	var urlTestExp2 = new RegExp(/.*\/www.cargill.com\/.*/);
	for(i=0; i<links.length; i++)
	{
		var link = links[i];
		testHref = link.href;
		if(!urlTestExp2.test(testHref) && urlTestExp.test(testHref))
		{
			link.onclick = new Function("dynamicPopUp(\"" + testHref + "\");");
			link.href = "javascript:void(0);"
			link.target="_self";
		}
	}

}

window.addEvent('load', assignPopUps);

function imgPopUp(myurl)
{
	popupBox.displayurl = myurl;
	
	popupBox.containerHeight = 1;
		
	popupBox.containerWidth = 1;
	
	//HTML for the header bar portion of the popup box
	popupBox.headerCode = '<div class="popupHeader"><a class="closeLink" href="#" onClick="javascript:popupBox.closePopUp(); showSelectBoxes(); return false">X</a></div>';

	//type ajax or iframe
	popupBox.contenttype = 'img';

	//bust caching of pageBodys fetched via Ajax?
	popupBox.ajaxbustcache = true;

	//Disable browser scrollbars while popup is shown
	popupBox.disablescrollbars = false;

	popupBox.initPopUp();
}

function getPagePathID()
{
	var pageName=window.location.pathname;
	var tempIndex1=pageName.indexOf("?");

	if(tempIndex1!=-1)
	{
		pageName=pageName.substr(0,tempIndex1);
	}

	var tempIndex2=pageName.indexOf("#");

	if(tempIndex2!=-1)

	{
		pageName=pageName.substr(0,tempIndex2);
	}

	var tempIndex3=pageName.indexOf(";");

	if(tempIndex3!=-1)
	{
		pageName=pageName.substr(0,tempIndex3);
	}

	var filenamePos1=pageName.lastIndexOf("/index.");
	var filenamePos2=pageName.lastIndexOf("/default.");
	if(filenamePos1 > -1)
	{
		pageName=pageName.substr(0,filenamePos1+1);
	}
	else if(filenamePos2 > -1)
	{
		pageName=pageName.substr(0,filenamePos2+1);
	}

	while(pageName.indexOf("/")==0)
	{
		pageName=pageName.substr(1,pageName.length);
	}
	
	if(pageName.length==0){pageName="/";}

	return(pageName);
}
