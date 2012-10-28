//Drop Down/ Overlapping Content: http://www.dynamicdrive.com
//Last updated: Dec 19th, 07': Added ability to dynamically populate a Drop Down content using an external file (Ajax feature)

function navElement(anchorid, pos, glidetime, useImg, altHoverImg){
	this.delaybeforehide = 250; //set delay in milliseconds before content box disappears onMouseout (1000=1 sec)
	this.disableanchorlink=true;
	this.ajaxloadingmsg="Loading"; 
	this.ajaxbustcache=true;
		
	this.anchorobj=document.getElementById(anchorid)
	this.subobj=document.getElementById(this.anchorobj.getAttribute("rel"))
	this.subobjsource=this.anchorobj.getAttribute("rev")
	
	this.anchorobj.navimgobj = null;
	
	if(useImg)
	{
		this.anchorobj.navimgobj = this.anchorobj.getElementsByTagName('IMG')[0];
		
		if(this.anchorobj.navimgobj != null && typeof(this.anchorobj.navimgobj) != 'undefined')
		{
			var hoverPostfix = "o"
			var navimgobjsrc = this.anchorobj.navimgobj.src;
			if(altHoverImg)
			{
				hoverPostfix = "oa"
			}
			
			navimgobjoutsrc = this.anchorobj.navimgobj.src;
			
			if (this.anchorobj.navimgobj.src.test('-d.gif$'))
			{
				navimgobjsrc = this.anchorobj.navimgobj.src.replace(/\-d\.gif$/, '.gif');
			}

			var overImg = new Image();
			overImg.src = this.anchorobj.navimgobj.oversrc = navimgobjsrc.replace(/\.gif$/, '-' + hoverPostfix + '.gif');
			this.anchorobj.navimgobj.outsrc = navimgobjoutsrc;
		}
	}
			
	this.initialClass = this.anchorobj.className;
	
		if (this.subobjsource!=null && this.subobjsource!="")
			ajaxconnect(this.subobjsource, this.anchorobj.getAttribute("rel"))

		this.subobj.dropposition=pos.split("-")
		this.subobj.glidetime=glidetime || 1000
		this.subobj.style.left=this.subobj.style.top=0
		
		this.curObj = this;
		
		this.anchorobj.objBinder = this;
		this.subobj.objBinder = this;
		
		this.anchorobj.onmouseover=function(e){
		
			this.objBinder.show(this, this.objBinder.subobj, e)
			
			}
		this.anchorobj.onmouseout=function(e){
			this.objBinder.hide(this.objBinder.subobj, this.objBinder.anchorobj, this.objBinder.subobj, e)
			
			}
		//if (this.disableanchorlink) anchorobj.onclick=function(){return false}
		this.subobj.onmouseout=function(e){
			this.objBinder.hide(this, this.objBinder.anchorobj, this.objBinder.subobj, e)
			
			}

	this.subobj.style.visibility="hidden"; //fixes ie7 initial load issue;	
}


function loadpage(page_request, divId){
	with (this);
	if (page_request.readyState == 4 && (page_request.status==200 || window.location.href.indexOf("http")==-1)){
			document.getElementById(divId).innerHTML=page_request.responseText
	}
}

function ajaxconnect(pageurl, divId){
	with (this);
	var page_request = false
	var bustcacheparameter=""
	if (window.XMLHttpRequest) // if Mozilla, IE7, Safari etc
		page_request = new XMLHttpRequest()
	else if (window.ActiveXObject){ // if IE6 or below
		try {
		page_request = new ActiveXObject("Msxml2.XMLHTTP")
		} 
		catch (e){
			try{
			page_request = new ActiveXObject("Microsoft.XMLHTTP")
			}
			catch (e){}
		}
	}
	else
		return false
	document.getElementById(divId).innerHTML=this.ajaxloadingmsg //Display "fetching page message"
	page_request.onreadystatechange=function(){loadpage(page_request, divId)}
	if (this.ajaxbustcache) //if bust caching of external page
		bustcacheparameter=(pageurl.indexOf("?")!=-1)? "&"+new Date().getTime() : "?"+new Date().getTime()
	page_request.open('GET', pageurl+bustcacheparameter, true)
	page_request.send(null)
}

function hide( activeobj, anchorobj, subobj, e){
	with (this);
	if (!isContained(activeobj, e) && !isContained(anchorobj, e)){
		window["hidetimer_"+subobj.id]=setTimeout(function(){
			subobj.style.visibility="hidden";
			subobj.style.left=subobj.style.top=0;
			anchorobj.className=this.initialClass;
			if(anchorobj.navimgobj != null)
			{
				anchorobj.navimgobj.src = anchorobj.navimgobj.outsrc;
			}
			clearTimeout(window["glidetimer_"+subobj.id]);
		}, this.delaybeforehide)
	}
}
function slideengine(obj, direction){
	with (this);
	var elapsed=new Date().getTime()-obj.startTime //get time animation has run
	if (elapsed<obj.glidetime){ //if time run is less than specified length
		var distancepercent=(direction=="down")? this.curveincrement(elapsed/obj.glidetime) : 1-this.curveincrement(elapsed/obj.glidetime)
		var currentclip=(distancepercent*obj.contentheight)+"px"
		obj.style.clip=(direction=="down")? "rect(0 auto "+currentclip+" 0)" : "rect("+currentclip+" auto auto 0)"
		window["glidetimer_"+obj.id]=setTimeout(function(){slideengine(obj, direction)}, 10)
	}
	else{ //if animation finished
		obj.style.clip="rect(0 auto auto 0)"
	}
}
function curveincrement(percent){
	with (this);
	return (1-Math.cos(percent*Math.PI)) / 2 //return cos curve based value from a percentage input
}
function show(anchorobj, subobj, e){
	with (this);	
	if (!this.isContained(anchorobj, e) && subobj.style.visibility!="visible"){
		var horizontaloffset=(subobj.dropposition[0]=="left")? -(subobj.offsetWidth-anchorobj.offsetWidth) : -this.collisionOffset(subobj,anchorobj) //calculate user added horizontal offset
		var verticaloffset=(subobj.dropposition[1]=="top")? -subobj.offsetHeight : anchorobj.offsetHeight //calculate user added vertical offset
			
		subobj.style.left=this.getposOffset(anchorobj, "offsetLeft") + horizontaloffset + "px"
		subobj.style.top=this.getposOffset(anchorobj, "offsetTop")+verticaloffset+"px"
		
		subobj.style.clip=(subobj.dropposition[1]=="top")? "rect(auto auto auto 0)" : "rect(0 auto 0 0)" //hide drop down box initially via clipping
		subobj.style.visibility="visible"
		subobj.startTime=new Date().getTime()
		subobj.contentheight=parseInt(subobj.offsetHeight)
		
		var layer=document.getElementById(this.subobj.id + "Layer");
		
		if(anchorobj.navimgobj != null)
		{
			anchorobj.navimgobj.src = anchorobj.navimgobj.oversrc;
		}
		
		if(layer!=null)
		{
			layer.style.height = parseInt(this.subobj.offsetHeight) + "px";
			layer.style.width = parseInt(this.subobj.offsetWidth) + "px";
		}
				
		if (typeof window["hidetimer_"+subobj.id]!="undefined") //clear timer that hides drop down box?
			clearTimeout(window["hidetimer_"+subobj.id])
		this.slideengine(subobj, (subobj.dropposition[1]=="top")? "up" : "down")
		anchorobj.className="on"
		//this.setConflictingElements("hidden",subobj);
		
		
	}


}

function collisionOffset(subobj,anchorobj)
{
	with (this);

	var parent = anchorobj.parentNode.parentNode; //ul object
		
	//alert(subobj.offsetWidth+"\n"+this.getposOffset(anchorobj, "offsetLeft")+"\n"+this.getposOffset(parent, "offsetLeft")+"\n"+parent.offsetWidth);
	
	var subobjWidth = subobj.offsetWidth;
		
	if (parent != null && (this.getposOffset(anchorobj, "offsetLeft") + subobjWidth) > (this.getposOffset(parent, "offsetLeft")+parent.offsetWidth))
	{
		return (this.getposOffset(anchorobj, "offsetLeft") + subobjWidth) - (this.getposOffset(parent, "offsetLeft")+parent.offsetWidth);
	}
	else
	{
		return 0;
	}

}

function isContained(m, e){
	with (this);
	var e=window.event || e
	var c=e.relatedTarget || ((e.type=="mouseover")? e.fromElement : e.toElement)
	while (c && c!=m)try {c=c.parentNode} catch(e){c=m}
	if (c==m)
		return true
	else
		return false
}
function getposOffset(what, offsettype){
	with (this);
	return (what.offsetParent)? what[offsettype]+this.getposOffset(what.offsetParent, offsettype) : what[offsettype]
}

navElement.prototype.loadpage=loadpage;
navElement.prototype.ajaxconnect=ajaxconnect;
navElement.prototype.hide=hide;
navElement.prototype.slideengine=slideengine;
navElement.prototype.curveincrement=curveincrement;
navElement.prototype.show=show;
navElement.prototype.isContained=isContained;
navElement.prototype.collisionOffset=collisionOffset;
navElement.prototype.getposOffset=getposOffset;
