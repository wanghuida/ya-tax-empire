if(g_HttpRelativeWebRoot!=undefined&&g_HttpRelativeWebRoot!=""){
	if(g_HttpRelativeWebRoot.indexOf(ssUrlPrefix)!=-1){
		g_HttpRelativeWebRoot = g_HttpRelativeWebRoot.substring(g_HttpRelativeWebRoot.indexOf(ssUrlPrefix),g_HttpRelativeWebRoot.length);
	}
}


var flag = 0  ;
(function($){$.fn.jCarouselLite=function(o){o=$.extend({btnPrev:null,btnNext:null,btnGo:null,mouseWheel:false,auto:null,speed:200,easing:null,vertical:false,circular:true,visible:3,start:0,scroll:1,beforeStart:null,afterEnd:null},o||{});return this.each(function(){var b=false,animCss=o.vertical?"top":"left",sizeCss=o.vertical?"height":"width";var c=$(this),ul=$("ul",c),tLi=$("li",ul),tl=tLi.size(),v=o.visible;if(o.circular){ul.prepend(tLi.slice(tl-v-1+1).clone()).append(tLi.slice(0,v).clone());o.start+=v}var f=$("li",ul),itemLength=f.size(),curr=o.start;c.css("visibility","visible");f.css({overflow:"hidden",float:o.vertical?"none":"left"});ul.css({margin:"0",padding:"0",position:"relative","list-style-type":"none","z-index":"1"});c.css({overflow:"hidden",position:"relative","z-index":"2",left:"0px"});var g=o.vertical?height(f):width(f);var h=g*itemLength;var j=g*v;f.css({width:f.width(),height:f.height()});ul.css(sizeCss,h+"px").css(animCss,-(curr*g));c.css(sizeCss,j+"px");if(o.btnPrev)$(o.btnPrev).click(function(){return go(curr-o.scroll)});if(o.btnNext)$(o.btnNext).click(function(){return go(curr+o.scroll)});if(o.btnGo)$.each(o.btnGo,function(i,a){$(a).click(function(){return go(o.circular?o.visible+i:i)})});if(o.mouseWheel&&c.mousewheel)c.mousewheel(function(e,d){return d>0?go(curr-o.scroll):go(curr+o.scroll)});if(o.auto)setInterval(function(){go(curr+o.scroll)},o.auto+o.speed);function vis(){return f.slice(curr).slice(0,v)};function go(a){if(!b){if(o.beforeStart)o.beforeStart.call(this,vis());if(o.circular){if(a<=o.start-v-1){ul.css(animCss,-((itemLength-(v*2))*g)+"px");curr=a==o.start-v-1?itemLength-(v*2)-1:itemLength-(v*2)-o.scroll}else if(a>=itemLength-v+1){ul.css(animCss,-((v)*g)+"px");curr=a==itemLength-v+1?v+1:v+o.scroll}else curr=a}else{if(a<0||a>itemLength-v)return;else curr=a}b=true;ul.animate(animCss=="left"?{left:-(curr*g)}:{top:-(curr*g)},o.speed,o.easing,function(){if(o.afterEnd)o.afterEnd.call(this,vis());b=false});if(!o.circular){$(o.btnPrev+","+o.btnNext).removeClass("disabled");$((curr-o.scroll<0&&o.btnPrev)||(curr+o.scroll>itemLength-v&&o.btnNext)||[]).addClass("disabled")}}return false}})};function css(a,b){return parseInt($.css(a[0],b))||0};function width(a){return a[0].offsetWidth+css(a,'marginLeft')+css(a,'marginRight')};function height(a){return a[0].offsetHeight+css(a,'marginTop')+css(a,'marginBottom')}})(jQuery);
jQuery.easing['jswing'] = jQuery.easing['swing'];
(function($){
	$.htmlGrid = function(gridconfig){
		var gconfig = {
			linecolor : '#4affff',
			gridwidth : 32,
			gridmarginright : 7,
			gridcols  : 24	
		}
		if(gridconfig){
			gconfig.linecolor = gridconfig.linecolor||'#4affff';	
			gconfig.gridwidth = gridconfig.gridwidth||32;
			gconfig.gridmarginright = gridconfig.gridmarginright||7;
			gconfig.gridcols = gridconfig.gridcols||24;
		}
		var dd = document.documentElement
		if(!$.browser.msie&&!$.browser.mozilla) {
			dd = document.body;
		}
		var gridhtml = '<div id="htmlgrid" style="width:100%; overflow:hidden; height:100%; position:fixed; left:-1px; top:0px; z-index:99999; display:none;"><div style="background-color:#000; width:100%; height:100%; position:absolute; left:0px; top:0px; z-index:10;"></div><div style="background:transparent; width:100%; height:100%; position:absolute; left:0px; top:0px; z-index:50;"><div style="margin:0px auto; display:block; padding:0px; height:100%; overflow:hidden; width:'+(((gconfig.gridwidth+1)*gconfig.gridcols)+gconfig.gridmarginright*(gconfig.gridcols-1))+'px;">';
		for(var i = 0;i<gconfig.gridcols;i++){
			gridhtml += '<div style="overflow:hidden;margin:0px; padding:0px; display:block; float:left; height:100%; width:'+(gconfig.gridwidth-1)+'px; border:1px solid '+gconfig.linecolor+'; border-width:0px 1px; text-align:center; font-family:Arial; font-size:10px; color:'+gconfig.linecolor+';';
			if(i < (gconfig.gridcols - 1)){
				gridhtml += 'margin-right:'+gconfig.gridmarginright+'px;';
			}
			gridhtml += '" title="'+(i+1)+'"><span style="display:block; padding:0px;">'+(i+1)+'</span></div>';			
		}
		gridhtml += '</div></div></div>';
		$(gridhtml).appendTo(document.body).find('div:eq(0)').css('opacity',0.3);
		$('<div id="htmlelementgrid" style="background:#222; line-height:24px; color:#fff; font-size:12px; border:1px solid #000; position:fixed; z-index:99999; top:0px; left:0px; display:none; padding:20px;"></div><div id="htmlelementmousegrid" style="background:#666; line-height:24px; color:#fff; font-size:12px; border:1px solid #333; position:absolute; z-index:99999; top:0px; left:0px; display:none; padding:0px 10px; height:24px; overflow:hidden;"></div><div id="htmlelementmousegridX" style="background:#ff0000; line-height:1px; position:fixed; z-index:100003; top:0px; left:0px; display:none; overflow:hidden; width:100%; height:1px;"></div><div id="htmlelementmousegridY" style="background:#ff0000; line-height:100%; position:fixed; z-index:100002; top:0px; left:0px; display:none; overflow:hidden; width:1px; height:100%;"></div><div id="htmlruler_x" style="background:url(groups/entwebtemplate/documents/enterprise_webasset/ruler_h.png) repeat-x; height:18px; width:100%; position:fixed; left:0px; top:0px; overflow:hidden; z-index:100000; display:none;"></div><div id="htmlruler_y" style="background:url(groups/entwebtemplate/documents/enterprise_webasset/ruler_v.png) repeat-y; height:100%; width:18px; position:absolute; left:0px; top:0px; overflow:hidden; z-index:100001; display:none;"></div>').appendTo(document.body);
		$('#htmlelementgrid').css('opacity',0.6);
		var mouseCoords = function(ev) 
		{ 
			if(ev.pageX || ev.pageY){ 
			return {x:ev.pageX+ dd.scrollLeft, y:ev.pageY-dd.scrollTop}; 
			} 
			return{ 
			x:ev.clientX + document.body.scrollLeft - document.body.clientLeft, 
			y:ev.clientY + document.body.scrollTop - document.body.clientTop 
			}; 
		}
		$(document.body).mousemove(function(ent){
			ev= ent || window.event; 
			$('#htmlelementmousegridX').css('top',((mouseCoords(ev).y)-1)+'px');
			$('#htmlelementmousegridY').css('left',((mouseCoords(ev).x)-1)+'px');
		});
		$(document.body).find('*').each(function(){
			$(this).mouseover(function(ent){
				var entsrc = ent.target || window.event.srcElement;
				$('#htmlelementtagName').html($(entsrc).attr('tagName'));
				$('#htmlelementmousegrid').html('<span style="color:#4affff;">'+$(entsrc).attr('tagName')+'</span>&nbsp;,&nbsp;???:&nbsp;<span style="color:yellow;">'+$(entsrc).width()+'px</span>&nbsp;,&nbsp;???:&nbsp;<span style="color:yellow;">'+$(entsrc).height()+'px</span>'+'&nbsp;,&nbsp;??????:&nbsp;<span style="color:yellow;">'+$(entsrc).offset().left+'px</span>&nbsp;,&nbsp;??????:&nbsp;<span style="color:yellow;">'+$(entsrc).offset().top+'px</span>&nbsp;,&nbsp;??????:&nbsp;<span style="color:yellow;">'+$(entsrc).text().length+'</span>&nbsp;,&nbsp;??????:&nbsp;<span style="color:yellow;">'+($(entsrc).attr('className')||'??????'+'</span>'));
				$('#htmlelementparenttagName').html($(entsrc).parent().attr('tagName'));
				$('#htmlelementsize').html($(entsrc).width()+'px  '+$(entsrc).height()+'px');			
				$('#htmlelementposition').html($(entsrc).offset().left+'px  '+$(entsrc).offset().top+'px');	
				$('#htmlelementmousegrid').css({left:$(entsrc).offset().left+'px',top:(($(entsrc).offset().top-28)<=0?($(entsrc).offset().top+$(entsrc).height()):($(entsrc).offset().top-28))+'px'});
			});
		});
		$('#htmlelementmousegridX,#htmlelementmousegridY').unbind('mouseover');
		$('#htmlruler_y,#htmlruler_x').unbind('mouseover');
		$('#htmlgrid').unbind('mouseover');
		$('#htmlgrid div').unbind('mouseover');
		$('#htmlruler_y').css({'height':$(dd).height()+'px'});
		var xi = parseInt($(dd).width()/50)+1,xh = '';
		var yi = parseInt($(dd).height()/50)+1,yh='';
		for(var i=0; i<xi; i++){
			xh += '<span style="position:absolute;left:'+(i*50+2)+'px;top:0px; display:block; color:#333; font-size:10px; font-family:Arial;">'+(i*50)+'</span>';			
		}
		for(var i=0; i<yi; i++){
			yh += '<span style="position:absolute;left:4px;top:'+(i*50+2)+'px; width:8px; word-wrap:break-word; overflow:hidden; height:40px; display:block; color:#333; line-height:10px; font-size:10px; font-family:Arial;">'+(i*50)+'</span>';			
		}
		$('#htmlruler_x').html(xh);
		$('#htmlruler_y').html(yh);
		$(document).bind('keypress',function(e)    
		{   
			if(e.which == 127 || e.which == 8){//ctrl + ?????? ??????dom??????????????????????????????
				if($('#htmlelementgrid').is(':visible')){
					$('#htmlelementgrid').hide();
					$('#htmlelementmousegrid').hide();
					$('#htmlelementmousegridX').hide();
					$('#htmlelementmousegridY').hide();
					$('#htmlruler_y,#htmlruler_x').hide();
					$('#htmlelementgrid').html('');
				}else{
					$('#htmlgrid').hide();
					var htmltotal = '';
					htmltotal += '???????????????????????????<span id="htmlelementtagName" style="color:yellow;"></span><br/>';
					htmltotal += '???????????????????????????<span id="htmlelementsize" style="color:yellow;"></span><br/>';
					htmltotal += '???????????????????????????<span id="htmlelementposition" style="color:yellow;"></span><br/>';
					htmltotal += '????????????????????????????????????<span id="htmlelementparenttagName" style="color:yellow;"></span><br/>';
					htmltotal += 'css????????????'+$(document.styleSheets).length+'???<br/>';
					htmltotal += 'js????????????'+$(document).find('script').length+'???<br/>';
					htmltotal += '????????????'+window.screen.width+' x '+window.screen.height+'<br/>';
					htmltotal += '???????????????'+document.body.scrollWidth +' x '+document.body.scrollHeight+'<br/>';
					htmltotal += '??????DOM?????????'+($(document.body).find('*').length)+'???<br/>';
					htmltotal += '???????????????'+($(document.body).find('*:hidden')).length+'???<br/>';
					htmltotal += 'div?????????'+($(document.body).find('div').length)+'???<br/>';
					htmltotal += 'dt?????????'+($(document.body).find('dt').length)+'???<br/>';
					htmltotal += 'dd?????????'+($(document.body).find('dd').length)+'???<br/>';
					htmltotal += 'span?????????'+($(document.body).find('span').length)+'???<br/>';
					htmltotal += 'form?????????'+($(document.body).find('form').length)+'???<br/>';
					htmltotal += 'img?????????'+($(document.body).find('img').length)+'???<br/>';
					htmltotal += '???????????????'+($(document.body).find('h1,h2,h3,h4,h5,h6').length)+'???<br/>';
					htmltotal += 'ul?????????'+($(document.body).find('ul').length)+'???<br/>';
					htmltotal += 'li?????????'+($(document.body).find('li').length)+'???<br/>';
					htmltotal += 'a?????????'+($(document.body).find('a').length)+'???<br/>';
					htmltotal += 'p?????????'+($(document.body).find('p').length)+'???<br/>';
					htmltotal += 'table?????????'+($(document.body).find('table').length)+'???<br/>';
					htmltotal += '??????????????????'+($(document.body).text().length)+'???<br/>';
					$('#htmlelementgrid').html(htmltotal);
					$('#htmlelementmousegrid').show();
					$('#htmlelementgrid').show();
					$('#htmlelementmousegridX').show();
					$('#htmlelementmousegridY').show();
				}
			}
			if(e.which == 28 || e.which == 92){//ctrl + \ ?????????????????????
				if($('#htmlgrid').is(':visible')){
					$('#htmlgrid').hide();
					$('#htmlelementmousegridX').hide();
					$('#htmlelementmousegridY').hide();
					$('#htmlruler_y,#htmlruler_x').hide();
				}else{
					$('#htmlelementgrid').hide();
					$('#htmlelementmousegrid').hide();
					$('#htmlelementmousegridX').hide();
					$('#htmlelementmousegridY').hide();
					$('#htmlgrid').css({'height':$(dd).height()+'px'});
					$('#htmlgrid').show();
				}			
			}
			if($('#htmlelementgrid').is(':visible')){
				switch(e.which){				
					case 119://w ??????dom?????????????????????
						$('#htmlelementgrid').css({'bottom':'auto','top':'0px'});
						break;
					case 115://s ??????dom?????????????????????
						$('#htmlelementgrid').css({'bottom':'0px','top':'auto'});
						break;
					case 97://a ??????dom?????????????????????
						$('#htmlelementgrid').css({'right':'auto','left':'0px'});
						break;
					case 100://d ??????dom?????????????????????
						$('#htmlelementgrid').css({'right':'0px','left':'auto'});
						break;
					case 101://e ?????????????????????????????????
						if($('#htmlelementmousegridX').is(':visible')){
							$('#htmlelementmousegridX').hide();
							$('#htmlelementmousegridY').hide();
						}else{
							$('#htmlelementmousegridX').show();
							$('#htmlelementmousegridY').show();
						}						
						break;
					case 114://r ????????????dom?????????????????????
						if($('#htmlelementmousegrid').is(':visible')){
							$('#htmlelementmousegrid').hide();
						}else{
							$('#htmlelementmousegrid').show();
						}
						break;	
					case 102://f ??????????????????
						if($('#htmlruler_y').is(':visible')){							
							$('#htmlruler_y,#htmlruler_x').hide();
						}else{
							$('#htmlruler_y,#htmlruler_x').show();
						}
						break;			
				}
			}
			if($('#htmlgrid').is(':visible')){
				var og = $('#htmlgrid').find('div:eq(0)');
				var oga = 0;			
				switch(e.which){				
					case 119://w ????????????????????????????????????
						oga=(parseInt(parseFloat(og.css('opacity'))*10)+1)/10;
						if(oga>=1)oga=1;
						og.css('opacity',oga);
						break;
					case 115://s ????????????????????????????????????	
						oga=(parseInt(parseFloat(og.css('opacity'))*10)-1)/10;;
						if(oga<=0 || oga>=1)oga=0;
						og.css('opacity',oga);
						break;
					case 97://a ?????????????????????????????????	
						oga = parseInt($('#htmlgrid').offset().left);
						oga--;
						$('#htmlgrid').css('left',oga+'px');
						break;
					case 100://d ?????????????????????????????????
						oga = parseInt($('#htmlgrid').offset().left);
						oga++;
						$('#htmlgrid').css('left',oga+'px');
						break;
					case 101://e ???????????????????????????
						$('#htmlgrid').css('left','-1px');
						og.css('opacity',0.3);
						break;	
					case 113://q ?????????????????????????????????
						if($('#htmlelementmousegridX').is(':visible')){
							$('#htmlelementmousegridX').hide();
							$('#htmlelementmousegridY').hide();
						}else{
							$('#htmlelementmousegridX').show();
							$('#htmlelementmousegridY').show();
						}						
						break;
					case 102://f ??????????????????
						if($('#htmlruler_y').is(':visible')){
							$('#htmlgrid').find('span').css({'padding':'0px'});
							$('#htmlruler_y,#htmlruler_x').hide();
						}else{
							$('#htmlgrid').find('span').css({'padding':'20px 0px'});
							$('#htmlruler_y,#htmlruler_x').show();
						}
						break;		
				}	
				
			}
		});
	}		  
})(jQuery);
(function($){
	$.fn.wordLimit = function(num){	
		this.each(function(){	
			if(!num){
				var copyThis = $(this.cloneNode(true)).hide().css({
					'position': 'absolute',
					'width': 'auto',
					'overflow': 'visible'
				});	
				$(this).after(copyThis);
				if(copyThis.width()>$(this).width()){
					$(this).text($(this).text().substring(0,$(this).text().length-4));
					$(this).html($(this).html()+'...');
					copyThis.remove();
					$(this).wordLimit();
				}else{
					copyThis.remove(); //????????????
					return;
				}	
			}else{
				var maxwidth=num;
				if($(this).text().length>maxwidth){
					$(this).text($(this).text().substring(0,maxwidth));
					$(this).html($(this).html()+'...');
				}
			}					 
		});
	}		  
})(jQuery);
(function($) {
	if(!document.defaultView || !document.defaultView.getComputedStyle){ // IE6-IE8
		var oldCurCSS = $.curCSS;
		$.curCSS = function(elem, name, force){
			if(name === 'background-position'){
				name = 'backgroundPosition';
			}
			if(name !== 'backgroundPosition' || !elem.currentStyle || elem.currentStyle[ name ]){
				return oldCurCSS.apply(this, arguments);
			}
			var style = elem.style;
			if ( !force && style && style[ name ] ){
				return style[ name ];
			}
			return oldCurCSS(elem, 'backgroundPositionX', force) +' '+ oldCurCSS(elem, 'backgroundPositionY', force);
		};
	}
	
	var oldAnim = $.fn.animate;
	$.fn.animate = function(prop){
		if('background-position' in prop){
			prop.backgroundPosition = prop['background-position'];
			delete prop['background-position'];
		}
		if('backgroundPosition' in prop){
			prop.backgroundPosition = '('+ prop.backgroundPosition;
		}
		return oldAnim.apply(this, arguments);
	};
	
	function toArray(strg){
		strg = strg.replace(/left|top/g,'0px');
		strg = strg.replace(/right|bottom/g,'100%');
		strg = strg.replace(/([0-9\.]+)(\s|\)|$)/g,"$1px$2");
		var res = strg.match(/(-?[0-9\.]+)(px|\%|em|pt)\s(-?[0-9\.]+)(px|\%|em|pt)/);
		return [parseFloat(res[1],10),res[2],parseFloat(res[3],10),res[4]];
	}
	
	$.fx.step. backgroundPosition = function(fx) {
		if (!fx.bgPosReady) {
			var start = $.curCSS(fx.elem,'backgroundPosition');
			if(!start){//FF2 no inline-style fallback
				start = '0px 0px';
			}
			
			start = toArray(start);
			fx.start = [start[0],start[2]];
			var end = toArray(fx.end);
			fx.end = [end[0],end[2]];
			
			fx.unit = [end[1],end[3]];
			fx.bgPosReady = true;
		}
		//return;
		var nowPosX = [];
		nowPosX[0] = ((fx.end[0] - fx.start[0]) * fx.pos) + fx.start[0] + fx.unit[0];
		nowPosX[1] = ((fx.end[1] - fx.start[1]) * fx.pos) + fx.start[1] + fx.unit[1];           
		fx.elem.style.backgroundPosition = nowPosX[0]+' '+nowPosX[1];

	};
})(jQuery);
(function(d){function g(a){var b=a||window.event,i=[].slice.call(arguments,1),c=0,h=0,e=0;a=d.event.fix(b);a.type="mousewheel";if(a.wheelDelta)c=a.wheelDelta/120;if(a.detail)c=-a.detail/3;e=c;if(b.axis!==undefined&&b.axis===b.HORIZONTAL_AXIS){e=0;h=-1*c}if(b.wheelDeltaY!==undefined)e=b.wheelDeltaY/120;if(b.wheelDeltaX!==undefined)h=-1*b.wheelDeltaX/120;i.unshift(a,c,h,e);return d.event.handle.apply(this,i)}var f=["DOMMouseScroll","mousewheel"];d.event.special.mousewheel={setup:function(){if(this.addEventListener)for(var a=
f.length;a;)this.addEventListener(f[--a],g,false);else this.onmousewheel=g},teardown:function(){if(this.removeEventListener)for(var a=f.length;a;)this.removeEventListener(f[--a],g,false);else this.onmousewheel=null}};d.fn.extend({mousewheel:function(a){return a?this.bind("mousewheel",a):this.trigger("mousewheel")},unmousewheel:function(a){return this.unbind("mousewheel",a)}})})(jQuery);
jQuery.extend( jQuery.easing,
{
	def: 'easeOutQuad',
	swing: function (x, t, b, c, d) {
		//alert(jQuery.easing.default);
		return jQuery.easing[jQuery.easing.def](x, t, b, c, d);
	},
	easeInQuad: function (x, t, b, c, d) {
		return c*(t/=d)*t + b;
	},
	easeOutQuad: function (x, t, b, c, d) {
		return -c *(t/=d)*(t-2) + b;
	},
	easeInOutQuad: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t + b;
		return -c/2 * ((--t)*(t-2) - 1) + b;
	},
	easeInCubic: function (x, t, b, c, d) {
		return c*(t/=d)*t*t + b;
	},
	easeOutCubic: function (x, t, b, c, d) {
		return c*((t=t/d-1)*t*t + 1) + b;
	},
	easeInOutCubic: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t + b;
		return c/2*((t-=2)*t*t + 2) + b;
	},
	easeInQuart: function (x, t, b, c, d) {
		return c*(t/=d)*t*t*t + b;
	},
	easeOutQuart: function (x, t, b, c, d) {
		return -c * ((t=t/d-1)*t*t*t - 1) + b;
	},
	easeInOutQuart: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t*t + b;
		return -c/2 * ((t-=2)*t*t*t - 2) + b;
	},
	easeInQuint: function (x, t, b, c, d) {
		return c*(t/=d)*t*t*t*t + b;
	},
	easeOutQuint: function (x, t, b, c, d) {
		return c*((t=t/d-1)*t*t*t*t + 1) + b;
	},
	easeInOutQuint: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t*t*t + b;
		return c/2*((t-=2)*t*t*t*t + 2) + b;
	},
	easeInSine: function (x, t, b, c, d) {
		return -c * Math.cos(t/d * (Math.PI/2)) + c + b;
	},
	easeOutSine: function (x, t, b, c, d) {
		return c * Math.sin(t/d * (Math.PI/2)) + b;
	},
	easeInOutSine: function (x, t, b, c, d) {
		return -c/2 * (Math.cos(Math.PI*t/d) - 1) + b;
	},
	easeInExpo: function (x, t, b, c, d) {
		return (t==0) ? b : c * Math.pow(2, 10 * (t/d - 1)) + b;
	},
	easeOutExpo: function (x, t, b, c, d) {
		return (t==d) ? b+c : c * (-Math.pow(2, -10 * t/d) + 1) + b;
	},
	easeInOutExpo: function (x, t, b, c, d) {
		if (t==0) return b;
		if (t==d) return b+c;
		if ((t/=d/2) < 1) return c/2 * Math.pow(2, 10 * (t - 1)) + b;
		return c/2 * (-Math.pow(2, -10 * --t) + 2) + b;
	},
	easeInCirc: function (x, t, b, c, d) {
		return -c * (Math.sqrt(1 - (t/=d)*t) - 1) + b;
	},
	easeOutCirc: function (x, t, b, c, d) {
		return c * Math.sqrt(1 - (t=t/d-1)*t) + b;
	},
	easeInOutCirc: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return -c/2 * (Math.sqrt(1 - t*t) - 1) + b;
		return c/2 * (Math.sqrt(1 - (t-=2)*t) + 1) + b;
	},
	easeInElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
		if (a < Math.abs(c)) { a=c; var s=p/4; }

		else var s = p/(2*Math.PI) * Math.asin (c/a);
		return -(a*Math.pow(2,10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )) + b;
	},
	easeOutElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
		if (a < Math.abs(c)) { a=c; var s=p/4; }
		else var s = p/(2*Math.PI) * Math.asin (c/a);
		return a*Math.pow(2,-10*t) * Math.sin( (t*d-s)*(2*Math.PI)/p ) + c + b;
	},
	easeInOutElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d/2)==2) return b+c;  if (!p) p=d*(.3*1.5);
		if (a < Math.abs(c)) { a=c; var s=p/4; }
		else var s = p/(2*Math.PI) * Math.asin (c/a);
		if (t < 1) return -.5*(a*Math.pow(2,10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )) + b;
		return a*Math.pow(2,-10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )*.5 + c + b;
	},
	easeInBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158;
		return c*(t/=d)*t*((s+1)*t - s) + b;
	},
	easeOutBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158;
		return c*((t=t/d-1)*t*((s+1)*t + s) + 1) + b;
	},
	easeInOutBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158; 
		if ((t/=d/2) < 1) return c/2*(t*t*(((s*=(1.525))+1)*t - s)) + b;
		return c/2*((t-=2)*t*(((s*=(1.525))+1)*t + s) + 2) + b;
	},
	easeInBounce: function (x, t, b, c, d) {
		return c - jQuery.easing.easeOutBounce (x, d-t, 0, c, d) + b;
	},
	easeOutBounce: function (x, t, b, c, d) {
		if ((t/=d) < (1/2.75)) {
			return c*(7.5625*t*t) + b;
		} else if (t < (2/2.75)) {
			return c*(7.5625*(t-=(1.5/2.75))*t + .75) + b;
		} else if (t < (2.5/2.75)) {
			return c*(7.5625*(t-=(2.25/2.75))*t + .9375) + b;
		} else {
			return c*(7.5625*(t-=(2.625/2.75))*t + .984375) + b;
		}
	},
	easeInOutBounce: function (x, t, b, c, d) {
		if (t < d/2) return jQuery.easing.easeInBounce (x, t*2, 0, c, d) * .5 + b;
		return jQuery.easing.easeOutBounce (x, t*2-d, 0, c, d) * .5 + c*.5 + b;
	}
});

var HuaWei = {};
HuaWei.namespace = function(str){
    var arr = str.split('.'),o=HuaWei;
    for(i=(arr[0]=='HuaWei')? 1 : 0; i<arr.length; i++){        
        o[arr[i]] = o[arr[i]] || {};
        o = o[arr[i]];
    }
}
HuaWei.namespace('page.mainView');
HuaWei.namespace('form');
HuaWei.page.formExtension = function(){
	jQuery.validator.addMethod("mobileValid", function(value, element){
		 var mob = /^\d{11}$/;
		 return mob.test(value) || this.optional(element);
		}, "??????????????????????????????");
	jQuery.validator.addMethod("telphoneValid", function(value, element){
		 var tel = /0\d{2,3}-\d{7,8}|\(0\d{2,3}\)\d{7,8}/;
		 return tel.test(value) || this.optional(element);
		},"??????????????????????????????");
	jQuery.validator.addMethod("telphoneOrmobile", function(value, element){
		 var tel = /^(0\d{2,3}-\d{7,8})|(0\d{2,3})\d{7,8}$/;
		 var mob = /^\d{11}$/;
		 var result=false;
		 if(tel.test(value) || mob.test(value))result=true;
		 return result || this.optional(element);
		},"??????????????????????????????");
	jQuery.validator.addMethod('defaultVal',function(value,element,params){
		 var result = value.replace(/(^\s*)|(\s*$)/g, "") != params;
		 return result || this.optional(element);
	  },'?????????????????????');
}
HuaWei.page.textHighLight = function(){
	jQuery.fn.highlight = function(pat) {
		if(pat){
		 function innerHighlight(node, pat) {
		  var skip = 0;
		  if (node.nodeType == 3) {
		   var pos = node.data.toUpperCase().indexOf(pat);
		   if (pos >= 0) {
			var spannode = document.createElement('span');
			spannode.className = 'highlight';
			var middlebit = node.splitText(pos);
			var endbit = middlebit.splitText(pat.length);
			var middleclone = middlebit.cloneNode(true);
			spannode.appendChild(middleclone);
			middlebit.parentNode.replaceChild(spannode, middlebit);
			skip = 1;
		   }
		  }
		  else if (node.nodeType == 1 && node.childNodes && !/(script|style)/i.test(node.tagName)) {
		   for (var i = 0; i < node.childNodes.length; ++i) {
			i += innerHighlight(node.childNodes[i], pat);
		   }
		  }
		  return skip;
		 }
		 return this.each(function() {
		  innerHighlight(this, pat.toUpperCase());
		 });
		}
	};
	jQuery.fn.removeHighlight = function() {
		 return this.find("span.highlight").each(function() {
		  this.parentNode.firstChild.nodeName;
		  with (this.parentNode) {
		   replaceChild(this.firstChild, this);
		   normalize();
		  }
		 }).end();
	};	
	
	
}
HuaWei.page.getQueryValue = function(url,key){
	var escapeReg = function(source) {
		return String(source)
				.replace(new RegExp("([.*+?^=!:\x24{}()|[\\]\/\\\\])", "g"), '\\\x241');
	};
    var reg = new RegExp(
                        "(^|&|\\?|#)" 
                        + escapeReg(key) 
                        + "=([^&]*)(&|\x24)", 
                    "");
    var match = url.match(reg);
    if (match) {
		var result=match[2].substring(match[2].length-1,match[2].length);
        return result=='#'?match[2].substring(0,match[2].length-1):match[2];
    }    
    return null;
}
HuaWei.page.isIE6 = function(){
	var isIE = !+'\v1'; //IE?????????
	var IE6 = isIE && /MSIE (\d)\./.test(navigator.userAgent) && parseInt(RegExp.$1) < 7;
	return IE6;	
}
HuaWei.page.mainView = function(){
	var c = $('#mainview .mainviewul');
	var w = $('#mainview').width();
	var t = c.find('li').length;
	var tw = $('#head .header').offset().left;
	var h = '';
	var o = null;
	var autohide = $('#mainview').attr('autoHideController');
	var easing='easeInOutExpo',speed=8000,is=false;
	var animate =  $('#mainview').attr('animate');
	
	c.attr('index',0);
	if(t>1){
		for(var i=0; i<t; i++){
			h +='<a href="javascript:void(0)" index="'+i+'"';
			if(i==0)h += ' class="active"> </a>';
			else h+= '> </a>'	
		}
		$('#mainview .mainview_controler td:eq(0)').html(h);
		if(autohide && autohide == 'true'){
			$('#mainview .mainview_controler').delay(3000).animate({bottom:'-30px'},200);			
			$('#mainview').hover(function(){				
				$('#mainview .mainview_controler').stop(true,true);
				$('#mainview .mainview_controler').animate({bottom:'0px'},400);
			},function(){
				$('#mainview .mainview_controler').animate({bottom:'-30px'},200);
			});
		}
	}
	if(animate && animate=='hide'){
		c.css({'width':w+'px','position':'relative'}).find('li').each(function(index){
			$(this).css({'position':'absolute','left':'0px','top':'0px','z-index':(t-index)});			
		});
	}else{
		c.css('width',t * w+'px');
	}
	c.find('li').each(function(){
		var bc = $(this).attr('backgroundcolor');
		if(!bc)bc='transparent';
		$(this).css('background','url('+$(this).attr('src')+') center top no-repeat scroll '+bc).css('width',w+'px');
		var links = eval('('+$(this).attr('links')+')');
		var me = $(this);
		if(links){
			$(links).each(function(){
				$('<a href="'+this.href+'" class="imglinks" target="_blank" style="width:'+this.w+'px;height:'+this.h+'px;left:'+(tw+this.x)+'px;top:'+this.y+'px;"> </a>').appendTo(me);
			})
		}
	});
	var play = function(p){
		is = true;
		c.attr('index',p);
		if(animate && animate=='hide'){			
			c.find('li:lt('+p+')').fadeOut(1000);
			c.find('li:gt('+p+')').fadeOut(1000);			
			c.find('li:eq('+p+')').fadeIn(2000,function(){is=false});
		}else{
			c.animate({left:-p*$('#mainview').width()+'px'},2000,easing,function(){
				is = false;	
			});
		}
		$('#mainview .mainview_controler td:eq(0) a').removeClass('active');
		$('#mainview .mainview_controler td:eq(0) a:eq('+p+')').addClass('active');	
	}
	var autoplay = function(){
		var p = parseInt(c.attr('index'));
		p++;
		if(p>=t)p=0;
		play(p);
	}
	if(t>1){
		o = setInterval(autoplay,speed);
		$('#mainview .mainview_controler td:eq(0) a').each(function(i){
			$(this).click(function(){
				if(!is){
					clearInterval(o);
					o = null;
					var p = parseInt($(this).attr('index'));
					c.find('li').stop(true,true);
					play(p);
					o = setInterval(autoplay,speed);
				}
			});
		});
		c.find('li').each(function(){
			$(this).hover(function(){
				clearInterval(o);
				o = null;
			},function(){
				o = setInterval(autoplay,speed);
			});
			
		});
	}
	setInterval(function(){
		if(!is){
			if(!(animate && animate=='hide')){
				var p = parseInt(c.attr('index'));
				c.css('left',-p*$('#mainview').width()+'px');
			}
			c.find('li').each(function(){
				var links = eval('('+$(this).attr('links')+')');
				var me = $(this);
				if(links){
					$(links).each(function(index){
						me.find('a.imglinks:eq('+index+')').css('left',($('#head .header').offset().left+this.x)+'px');
					})
				}
			});
		}
	},100);
	$(window).resize(function(){		
		w = $('#mainview').width();
		c.find('li').css('width',w+'px');
		c.css('width',t * w+'px')
	});
	
		
} 
HuaWei.page.indexNewsBar = function(){
	$("#newsbar .news").jCarouselLite({
	    auto: 3000,
		visible:1,
	    scroll: 1,
		vertical:true,
		easing:'easeInOutExpo',
	    speed: 1000
    }); 	
}
HuaWei.page.naviMenu = function(){
	var navi = parameter;
	if(navi){	
		if(navi.navi!=null){
			$('#navi .menu li[is="menuindex"]:eq('+navi.navi+') a:eq(0)').addClass('active'+navi.navi);
		}
	}else{
		var val = HuaWei.page.getQueryValue(window.location.href,'navi');
		if(val){
			$('#navi .menu li[is="menuindex"]:eq('+val+') a:eq(0)').addClass('active'+val);
		}
	}
	var indexli;
	$('#navi .menu li[is="menuindex"]').hover(function(){
		indexli = $(this).index();
		$(this).find('div.downarrow').show();
		$(this).find('a:eq(0)').addClass('hover'+indexli);
		$(this).find('.menuitempanel').slideDown(500);		
	},function(){
		indexli = $(this).index();
		$('#navi .menu li .menuitempanel').stop(true,true);
		$('.menuitempanel div.menufillet_s,.menuitempanel div.menufillet_e,.menuitempanel div.menufillet_w,.menuitempanel div.menufillet_se,.menuitempanel div.menufillet_sw').stop(true,true);
		$(this).find('div.downarrow').hide();
		$(this).find('a:eq(0)').removeClass('hover'+indexli);
		$(this).find('.menuitempanel').hide();
	})
}
HuaWei.page.indexAlert = function(){
	var alert_obj = null;
	$('#indeximg dd').each(function(){
		$(this).click(function(){
			if($(this).attr('href')){
				window.location.href = $(this).attr('href');					  
			}
		})
		
	})

	//&#40736;&#26631;&#28857;&#20987;&#26174;&#31034;
	$('#indeximg dd:eq(0)').click(function(){
		var me = $(this);
		$('#indexalert').css({'left':(me.offset().left)+'px','top':(me.offset().top-310)+'px'}).fadeIn(200);
	});
	//end
	
	$('#indexalert').hover(function(e){e.stopPropagation();},function(e){$(this).hide();e.stopPropagation()});	
}
HuaWei.page.searchType = function(){
	$('#search_click').click(function(){
		$('#navi').css('position','static');
		$('#search_type').slideDown(200);	
	});
	$('.searchbg input.text').focus(function(){
		$('.searchbg a.click').css('background','url(/ilink'+g_HttpRelativeWebRoot+'groups/entwebtemplate/documents/enterprise_webasset/ent_cn_img_search_hover.png) left top no-repeat scroll transparent');
		$('#search_click').trigger('click');
	}).blur(function(){$('.searchbg a.click').css('background','transparent')});
		
	$('#search_type').hover(function(){},function(){
		$('#navi').css('position','relative');
		$(this).hide();
	});	
	if(parameter){
		if(parameter.searchindex){
			$('#search_type input[type="radio"]').each(function(index, element) {
                if(index == parameter.searchindex){
					$(this).attr('checked','true');
				}
            });
		}
		if(parameter.searchtext){
			HuaWei.page.publicInputFocus('.searchbg input.text',parameter.searchtext,'#666','#999',function(){},function(){},true);
		}	
	}
}
HuaWei.page.treeInit = function(){
	var script = $('ul.tree').attr('script');
	if(script && script == 'false')script=false;
	else script = true;
	if(script){
		var nodecode = HuaWei.page.getQueryValue(window.location.href,'node');
		var childcode = HuaWei.page.getQueryValue(window.location.href,'child');
		$('ul.tree').find('a.node').each(function(index, element) {
			$(this).attr('index',index);
			var href = $(this).attr('href');
			if(href.indexOf('javascript:')==-1){
				if(href.indexOf('node=')==-1){
					if(href.indexOf('?')==-1){
						href += '?node='+index;
					}else{
						href += '&node='+index	
					}
				}
			}
			$(this).attr('href',href);
			$(this).siblings('ul').find('li:last-child').addClass('nobg');
			$(this).siblings('ul').find('a.child').each(function(i, element) {
				var href = $(this).attr('href');
				if(href.indexOf('javascript:')==-1){
					if(href.indexOf('child=')==-1 && href.indexOf('node=')==-1){
						if(href.indexOf('?')==-1){
							href += '?node='+index+'&child='+i;
						}else{
							href += '&node='+index+'&child='+i;
						}
					}
				}
				$(this).attr('href',href);
			});
		});
		$('ul.tree a.node').click(function(){
			var ul = $(this).siblings('ul');
			var show = ul.is(':visible');
			var i = $(this).attr('index');
			if(!show){
				$('ul.tree a.node:lt('+i+')').siblings('ul.childern').slideUp(400);
				$('ul.tree a.node:gt('+i+')').siblings('ul.childern').slideUp(400);
				$(this).siblings('ul').slideDown(400);
			}
		});	
		if(nodecode){
			var n = $('ul.tree a.node:eq('+nodecode+')');
			$('ul.tree').find('a.node,a.child').removeClass('selected');
			n.addClass('selected');
			if(n.siblings('ul').length>0){
				n.trigger('click');
			}
		}
		if(nodecode && childcode){
			var n = $('ul.tree a.node:eq('+nodecode+')');
			if(n.siblings('ul').length<1){
				$('ul.tree').find('a.node,a.child').removeClass('selected');
				n.addClass('selected');
			}else{
				$('ul.tree').find('a.node,a.child').removeClass('selected');
				n.trigger('click');
				n.siblings('ul').find('a.child:eq('+childcode+')').addClass('selected');
			}		
		}
	}
}
HuaWei.page.ulSameHeight = function(){
	$('div.block_s ul.blocks_item').each(function(){
		$(this).find('li[sameheight="true"]').css('height',$(this).height()+'px');		
	})	
}
HuaWei.page.videoController = function(){
	var pcw = $('div.videopanel ul:eq(0) li:eq(0)').width();
	$(".videolist dd.center li a").each(function(index, element) {
		$(this).attr('index',index);
        $(this).click(function(){
			$(".videolist dd.center li a").removeClass('play');
			$(this).addClass('play');	
			$('div.videopanel ul:eq(0)').animate({marginLeft:-parseInt($(this).attr('index'))*pcw+'px'},1000,'easeInOutExpo');
		})
    });
	var v = $('div.videolist');
	v.attr('start',0);
	var page = $(".videolist dd.center li").length-3;
	var pw = $(".videolist dd.center li:eq(0)").width();
	$(".videolist dd.left a").addClass('disabled');
	if(page<=0)$(".videolist dd.right a").addClass('disabled');
	if(page>0){
		$(".videolist dd.left a").click(function(){
			var tv = parseInt(v.attr('start'));
			tv--;
			if(tv<=0){
				$(".videolist dd.left a").removeClass('disabled').addClass('disabled');
				tv = 0
			}
			v.attr('start',tv);
			$(".videolist dd.center ul").animate({marginLeft:-tv*(pw+8)+'px'},200);
			$(".videolist dd.right a").removeClass('disabled');
		});
		$(".videolist dd.right a").click(function(){
			var tv = parseInt(v.attr('start'));
			tv++;
			if(tv>=page){
				$(".videolist dd.right a").removeClass('disabled').addClass('disabled');
				tv = page;
			}
			v.attr('start',tv);
			$(".videolist dd.center ul").animate({marginLeft:-tv*(pw+8)+'px'},200);
			$(".videolist dd.left a").removeClass('disabled');
		});
		$(".videolist dd.center ul").mousewheel(function(e,d){
			if(d>0){
				$(".videolist dd.left a").trigger('click');
			}else{
				$(".videolist dd.right a").trigger('click');
			}
			return false;
		});
	}
}
HuaWei.page.tabsInit = function(){
	var tabs = HuaWei.page.getQueryValue(window.location.href,'tabs');
	$('.tabs li a').each(function(index, element) {
		if($(this).hasClass('actived')){
		$('.tabs_content:eq('+index+')').show();
		}
		else{if(index<1){if($('.tabs li a.actived').length<1){
			$(this).addClass('actived');
			$('.tabs_content:eq('+index+')').show();
		}
		}
		else{$('.tabs_content:eq('+index+')').hide();
		}
		}
		$(this).click(function(){
		$('.tabs li a').removeClass('actived');
		$(this).addClass('actived');
		$('.tabs_content').hide();
		$('.tabs_content:eq('+index+')').show(); 
	})
	});
		if(tabs){$('.tabs li a').removeClass('actived');
				$('.tabs li a:eq('+tabs+')').addClass('actived');
				$('.tabs_content').hide();
				$('.tabs_content:eq('+tabs+')').show();
} 
} 


HuaWei.page.starInit = function(){

	var startxt = ['','?????????','?????????','?????????','??????','?????????'];
	$('ul.star li#startext').html(startxt[$('ul.star li.star').length]);
	var star = 0;
	$('ul.star li').each(function(index, element) {
		$(this).attr('index',index+1);
		$(this).hover(function(){
			if(star == 0){
				var i = $(this).attr('index');
				$('ul.star li').removeClass('star');
				$('ul.star li:lt('+i+')').addClass('star');
				$(this).addClass('star');
			}
		},function(){
			if(star == 0){
				$('ul.star li').removeClass('star');
			}
		});
        $(this).click(function(){
			star = (i+1)
			var i = $(this).attr('index');
			$('ul.star li').removeClass('star');
			$('ul.star li:lt('+i+')').addClass('star');
			$(this).addClass('star');
			$('ul.star li#startext').html(startxt[parseInt(i)]);
		});
    });	
	
}
HuaWei.page.showProduct = function(){
	$('div.pro_text').each(function(){
		$(this).css('cursor','pointer');
		$(this).click(function(){
			var a=$(this).siblings('ul.pro_listitem');
			var b=a.is(':visible');
			if(b){
				a.animate({height:'hide'},400);
				$(this).find('a:eq(0)').removeClass('hideli').addClass('showli');
				//$(this).find('a:eq(0)').text('????????????');	
			}else{
				a.animate({height:'show'},400);
				$(this).find('a:eq(0)').removeClass('showli').addClass('hideli');
				//$(this).find('a:eq(0)').text('????????????');
				var dd = document.documentElement
				if(!$.browser.msie&&!$.browser.mozilla) {
					dd = document.body;
				}				
				$(dd).delay(500).animate({scrollTop:a.parent().offset().top},400);
			}
		});
	});
	var pcode = HuaWei.page.getQueryValue(window.location.href,'product');
		if(pcode){
		var tempul = $('ul.pro_listitem:eq('+pcode+')').is(':visible');
		if(!tempul){
		$('ul.pro_listitem').hide();
		$('div.pro_text:eq('+pcode+')').trigger('click');
		}
		} 
	 }
HuaWei.page.publicInputFocus = function(id,text,focuscolor,blurcolor,focusFun,blurFun,once){
	var color = focuscolor||'#000000',oldColor=blurcolor||'#999999';
	var focusRun = focusFun || function(){},blurRun = blurFun || function(){};
	var once = once || false;
	$(id).val(text);	
	$(id).css('color',oldColor);
	$(id).focus(function(){
		tempclass = $(this).val().match(/^\s*(\S+(\s+\S+)*)\s*$/);		
		tempclass==null?tempclass='':tempclass=tempclass[1];
		if(tempclass==text){
			$(this).val('');
			$(this).css('color',color);
		}
		focusRun();
	}).blur(function(){
		if(!once){
			tempclass = $(this).val().match(/^\s*(\S+(\s+\S+)*)\s*$/);
			tempclass==null?tempclass='':tempclass=tempclass[1];
			if(tempclass.length<1){
				$(this)	.val(text);	
				$(this).css('color',oldColor);
			}
		}
		blurRun();
	});	
}
HuaWei.page.dimensionSearch = function(){
	$('ul.dimension').each(function(index, element) {
		var l = $(this).find('li.type a.dimensionitem').length;
        $(this).find('a.dimensiontype').click(function(){
			$(this).parent().addClass('show');
			$(this).siblings('div.dimension_select').slideDown(200);
		});
		$(this).find('li.type').hover(function(){},function(){
			$(this).removeClass('show');
			$('div.dimension_select').stop(true,true);
			$(this).find('div.dimension_select').hide();	
		});
    });	
	$('div.dimension_select').each(function(index, element) {
		var me = $(this);
        $(this).find('a.dimensionitem').click(function(){
			$(this).parent().parent().parent().siblings('a.dimensiontype').text($(this).text());
			$(this).parent().parent().parent().siblings('a.dimensiontype').attr("name",$(this).attr("name"));
			me.hide();	
			getV(1);
		})
    });
}
HuaWei.page.journalsTextLimit = function(){
	$('a.imagetxt').each(function(index, element) {
        $(this).attr('title',$(this).text());
    });
	$('a.imagetxt').wordLimit();	
}
HuaWei.form.searchResultForm = function(){
	$('#search_resultForm').validate({
		rules:{key:{required:true}},
		messages:{
			key:{required:'??????????????????????????????'}		
		},
		errorPlacement:function(error,elem){
			$('#search_reaultpannel').html('<span class="noresult">'+error.text()+'</span>');

		}
	});	
	$('#search_resultForm a.searchresult_search,#search_resultForm a.searchresult_searchresult').click(function(){
		$('#search_resultForm').submit();
	});
	$('#search_reaultpannel li').highlight($('#search_resultForm input[name="key"]').val());
	
}
HuaWei.form.buyFormCheck = function(){
	var debug = false;
	/*
	var data = HuaWei.page.cityDataBase;
	var pro = '',debug=true;
	$(data).each(function(index, element) {
        pro += '<option';
		if(index==0)pro += ' selected="selected"';
		pro += ' value="'+this.id+'">'+this.name+'</option>';
    });
	$(pro).appendTo($('#province,#province_info'));
	$('#province,#province_info').change(function(){
		var id = $(this).val();
		var obj = $(this).parent().parent().parent().find('#city,#city_info');
		obj.empty();
		pro = '';
		$(data).each(function(index, element) {
			if(this.id == id){
				$(this.citylist).each(function(j, e) {
                    pro += '<option';
					if(j==0)pro += ' selected="selected"';
					pro += ' value="'+this.code+'">'+this.name+'</option>';
                });				
			}
		});
		$(pro).appendTo(obj);
	});
	$('#province,#province_info').trigger('change');
	*/
	var bfm = $('#buy_form').validate({
		rules:{
			"buyFeedBackVO.name":{required:true,minlength:2,maxlength:100},
			"buyFeedBackVO.phone":{required:true,telphoneOrmobile:true},
			"buyFeedBackVO.email":{required:true,email:true},
			"buyFeedBackVO.business":{required:true,maxlength:50},
			"buyFeedBackVO.region":{required:true},
			"buyFeedBackVO.country":{required:true},
			"buyFeedBackVO.itemSummarize":{required:true,maxlength:2000},
			
			"buyFeedBackVO.province":{maxlength:100},
			"buyFeedBackVO.city":{maxlength:100},
			"buyFeedBackVO.address":{maxlength:300},
			"buyFeedBackVO.postalcode":{maxlength:50},
			"buyFeedBackVO.operationDomain":{maxlength:100},
			"buyFeedBackVO.companyName":{maxlength:100},
			"validateNumber":{required:true}		
		},
		debug:debug,
		messages:{
			"buyFeedBackVO.name":{required:'?????????????????????',minlength:'??????????????????2????????????'},
			"buyFeedBackVO.phone":{required:'?????????????????????',telphoneOrmobile:'?????????????????????????????????'},
			"buyFeedBackVO.email":{required:'?????????????????????',email:'??????????????????E-mail???'},
			"buyFeedBackVO.business":{required:'?????????????????????',maxlength:'??????????????????50????????????'},
			"buyFeedBackVO.region":{required:'?????????????????????'},
			"buyFeedBackVO.country":{required:'?????????????????????'},
			"buyFeedBackVO.itemSummarize":{required:'???????????????????????????'},
			"buyFeedBackVO.province":{maxlength:'??????????????????100????????????'},
			"buyFeedBackVO.city":{maxlength:'??????????????????100????????????'},
			"buyFeedBackVO.address":{maxlength:'??????????????????300????????????'},
			"buyFeedBackVO.postalcode":{maxlength:'????????????????????????50????????????'},
			"buyFeedBackVO.operationDomain":{maxlength:'????????????????????????100????????????'},
			"buyFeedBackVO.companyName":{maxlength:'????????????????????????100????????????'},
			validateNumber:{required:'???????????????????????????'} 
		},
		errorPlacement:function(error,elem){
			$(elem).css('border','1px dotted red');
			$(elem).attr('title',error.text());
		},
		unhighlight:function(elem){
			$(elem).css('border','1px solid #ccc');
			$(elem).removeAttr('title');
			
		}
	});
	$('#buy_form').submit(function(){
		if(bfm.valid()){
			var url=document.getElementsByName("url")[0].value;
			$('#buy_form').ajaxSubmit({
				type: "POST",
			   	url: url+"/buyfeedback.do?method=saveFeedBack",
				success:function(responsetxt){
					if(responsetxt=="isTrue")	{
						alert("???????????????????????????????????????????????????");
						window.location.reload();
					}
					if(responsetxt=="isFalse"){
						alert("???????????????,??????????????????");
					}		
				}
			});
		}
		return false;	
	});
	$('#buy_form a.submit').click(function(){
				   
		window.setTimeout(function(){$('#buy_form').trigger('submit');},500); 

	})
	
}
HuaWei.form.authorizationFormCheck = function(){
	
	var debug=false;
	var authorization_form = $('#authorization_form').validate({
		rules:{
			autorizationCoding:{required:true}	
		},
		debug:debug,
		messages:{
			autorizationCoding:{required:'??????????????????????????????'}
		},
		errorPlacement:function(error,elem){
			$(elem).css('border','1px dotted red');
			$(elem).attr('title',error.text());
		},
		highlight:function(elem){
			$(elem).css('border','1px dotted red');
			$(elem).removeAttr('title');
		},
		unhighlight:function(elem){
			$(elem).css('border','1px solid #ccc');
			$(elem).removeAttr('title');
		}
	});
	
	$('#authorization_form').submit(function(){
		if(authorization_form.valid()){
			$("#authorization_form").ajaxSubmit(function(data){
				$("#insert_form_page>div").remove();
				$("#insert_form_page").append(data);
				HuaWei.form.authorizationFormCheck();
			});
			return false;
		}
	});
	
	$('#authorization_form a.submit').click(function(){
		$('#authorization_form').submit();
		return false;
	});	
}
HuaWei.page.setDatePickerCN = function(){
	if($.datepicker){
		$.datepicker.regional['zh-CN'] = {
			closeText: '??????',
			prevText: '<??????',
			nextText: '??????>',
			currentText: '??????',
			monthNames: ['??????','??????','??????','??????','??????','??????',
			'??????','??????','??????','??????','?????????','?????????'],
			monthNamesShort: ['???','???','???','???','???','???',
			'???','???','???','???','??????','??????'],
			dayNames: ['?????????','?????????','?????????','?????????','?????????','?????????','?????????'],
			dayNamesShort: ['??????','??????','??????','??????','??????','??????','??????'],
			dayNamesMin: ['???','???','???','???','???','???','???'],
			weekHeader: '???',
			dateFormat: 'yy-mm-dd',
			firstDay: 1,
			isRTL: false,
			showMonthAfterYear: true,
			yearSuffix: '???'};
		$.datepicker.setDefaults($.datepicker.regional['zh-CN']);	
	}
	
}
HuaWei.form.servicePartnersregFormCheck = function(){
	var debug=true;
	$('#servicepartnersreg_form').validate({
		rules:{
			company:{required:true},
			name:{required:true,minlength:2},
			phone:{required:true,telphoneOrmobile:true},
			address:{required:true},
			email:{required:true,email:true},
			developmentprocess:{required:true},
			certification:{required:true},
			technicalforce:{required:true},
			maincase:{required:true},
			appproduct:{required:true},
			code:{required:true}
		},
		debug:debug,
		messages:{
			company:{required:'???????????????????????????'},
			name:{required:'??????????????????????????????',minlength:'???????????????????????????2????????????'},
			phone:{required:'???????????????????????????',telphoneOrmobile:'?????????????????????????????????'},
			address:{required:'???????????????????????????'},
			email:{required:'?????????????????????',email:'???????????????????????????'},
			developmentprocess:{required:'?????????????????????????????????'},
			certification:{required:'????????????????????????????????????'},
			technicalforce:{required:'???????????????????????????'},
			maincase:{required:'?????????????????????????????????'},
			appproduct:{required:'?????????????????????????????????'},
			code:{required:'????????????????????????'}
		},
		errorPlacement:function(error,elem){
			$(elem).css('border','1px dotted red');
			$(elem).attr('title',error.text());
		},
		highlight:function(elem){
			$(elem).css('border','1px dotted red');
			$(elem).removeAttr('title');
		},
		unhighlight:function(elem){
			$(elem).css('border','1px solid #ccc');
			$(elem).removeAttr('title');
		}
	});
	$('#servicepartnersreg_form a.submit').click(function(){
		$('#servicepartnersreg_form').submit();
	})
	
}
HuaWei.form.partnerRegisterFormCheck = function(){
	var debug=false;
	var partnersreg_form = $('#partnersreg_form').validate({
		rules:{
			"recruitVO.assoType":{required:true},
			"recruitVO.companyName":{required:true},
			"recruitVO.phoneNumber":{telphoneOrmobile:true},
			"recruitVO.regionCode":{required:true},
			"recruitVO.countryCode":{required:true},
			"recruitVO.linkManName":{required:true,minlength:2},
			"recruitVO.email":{required:true,email:true},
			"recruitVO.lastYearSaleAmount":{number:true},
			"recruitVO.employeeNumber":{required:true},
			"recruitVO.registerFund":{required:true},
			"recruitVO.coopCallingId":{required:true},
			checkCode:{required:true}		
		},
		debug:debug,
		messages:{
			"recruitVO.assoType":{required:'???????????????????????????'},
			"recruitVO.companyName":{required:'???????????????????????????'},
			 "recruitVO.phoneNumber":{telphoneOrmobile:'?????????????????????????????????'}, 
			"recruitVO.regionCode":{required:'?????????????????????'},
			"recruitVO.countryCode":{required:'?????????????????????'},
			"recruitVO.linkManName":{required:'??????????????????????????????',minlength:'???????????????????????????2????????????'},
			"recruitVO.email":{required:'?????????????????????',email:'?????????????????????????????????'}, 
			"recruitVO.lastYearSaleAmount":{number:'???????????????????????????'},
			"recruitVO.employeeNumber":{required:'??????????????????????????????'},
			"recruitVO.registerFund":{required:'???????????????????????????'},
			"recruitVO.coopCallingId":{required:'?????????????????????'},
			checkCode:{required:'????????????????????????'}
		},
		errorPlacement:function(error,elem){
			$(elem).css('border','1px dotted red');
			$(elem).attr('title',error.text());
		},
		highlight:function(elem){
			$(elem).css('border','1px dotted red');
			$(elem).removeAttr('title');
		},
		unhighlight:function(elem){
			$(elem).css('border','1px solid #ccc');
			$(elem).removeAttr('title');
		}
	});
	
	$('#partnersreg_form').submit(function(){
		if(partnersreg_form.valid()){
			$("#partnersreg_form").ajaxSubmit(function(data){
				$("#insert_form_page>div").remove();
				$("#insert_form_page").append(data);
				HuaWei.form.partnerRegisterFormCheck();
			});
			return false;
		}
	});
	
	$('#partnersreg_form a.submit').click(function(){
		$('#partnersreg_form').submit();
		return false;
	});
	
	var partnersreg_service_form = $('#partnersreg_service_form').validate({
		rules:{
			"recruitVO.assoType":{required:true},
			"recruitVO.companyName":{required:true},
			 "recruitVO.phoneNumber":{telphoneOrmobile:true}, 
			"recruitVO.regionCode":{required:true},
			"recruitVO.countryCode":{required:true},
			"recruitVO.linkManName":{required:true,minlength:2},
			"recruitVO.email":{required:true,email:true},
			
			"recruitVO.employeeNumber":{required:true},
			"recruitVO.registerFund":{required:true},
			"recruitVO.coopCallingId":{required:true},
			"recruitVO.companyAddress":{required:true},
			"recruitVO.compAttestation":{required:true},
			"recruitVO.compTechnic":{required:true},
			"recruitVO.caseInfo":{required:true},
			"recruitVO.coopProduct":{required:true},
			"recruitVO.companyCourse":{required:true},
			checkCode:{required:true}		
		},
		debug:debug,
		messages:{
			"recruitVO.assoType":{required:'???????????????????????????'},
			"recruitVO.companyName":{required:'???????????????????????????'},
			  "recruitVO.phoneNumber":{telphoneOrmobile:'?????????????????????????????????'}, 
			"recruitVO.regionCode":{required:'?????????????????????'},
			"recruitVO.countryCode":{required:'?????????????????????'},
			"recruitVO.linkManName":{required:'??????????????????????????????',minlength:'???????????????????????????2????????????'},
			"recruitVO.email":{required:'?????????????????????',email:'???????????????????????????'}, 
			
			"recruitVO.employeeNumber":{required:'??????????????????????????????'},
			"recruitVO.registerFund":{required:'???????????????????????????'},
			"recruitVO.coopCallingId":{required:'?????????????????????'},
			"recruitVO.companyAddress":{required:'???????????????????????????'}, 
			"recruitVO.compAttestation":{required:'????????????????????????????????????'}, 
			"recruitVO.compTechnic":{required:'?????????????????????????????????'},
			"recruitVO.caseInfo":{required:'?????????????????????????????????'}, 
			"recruitVO.coopProduct":{required:'?????????????????????????????????'},
			"recruitVO.companyCourse":{required:'?????????????????????????????????'},
			checkCode:{required:'????????????????????????'}
		},
		errorPlacement:function(error,elem){
			$(elem).css('border','1px dotted red');
			$(elem).attr('title',error.text());
		},
		highlight:function(elem){
			$(elem).css('border','1px dotted red');
			$(elem).removeAttr('title');
		},
		unhighlight:function(elem){
			$(elem).css('border','1px solid #ccc');
			$(elem).removeAttr('title');
		}
	});
	
	$('#partnersreg_service_form').submit(function(){
		if(partnersreg_service_form.valid()){
			$("#partnersreg_service_form").ajaxSubmit(function(data){
				$("#insert_form_page>div").remove();
				$("#insert_form_page").append(data);
				HuaWei.form.partnerRegisterFormCheck();
			});
			return false;
		}
	});
	
	$('#partnersreg_service_form a.submit').click(function(){
		$('#partnersreg_service_form').submit();
		return false;
	})

}
HuaWei.form.partnersInfoFormCheck = function(){
	var debug=false;
	var partnersinfo_form = $('#partnersinfo_form').validate({
		rules:{
			"partnerInfoMaintainVO.mainApplyType":{required:true},
			"partnerInfoMaintainVO.companyName":{required:true},
			"partnerInfoMaintainVO.linkman":{required:true,minlength:2},
			"partnerInfoMaintainVO.linkmanMail":{required:true,email:true},
			"partnerInfoMaintainVO.linkmanTelephone":{required:true,telphoneOrmobile:true},
			"partnerInfoMaintainVO.contentCause":{required:true},
			checkCode:{required:true}		
		},
		debug:debug,
		messages:{
			"partnerInfoMaintainVO.mainApplyType":{required:'???????????????????????????'},
			"partnerInfoMaintainVO.companyName":{required:'????????????????????????????????????'},
			"partnerInfoMaintainVO.linkman":{required:'??????????????????????????????',minlength:'???????????????????????????2????????????'},
			"partnerInfoMaintainVO.linkmanMail":{required:'?????????????????????',email:'???????????????????????????'}, 
			"partnerInfoMaintainVO.linkmanTelephone":{required:'??????????????????????????????',telphoneOrmobile:'????????????????????????????????????'},
			"partnerInfoMaintainVO.contentCause":{required:'??????????????????????????????????????????'}, 
			checkCode:{required:'????????????????????????'}
		},
		errorPlacement:function(error,elem){
			$(elem).css('border','1px dotted red');
			$(elem).attr('title',error.text());
		},
		highlight:function(elem){
			$(elem).css('border','1px dotted red');
			$(elem).removeAttr('title');
		},
		unhighlight:function(elem){
			$(elem).css('border','1px solid #ccc');
			$(elem).removeAttr('title');
		}
	});
	
	$('#partnersinfo_form').submit(function(){
		if(partnersinfo_form.valid()){
			$("#partnersinfo_form").ajaxSubmit(function(data){
				$("#insert_form_page>div").remove();
				$("#insert_form_page").append(data);
				HuaWei.form.partnersInfoFormCheck();
			});
			return false;
		}
	});
	
	$('#partnersinfo_form a.submit').click(function(){
		$('#partnersinfo_form').submit();
		return false;
	})
	
}
HuaWei.form.licenseTytxFormCheck = function(){
	var debug=false;
	var license_tytx = $('#license_tytx').validate({
		rules:{
			"licenseApplyVO.regionCode":{required:true},
			"licenseApplyVO.countryCode":{required:true},
			"licenseApplyVO.proposerName":{required:true},
			"licenseApplyVO.phone":{required:true,telphoneOrmobile:true},
			"licenseApplyVO.proposerCompany":{required:true},
			"licenseApplyVO.bargainNum":{required:true},
			"licenseApplyVO.stationName":{required:true},
			"licenseApplyVO.maxRegisterNum":{required:true},
			"licenseApplyVO.maxCallNum":{required:true},
			"licenseApplyVO.mcuNum":{required:true},
			"licenseApplyVO.maxMeetingNum":{required:true},
			"licenseApplyVO.email":{required:true,email:true},
			"licenseApplyVO.clientNum":{required:true},
			"file":{required:true},
			checkCode:{required:true}
		},
		debug:debug,
		messages:{
			"licenseApplyVO.regionCode":{required:'?????????????????????'},
			"licenseApplyVO.countryCode":{required:'?????????????????????'},
			"licenseApplyVO.proposerName":{required:'??????????????????????????????'},
			"licenseApplyVO.phone":{required:'??????????????????????????????',telphoneOrmobile:'????????????????????????????????????'},
			"licenseApplyVO.proposerCompany":{required:'??????????????????????????????'},			
			"licenseApplyVO.bargainNum":{required:'?????????????????????'},
			"licenseApplyVO.stationName":{required:'???????????????????????????'},
			"licenseApplyVO.maxRegisterNum":{required:'???????????????????????????'},
			"licenseApplyVO.maxCallNum":{required:'???????????????????????????'},
			"licenseApplyVO.mcuNum":{required:'??????MCU??????????????????'},
			"licenseApplyVO.maxMeetingNum":{required:'????????????????????????????????????'},
			"licenseApplyVO.clientNum":{required:'???????????????(????????????)????????????'},
			"licenseApplyVO.email":{required:'?????????????????????',email:'?????????????????????????????????'},
			"file":{required:'??????????????????License??????'},
			checkCode:{required:'????????????????????????'}
			
		},
		errorPlacement:function(error,elem){
			$(elem).css('border','1px dotted red');
			$(elem).attr('title',error.text());
		},
		highlight:function(elem){
			$(elem).css('border','1px dotted red');
			$(elem).removeAttr('title');
		},
		unhighlight:function(elem){
			$(elem).css('border','1px solid #ccc');
			$(elem).removeAttr('title');
		}
	});
	
	$('#license_tytx').submit(function(){
		if(license_tytx.valid()){
			$("#license_tytx").ajaxSubmit(function(data){
				$("#insert_form_page>div").remove();
				$("#insert_form_page").append(data);
				HuaWei.form.licenseTytxFormCheck();
			});
			return false;
		}
	});
	
	$('#license_tytx').parent().find('a.submit').click(function(){
		$('#license_tytx').submit();
		return false;
	})
}


HuaWei.form.licenseMcuFormCheck = function(){
	var debug=false;
	var license_mcu = $('#license_mcu').validate({
		rules:{
			"licenseApplyVO.regionCode":{required:true},
			"licenseApplyVO.countryCode":{required:true},
			"licenseApplyVO.proposerName":{required:true},
			"licenseApplyVO.phone":{required:true,telphoneOrmobile:true},
			"licenseApplyVO.email":{required:true,email:true},
			"licenseApplyVO.proposerCompany":{required:true},
			"licenseApplyVO.bargainNum":{required:function(){if(document.getElementById('radio_2').checked==false){return true;}else{return false;}}},
			"licenseApplyVO.bargainNumFront":{required:function(){if(document.getElementById('radio_2').checked==true){return true;}else{return false;}}},
			"licenseApplyVO.bargainNumBack":{required:function(){if(document.getElementById('radio_2').checked==true){return true;}else{return false;}}},
			"licenseApplyVO.stationName":{required:true},
			"licenseApplyVO.esnInfo":{required:true},
			"licenseApplyVO.lacInfo":{required:true},
			 file:{required:true},
			 checkCode:{required:true}
		},
		debug:debug,
		messages:{
			"licenseApplyVO.regionCode":{required:'?????????????????????'},
			"licenseApplyVO.countryCode":{required:'?????????????????????'},
			"licenseApplyVO.proposerName":{required:'??????????????????????????????'},
			"licenseApplyVO.phone":{required:'??????????????????????????????',telphoneOrmobile:'????????????????????????????????????'},
			"licenseApplyVO.email":{required:'?????????????????????',email:'?????????????????????????????????'},
			"licenseApplyVO.proposerCompany":{required:'??????????????????????????????'},			
			"licenseApplyVO.bargainNum":{required:'????????????????????????'},
			"licenseApplyVO.bargainNumFront":{required:'???????????????????????????'},
			"licenseApplyVO.bargainNumBack":{required:'???????????????????????????'},
			"licenseApplyVO.stationName":{required:'???????????????????????????'},
			"licenseApplyVO.esnInfo":{required:'ESN?????????????????????'},
			"licenseApplyVO.lacInfo":{required:'LAC?????????????????????'},
			 file:{required:'????????????Excel?????????'},
			 checkCode:{required:'????????????????????????'}
		},
		errorPlacement:function(error,elem){
			$(elem).css('border','1px dotted red');
			$(elem).attr('title',error.text());
		},
		highlight:function(elem){
			$(elem).css('border','1px dotted red');
			$(elem).removeAttr('title');
		},
		unhighlight:function(elem){
			$(elem).css('border','1px solid #ccc');
			$(elem).removeAttr('title');
		}
	});
	$('#license_mcu input[name="radio"]').each(function(index, element) {
        $(this).click(function(){
			if($(this).val() == '1'){
				$('#contractnum_show').hide();
				$('#beforecontractnum_show').show();
				$('#aftercontractnum_show').show();
			}else{
				$('#contractnum_show').show();
				$('#beforecontractnum_show').hide();
				$('#aftercontractnum_show').hide();				
			}
		});
    });
    
    $('#license_mcu').submit(function(){
		if(license_mcu.valid()){
			$("#license_mcu").ajaxSubmit(function(data){
				$("#insert_form_page>div").remove();
				$("#insert_form_page").append(data);
				HuaWei.form.licenseMcuFormCheck();
			});
			return false;
		}
	});
    
	$('#license_mcu').parent().find('a.submit').click(function(){
		$('#license_mcu').submit();
		return false;
	})
}

HuaWei.form.licenseUniFormCheck = function(){
	var debug=false;
	var license_uni_form = $('#license_uni_form').validate({
		rules:{
			"licenseApplyVO.agentName":{required:true},
			"licenseApplyVO.edition":{required:true},
			"licenseApplyVO.proposerName":{required:true},
			"licenseApplyVO.phone":{required:true,telphoneOrmobile:true},
			"licenseApplyVO.email":{required:true,email:true},
			"licenseApplyVO.proposerCompany":{required:true},
			"licenseApplyVO.bargainNum":{required:true},
			"licenseApplyVO.stationName":{required:true},
			"licenseApplyVO.esnInfo":{required:true},
			"licenseApplyVO.applyType":{required:true},
			 file:{required:true},
			 checkCode:{required:true}
		},
		debug:debug,
		messages:{
			"licenseApplyVO.agentName":{required:'??????????????????????????????'},
			"licenseApplyVO.edition":{required:'??????License????????????????????????'},
			"licenseApplyVO.proposerName":{required:'??????????????????????????????'},
			"licenseApplyVO.phone":{required:'??????????????????????????????',telphoneOrmobile:'????????????????????????????????????'},
			"licenseApplyVO.email":{required:'?????????????????????',email:'?????????????????????????????????'},
			"licenseApplyVO.proposerCompany":{required:'??????????????????????????????'},			
			"licenseApplyVO.bargainNum":{required:'????????????????????????'},
			"licenseApplyVO.stationName":{required:'???????????????????????????'},
			"licenseApplyVO.esnInfo":{required:'ESN?????????????????????'},
			"licenseApplyVO.applyType":{required:'?????????????????????????????????'},
			 file:{required:'????????????Excel?????????'},
			 checkCode:{required:'????????????????????????'}
		},
		errorPlacement:function(error,elem){
			$(elem).css('border','1px dotted red');
			$(elem).attr('title',error.text());
		},
		highlight:function(elem){
			$(elem).css('border','1px dotted red');
			$(elem).removeAttr('title');
		},
		unhighlight:function(elem){
			$(elem).css('border','1px solid #ccc');
			$(elem).removeAttr('title');
		}
	});
	
	$('#license_uni_form').submit(function(){
		if(license_uni_form.valid()){
			$("#license_uni_form").ajaxSubmit(function(data){
				$("#insert_form_page>div").remove();
				$("#insert_form_page").append(data);
				HuaWei.form.licenseUniFormCheck();
			});
			return false;
		}
	});
	
	$('#license_uni_form').parent().find('a.submit').click(function(){
		$('#license_uni_form').submit();
		return false;
	})
}

HuaWei.form.licenseLlzxFormCheck = function(){
	var debug=false;
	var license_llzx = $('#license_llzx').validate({
		rules:{
			"licenseApplyVO.account":{required:true},
			"licenseApplyVO.proposerName":{required:true},
			"licenseApplyVO.phone":{required:true,telphoneOrmobile:true},
			"licenseApplyVO.email":{required:true,email:true},
			"licenseApplyVO.applyType":{required:true},
			"licenseApplyVO.bargainNum":{required:true},
			"licenseApplyVO.softwareCode":{required:true},
			"licenseApplyVO.softwareCodeNum":{required:true},
			"licenseApplyVO.validateBillNum":{required:true},
			 file:{required:true},
			 checkCode:{required:true}
		},
		debug:debug,
		messages:{
			"licenseApplyVO.account":{required:'?????????????????????'},
			"licenseApplyVO.proposerName":{required:'??????????????????????????????'},
			"licenseApplyVO.phone":{required:'??????????????????????????????',telphoneOrmobile:'????????????????????????????????????'},
			"licenseApplyVO.email":{required:'?????????????????????',email:'?????????????????????????????????'},
			"licenseApplyVO.applyType":{required:'License??????????????????????????????'},			
			"licenseApplyVO.bargainNum":{required:'????????????????????????'},
			"licenseApplyVO.softwareCode":{required:'???????????????????????????'},
			"licenseApplyVO.softwareCodeNum":{required:'?????????????????????????????????'},
			"licenseApplyVO.validateBillNum":{required:'License??????????????????'},
			 file:{required:'????????????Excel?????????'},
			 checkCode:{required:'????????????????????????'}
		},
		errorPlacement:function(error,elem){
			$(elem).css('border','1px dotted red');
			$(elem).attr('title',error.text());
		},
		highlight:function(elem){
			$(elem).css('border','1px dotted red');
			$(elem).removeAttr('title');
		},
		unhighlight:function(elem){
			$(elem).css('border','1px solid #ccc');
			$(elem).removeAttr('title');
		}
	});
	
	$('#license_llzx').submit(function(){
		if(license_llzx.valid()){
			$("#license_llzx").ajaxSubmit(function(data){
				$("#insert_form_page>div").remove();
				$("#insert_form_page").append(data);
				HuaWei.form.licenseLlzxFormCheck();
			});
			return false;
		}
	});
	
	$('#license_llzx').parent().find('a.submit').click(function(){
		$('#license_llzx').submit();
		return false;
	})
}
HuaWei.form.licenseDnmFormCheck = function(){
	var debug=false;
	var license_dnm = $('#license_dnm').validate({
		rules:{
			"licenseApplyVO.agentName":{required:true},
			"licenseApplyVO.proposerName":{required:true},
			"licenseApplyVO.phone":{required:true,telphoneOrmobile:true},
			"licenseApplyVO.email":{required:true,email:true},
			"licenseApplyVO.bargainNum":{required:true},
			"licenseApplyVO.stationName":{required:true},
			"licenseApplyVO.productName":{required:true},
			"licenseApplyVO.productType":{required:true},
			"licenseApplyVO.esnInfo":{required:true},
			"licenseApplyVO.lacInfo":{required:true},
			 file:{required:true},
			 checkCode:{required:true}
		},
		debug:debug,
		messages:{
			"licenseApplyVO.agentName":{required:'??????????????????????????????'},
			"licenseApplyVO.proposerName":{required:'??????????????????????????????'},
			"licenseApplyVO.phone":{required:'??????????????????????????????',telphoneOrmobile:'????????????????????????????????????'},
			"licenseApplyVO.email":{required:'?????????????????????',email:'?????????????????????????????????'},
			"licenseApplyVO.bargainNum":{required:'????????????????????????'},
			"licenseApplyVO.stationName":{required:'???????????????????????????'},
			"licenseApplyVO.productName":{required:'???????????????????????????'},
			"licenseApplyVO.productType":{required:'???????????????????????????'},
			"licenseApplyVO.esnInfo":{required:'ESN?????????????????????'},
			"licenseApplyVO.lacInfo":{required:'LAC?????????????????????'},
			 file:{required:'????????????Excel?????????'},
			 checkCode:{required:'????????????????????????'}
		},
		errorPlacement:function(error,elem){
			$(elem).css('border','1px dotted red');
			$(elem).attr('title',error.text());
		},
		highlight:function(elem){
			$(elem).css('border','1px dotted red');
			$(elem).removeAttr('title');
		},
		unhighlight:function(elem){
			$(elem).css('border','1px solid #ccc');
			$(elem).removeAttr('title');
		}
	});
	
	$('#license_dnm').submit(function(){
		if(license_dnm.valid()){
			$("#license_dnm").ajaxSubmit(function(data){
				$("#insert_form_page>div").remove();
				$("#insert_form_page").append(data);
				HuaWei.form.licenseDnmFormCheck();
			});
			return false;
		}
	});
	
	$('#license_dnm').parent().find('a.submit').click(function(){
		$('#license_dnm').submit();
		return false;
	})
	
}
HuaWei.form.trainLoginFormCheck = function(){
	var debug=true;
	$('#login_form').validate({
		rules:{
			name:{required:true},
			password:{required:true},
			code:{required:true}		
		},
		debug:debug,
		messages:{
			name:{required:'?????????????????????'},
			password:{required:'?????????????????????'},
			code:{required:'????????????????????????'}
		},
		errorPlacement:function(error,elem){
			$(elem).css('border','1px dotted red');
			$(elem).attr('title',error.text());
		},
		highlight:function(elem){
			$(elem).css('border','1px dotted red');
			$(elem).removeAttr('title');
		},
		unhighlight:function(elem){
			$(elem).css('border','1px solid #ccc');
			$(elem).removeAttr('title');
		}
	});
	$('#trainLoginForm a.submit').click(function(){
		$('#login_form').submit();
	})
	
}
HuaWei.form.certificateQueryFormCheck = function(){		
	var debug=false;
	var app_certificate_query = $('#app_certificate_query').validate({
		rules:{
			"certificateVO.certificateNumber":{required:true}
		},
		debug:debug,
		messages:{
			"certificateVO.certificateNumber":{required:'???????????????????????????'}
		},
		errorPlacement:function(error,elem){
			$(elem).css('border','1px dotted red');
			$(elem).attr('title',error.text());
		},
		highlight:function(elem){
			$(elem).css('border','1px dotted red');
			$(elem).removeAttr('title');
		},
		unhighlight:function(elem){
			$(elem).css('border','1px solid #ccc');
			$(elem).removeAttr('title');
		}
	});
	
	$('#app_certificate_query').submit(function(){
		if(app_certificate_query.valid()){
			$("#app_certificate_query").ajaxSubmit(function(data){
				$("#insert_form_page>div").remove();
				$("#insert_form_page").append(data);
				HuaWei.form.certificateQueryFormCheck();
			});
			return false;
		}
	});
	
	$('#app_certificate_query a.submit').click(function(){
		$('#app_certificate_query').submit();
		return false;
	});
}
HuaWei.form.feedBackFormCheck = function(){
	var debug=false;
	var fdf = $('#feedback_form').validate({
		rules:{
			"feedbackVO.userName":{required:true,minlength:2},
			"feedbackVO.phone":{required:true,telphoneOrmobile:true},
			"feedbackVO.email":{required:true,email:true},
			"feedbackVO.content":{required:true},
			checkCodeFeedback:{required:true}		
		},
		debug:debug,
		messages:{
			"feedbackVO.userName":{required:'?????????????????????',minlength:'??????????????????2????????????'},
			"feedbackVO.phone":{required:'?????????????????????',telphoneOrmobile:'?????????????????????????????????'},
			"feedbackVO.email":{required:'?????????????????????',email:'?????????????????????????????????'},
			"feedbackVO.content":{required:'???????????????????????????'},
			checkCodeFeedback:{required:'????????????????????????'}
		},
		errorPlacement:function(error,elem){
			$(elem).css('border','1px dotted red');
			$(elem).attr('title',error.text());
		},
		highlight:function(elem){
			$(elem).css('border','1px dotted red');
			$(elem).removeAttr('title');
		},
		unhighlight:function(elem){
			$(elem).css('border','1px solid #ccc');
			$(elem).removeAttr('title');
		}
	});
	
	$('#feedback_form').submit(function(){
		if(fdf.valid()){
			var url=document.getElementsByName("url")[0].value;
			$('#feedback_form').ajaxSubmit({
				type: "POST",
			   	url: url+"/feedback.do?method=addFeedback",
				success:function(responsetxt){
					if(responsetxt=="isTrue")	{
						alert("???????????????????????????????????????????????????");
						window.location.reload();
					}
					if(responsetxt=="isFalse"){
						alert("???????????????,??????????????????");
					}		
				}
			});
		}
		return false;
	});
	$('#feedback_form a.submit').click(function(){
		window.setTimeout(function(){$('#feedback_form').trigger('submit');},500); 
	})
}

HuaWei.form.appCertificateFormCheck = function(){
	var debug=false;
	var app_certificate_form_step1 = $('#app_certificate_form_step1').validate({
		rules:{
			"certificateVO.lastName":{required:true},
			"certificateVO.firstName":{required:true},
			"certificateVO.name":{required:true},
			"certificateVO.certificateType":{required:true},
			"certificateVO.certificateCode":{required:true},
			"certificateVO.addrs":{required:true},
			"certificateVO.postalcode":{required:true},
			"certificateVO.phone":{required:true,telphoneOrmobile:true},
			"certificateVO.email":{required:true,email:true}	
		},
		debug:debug,
		messages:{
			"certificateVO.lastName":{required:'??????????????????????????????'},
			"certificateVO.firstName":{required:'??????????????????????????????'},
			"certificateVO.name":{required:'???????????????????????????????????????'},
			"certificateVO.certificateType":{required:'???????????????????????????'},
			"certificateVO.certificateCode":{required:'???????????????????????????'},
			"certificateVO.addrs":{required:'?????????????????????????????????'},
			"certificateVO.postalcode":{required:'???????????????????????????'},
			"certificateVO.phone":{required:'??????/?????????????????????',telphoneOrmobile:'????????????????????????/???????????????'},
			"certificateVO.email":{required:'?????????????????????',email:'???????????????????????????'}
		},
		errorPlacement:function(error,elem){
			$(elem).css('border','1px dotted red');
			$(elem).attr('title',error.text());
		},
		highlight:function(elem){
			$(elem).css('border','1px dotted red');
			$(elem).removeAttr('title');
		},
		unhighlight:function(elem){
			$(elem).css('border','1px solid #ccc');
			$(elem).removeAttr('title');
		}
	});
	
	$('#app_certificate_form_step1').submit(function(){
		if(app_certificate_form_step1.valid()){
			$("#app_certificate_form_step1").ajaxSubmit(function(data){
				$("#insert_form_page>div").remove();
				$("#insert_form_page").append(data);
				HuaWei.form.appCertificateFormCheck();
			});
			return false;
		}
	});
	
	$('#app_certificate_form_step1 a.redsubmit').click(function(){
		$('#app_certificate_form_step1').submit();
		return false;
	});
	
	var app_certificate_form_step2 = $('#app_certificate_form_step2').validate({
		rules:{
			"certificateVO.certificateID":{required:true}
		},
		debug:debug,
		messages:{
			"certificateVO.certificateID":{required:'????????????????????????????????????'}
		},
		errorPlacement:function(error,elem){
			$(elem).css('border','1px dotted red');
			$(elem).attr('title',error.text());
		},
		highlight:function(elem){
			$(elem).css('border','1px dotted red');
			$(elem).removeAttr('title');
		},
		unhighlight:function(elem){
			$(elem).css('border','1px solid #ccc');
			$(elem).removeAttr('title');
		}
	});
	
	$('#app_certificate_form_step2').submit(function(){
		if(app_certificate_form_step2.valid()){
			$("#app_certificate_form_step2").ajaxSubmit(function(data){
				$("#insert_form_page>div").remove();
				$("#insert_form_page").append(data);
				HuaWei.form.appCertificateFormCheck();
			});
			return false;
		}
	});
	
	$('#app_certificate_form_step2 a.whitesubmit').click(function(){
    	document.certificateForm.method.value="jumpCertificateApply";
		$('#app_certificate_form_step2').submit();
		return false;
	});
	$('#app_certificate_form_step2 a.redsubmit').click(function(){
		$('#app_certificate_form_step2').submit();
		return false;
	});
	
	
	
	var app_certificate_form_step3 = function(){
		var radios;
	    var selectedRule = 0;
		if(document.getElementById("id")!=null){
	    	document.getElementsByName("certificateRuleID")[0].value=document.getElementById("id").value;
	    	selectedRule=document.getElementById("id").value;
	    }
	     radios = document.getElementsByName("certificateVO.certificateRuleID");
	    for (var i = 0; i < radios.length; i++) {
	        if (radios[i].checked == true) {
	            selectedRule = radios[i].value;
	        }
	    }
	    var element = null;
	    var prefix = "as[" + selectedRule + "]";
	    var boo=true;
	    for (var i = 0; i < 20; i++) {
	        element = document.getElementsByName(prefix + "[" + i + "].certificateVO.examineeNumber")[0];
	        if (element == null) {
	            break;
	        }
	        if(trim(element.value)==null || trim(element.value)==""){
				$(element).css('border','1px dotted red');
				$(element).attr('title',message_title1);
				boo=false;
			}
	        element = document.getElementsByName(prefix + "[" + i + "].certificateVO.registerNumber")[0];
	        if (element == null) {
	            break;
	        }
	        if(trim(element.value)==null || trim(element.value)==""){
				$(element).css('border','1px dotted red');
				$(element).attr('title',message_title2);
				boo=false;
			}
	    }
	    for (var i = 0; i < 20; i++) {
	        element = document.getElementsByName("as[" + selectedRule + "][" + i + "].certificateVO.examineeNumber")[0];
	        if (element == null) {
	            break;
	        }
		    createHidden("attestScores[" + i + "].examineeNumber", element.value);
		    element = document.getElementsByName("as[" + selectedRule + "][" + i + "].certificateVO.registerNumber")[0];
		    createHidden("attestScores[" + i + "].registerNumber", element.value);
		    element = document.getElementsByName("as[" + selectedRule + "][" + i + "].examRuleID")[0];
		    createHidden("attestScores[" + i + "].examRuleID", element.value);
		   
	    }
		return boo;
	}
	
	$('#app_certificate_form_step3 a.whitesubmit').click(function(){
		document.certificateForm.method.value="certificateApplyOne";
		$("#app_certificate_form_step3").ajaxSubmit(function(data){
			$("#insert_form_page>div").remove();
			$("#insert_form_page").append(data);
			HuaWei.form.appCertificateFormCheck();
		});
		return false;
	});

	$('#app_certificate_form_step3 a.redsubmit').click(function(){
		document.certificateForm.method.value="toCertificateApply";
		if(app_certificate_form_step3()){
			$("#app_certificate_form_step3").ajaxSubmit(function(data){
				$("#insert_form_page>div").remove();
				$("#insert_form_page").append(data);
				HuaWei.form.appCertificateFormCheck();
			});
			return false;
		}
	});
}

HuaWei.form.sellerqueryFormCheck = function(){
	var debug=false;
	var sellerquery_form = $('#sellerquery_form').validate({
		rules:{
			"quChannelVO.assoInfoType":{required:true},
			"quChannelVO.regionId":{required:true},
			"quChannelVO.countryId":{required:true}
		},
		debug:debug,
		messages:{
			"quChannelVO.assoInfoType":{required:'?????????????????????????????????'},
			"quChannelVO.regionId":{required:'?????????????????????'},
			"quChannelVO.countryId":{required:'?????????????????????'}
		},
		errorPlacement:function(error,elem){
			$(elem).css('border','1px dotted red');
			$(elem).attr('title',error.text());
		},
		highlight:function(elem){
			$(elem).css('border','1px dotted red');
			$(elem).removeAttr('title');
		},
		unhighlight:function(elem){
			$(elem).css('border','1px solid #ccc');
			$(elem).removeAttr('title');
		}
	});
	
	$('#sellerquery_form').submit(function(){
		if(sellerquery_form.valid()){
			$("#sellerquery_form").ajaxSubmit(function(data){
				$("#insert_form_page>div").remove();
				$("#insert_form_page").append(data);
				bind_change();
			});
			return false;
		}
	});
	
	$('#sellerquery_form a.submit').click(function(){
		$('#sellerquery_form').submit();
		return false;
	});
}

HuaWei.page.userCustomized = function(){
	$('div.customized input[type="checkbox"]').each(function(index, element) {
        $(this).attr('id','c_'+index);
		$(this).siblings('label').attr('for','c_'+index);
    });
	$('ul.child_ul li.children').each(function(index, element) {
		var w = ($(this).width()/112);
		if(w<=1)w=1;
		else w = parseInt(w)+1;
		$(this).addClass('w'+w*120);
    });
	var node,child,children
	$('ul.father_ul').each(function(index, element) {
        $(this).find('li:eq(0) input:[type="checkbox"]:eq(0)').change(function(){
			if($(this).is(':checked')){
				$(this).parent().parent().find('input:[type="checkbox"]').attr('checked','true');
			}else{
				$(this).parent().parent().find('input:[type="checkbox"]').removeAttr('checked');	
			}
		});
		$(this).find('ul.child_ul').each(function(i, l) {
            $(this).find('li:eq(0) input[type="checkbox"]').change(function(){
				if($(this).is(':checked')){
					$(this).parent().parent().parent().find('input:[type="checkbox"]:eq(0)').attr('checked','true');
					$(this).parent().siblings('li.children').find('input:[type="checkbox"]').attr('checked','true');
				}else{					
					$(this).parent().siblings('li.children').find('input:[type="checkbox"]').removeAttr('checked');
					if($(this).parent().parent().parent().find('ul.child_ul input:checked').length<1){
						$(this).parent().parent().parent().find('input:[type="checkbox"]:eq(0)').removeAttr('checked');	
					}
				}
			});	
			$(this).find('li:gt(0) input[type="checkbox"]').change(function(){
				if($(this).is(':checked')){
					$(this).parent().parent().parent().find('input:[type="checkbox"]:eq(0)').attr('checked','true');
					$(this).parent().parent().find('input:[type="checkbox"]:eq(0)').attr('checked','true');
				}else{					
					if($(this).parent().parent().find('li.children input:checked').length<1){
						$(this).parent().parent().find('input:[type="checkbox"]:eq(0)').removeAttr('checked');	
					}
					if($(this).parent().parent().parent().find('ul.child_ul input:checked').length<1){
						$(this).parent().parent().parent().find('input:[type="checkbox"]:eq(0)').removeAttr('checked');	
					}
				}
			});
			if($(this).find('li.child input[type="checkbox"]').is(':checked')){
				var a = $(this).find('li.child input[type="checkbox"]');
				a.parent().parent().siblings('li.node').find('input:[type="checkbox"]').attr('checked','true');
				a.parent().siblings('li.children').find('input:[type="checkbox"]').attr('checked','true');
			}
			$(this).find('li.children input[type="checkbox"]').each(function(c, f) {
                if($(this).is(':checked')){
					$(this).parent().parent().siblings('li.node').find('input:[type="checkbox"]').attr('checked','true');
					$(this).parent().siblings('li.child').find('input:[type="checkbox"]').attr('checked','true');
				}
            });			
        });
    });	
}
HuaWei.page.distributorFormCheck = function(){
	if($('#distributor_reg_form').length>0){
		$('#distributor_reg_form .dateinput input').datepicker({"dateFormat":"yy-mm-dd","showAnim":'slideDown'});
		$('#distributor_reg_form .clickdate:eq(0)').click(function(){$('#distributor_reg_form .dateinput:eq(0) input').trigger('focus')});
		$('#distributor_reg_form .clickdate:eq(1)').click(function(){$('#distributor_reg_form .dateinput:eq(1) input').trigger('focus')});
	}
		
}

HuaWei.page.flashVedioPlayer = function(id,src,w,h,autoplay){
	 var ap = autoplay||true;
	 var video_width=w; 
	 var video_height=h;
	 var skinSrc='/ilink'+g_HttpRelativeWebRoot + 'groups/entwebtemplate/documents/enterprise_webasset/ent_cn_huaweie.zip'; 
	 var swfPlayer='/ilink'+g_HttpRelativeWebRoot + 'groups/entwebtemplate/documents/enterprise_webasset/ent_cn_swf_player.swf';
	 
	 var player_flash = jwplayer(id).setup({
		 'stretching': 'exactfit',
		 'controlbar':'over',
		 'controlbar.idlehide':'true',
		 'width': video_width,
		 'height': video_height,
		 'file': src,
		 'skin':skinSrc,
		 'autostart' :ap,
		 plugins:{gapro: { accountid: "UA-7728030-4" }},
		 modes: [{type: 'flash', src:swfPlayer },{type: 'html5',config:{'file': src,'provider': 'video'}},{type: 'download'}]
	 });
	 return player_flash;
}
HuaWei.page.flashVedioPlayerInit = function(){
	$('a.vedioparam').fancybox({width:560,height:600,autoDimensions:false});
	$('a.vedioparam').attr("href","#flash_player");
	$('a.vedioplay').each(function(index, element) {
		$(this).click(function(){
			var v = $(this).parent().find('.vedioparam:eq(0)');		
			HuaWei.page.flashVedioPlayer('flash_player',v.attr('flafile'),v.attr('vediowidth'),v.attr('vedioheight'),'true');
			$('#flash_player').css({'width':v.attr('vediowidth')+'px','height':v.attr('vedioheight')+'px'});
			$('a.vedioparam').fancybox({width:v.attr('vediowidth'),height:v.attr('vedioheight'),autoDimensions:false});
			v.trigger('click');
		});
    });
}
HuaWei.page.contactUsMapInit = function(){
	var mapcurrent = HuaWei.page.getQueryValue(window.location.href,'map');		
	if(mapcurrent){
		mapcurrent = $('#contactus_map a.maplink:eq('+mapcurrent+')')
		mapcurrent.addClass('mapcurrent');
		$('#'+mapcurrent.attr('formap')).show();
	}
	$('#contactus_map a.maplink').each(function(index, element) {
        var w = $(this).width()/2;
		var x = parseInt($(this).attr('x')) - w;
		$(this).css({left:x+'px',top:$(this).attr('y')+'px',visibility:'visible'});
		$(this).hover(function(){
			if(!$(this).hasClass('mapcurrent')){				
				if(mapcurrent)$('#'+mapcurrent.attr('formap')).hide();
				$('#'+$(this).attr('formap')).fadeIn(400);
			}
		},function(){
			$(this).parent().find('div').stop(true,true);
			if(!$(this).hasClass('mapcurrent')){
				$('#'+$(this).attr('formap')).fadeOut(400);
			}
			if(mapcurrent)$('#'+mapcurrent.attr('formap')).fadeIn(400);
		});
    });
	$('a.hidedetails').each(function(index, element) {
		$(this).attr('index',index);
        $(this).click(function(){
			$('.introduction_contact .country:eq('+$(this).attr('index')+') a:eq(0)').trigger('click');
		});
    });
	$('.introduction_contact .country').each(function(index, element) {
        $(this).find('a:eq(0)').attr('index',index);
		$(this).find('a:eq(0)').click(function(){
			var aindex = $(this).attr('index');
			var cd = $('.introduction_contact .country_details:eq('+aindex+')');
			$('.introduction_contact .country a').removeClass('clicked');			
			$(this).addClass('clicked');
			if(cd.is(':visible')){
				cd.slideUp(400,'easeInOutExpo');
				$('.introduction_contact .country a').removeClass('clicked');
			}else{
				$('.introduction_contact .country_details:visible').slideUp(400,'easeInOutExpo');
				cd.slideDown(400,'easeInOutExpo');
			}
		});
    });
	
	$('#foot_maplink a').each(function(index, element) {
        $(this).hover(function(){
			$('#foot_map div:visible').fadeOut(400);
			$('#foot_map .foot_map'+$(this).attr('backgroundindex')).fadeIn(400);
		},function(){			
			$('#foot_map div').stop(true,true);
			$('#foot_map div:visible').fadeOut(400);
		});
    });
}

HuaWei.page.publicCommentonInit = function(){
	$('a.commenton').fancybox();	
	HuaWei.page.publicInputFocus('.pinglunarea','?????????????????????????????????????????????????????????','#333','#ccc',function(){$('.pinglunarea').css('backgroundColor','#fff')},function(){$('.pinglunarea').css('backgroundColor','#f4f4f4')});
	$('a.commenton').click(function(){		
		$('#public_commenton h2.commenton_title').html($(this).parent().find('a:eq(0)').text());
	});
}
HuaWei.page.publicInputFocusInit = function(){
	HuaWei.page.publicInputFocus('#pinglun','?????????????????????????????????????????????????????????','#333','#ccc',function(){$('#pinglun').css('backgroundColor','#fff')},function(){$('#pinglun').css('backgroundColor','#f4f4f4')});
	HuaWei.page.publicInputFocus('div.solution_search input','','#000','#000',function(){$('div.solution_search a:eq(0)').css('background','url(/ilink'+g_HttpRelativeWebRoot+'groups/entwebtemplate/documents/enterprise_webasset/ent_cn_img_search_hover.png) left top no-repeat scroll transparent')},function(){$('div.solution_search a:eq(0)').css('background','transparent')});
	HuaWei.page.publicInputFocus('div.doc_input input','????????????','#666','#666',function(){$('div.doc_input a:eq(0)').css('background','url(/ilink'+g_HttpRelativeWebRoot+'groups/entwebtemplate/documents/enterprise_webasset/ent_cn_img_search_hover.png) left top no-repeat scroll transparent')},function(){$('div.doc_input a:eq(0)').css('background','transparent')});
	HuaWei.page.publicInputFocus('div.software_input input','????????????','#666','#666',function(){$('div.software_input a:eq(0)').css('background','url(/ilink'+g_HttpRelativeWebRoot+'groups/entwebtemplate/documents/enterprise_webasset/ent_cn_img_search_hover.png) left top no-repeat scroll transparent')},function(){$('div.software_input a:eq(0)').css('background','transparent')});	
}
HuaWei.page.publicFancyBoxInit = function(){
         $('a[permissions="true"]').attr('href','#permissions_alert');
         $('a.buy,#foot_buyform_alert,#buys,a.e_journal_subscribe,a[permissions="true"]').fancybox({});
         $("a.msg,#foot_feedback_alert,#feedbacks,#sitemap_feedbackform").fancybox({});     
         $('a.permissions_back').click(function(){
                   $.fancybox.close();
         });
         $('#trainloginlink').fancybox({onClosed:function(){
                   window.location.href = 'train_user_infomation.html';
         }});
         var isbuy = HuaWei.page.getQueryValue(window.location.href,'isbuy');
         if(isbuy){
                   $('a.buy:eq(0)').trigger('click');
         }
         var ismsg = HuaWei.page.getQueryValue(window.location.href,'ismsg');
         if(ismsg){
                   $('a.msg:eq(0)').trigger('click');
         }
         
         
}
var parameter;
HuaWei.page.onLoad = function(){
	//???????????????????????????????????????????????????????????????????????????radio??????????????????navi:???????????????????????????????????????0??????,searchindex:???????????????????????????????????????,searchtext:'????????????'
	parameter = eval('('+$('#main').attr('parameter')+')');
	//??????jquery??????????????????		
	HuaWei.page.formExtension();
	//??????jquery?????????????????????????????????
	HuaWei.page.textHighLight();
	//???????????????????????????
	HuaWei.page.naviMenu();
	//???????????????????????????
	HuaWei.page.mainView();
	//???????????????????????????????????????	
	HuaWei.page.setDatePickerCN();
	//??????????????????????????????
	HuaWei.page.indexNewsBar();
	//??????????????????????????????
	HuaWei.page.indexAlert();
	//????????????????????????????????????
	HuaWei.page.searchType();
	//??????????????????
	HuaWei.page.treeInit();
	//?????????????????????????????????????????????
	HuaWei.page.videoController();
	//???????????????tab????????????
	HuaWei.page.tabsInit();
	//?????????????????????
	HuaWei.page.starInit();
	//?????????????????????????????????
	HuaWei.page.showProduct();
	//??????????????????????????????
	HuaWei.page.ulSameHeight();
	//????????????????????????????????????
	HuaWei.page.journalsTextLimit();
	//????????????????????????????????????
	HuaWei.page.dimensionSearch();
	//??????????????????js????????????
	HuaWei.page.userCustomized();	
	//??????????????????
	HuaWei.form.buyFormCheck();
	//????????????????????????????????????
	HuaWei.form.searchResultForm();
	//??????????????????
	HuaWei.form.feedBackFormCheck();
	//?????????????????????
	HuaWei.form.authorizationFormCheck();
	//??????????????????????????????
	HuaWei.form.partnerRegisterFormCheck();
	//????????????????????????
	HuaWei.form.servicePartnersregFormCheck();
	//??????????????????????????????
	HuaWei.form.partnersInfoFormCheck();
	//??????/??????License??????
	HuaWei.form.licenseDnmFormCheck();
	//????????????License??????
	HuaWei.form.licenseLlzxFormCheck();
	//MCU License??????
	HuaWei.form.licenseMcuFormCheck();
	//???????????? LIcense??????
	HuaWei.form.licenseTytxFormCheck();
	//flash???????????????	
	if(document.getElementById("showevent") && $("#flvImg").html() == null){
		//alert("null");
	//alert($("div[id='showevent']").html())
	//var zz = eval('$("#mainview").html()');
	 var delayTime = setTimeout(function() {
               HuaWei.page.flashVedioPlayerInit();
            },
            400)
	 
	
	flag == 1;
	}else{
		clearTimeout(delayTime);
	HuaWei.page.flashVedioPlayerInit();
	}
	//????????????????????????
	HuaWei.form.trainLoginFormCheck();
	//??????????????????
	HuaWei.form.appCertificateFormCheck();
	//??????????????????
	HuaWei.form.certificateQueryFormCheck();
	//????????????????????????
	HuaWei.page.distributorFormCheck();
	//????????????????????????
	HuaWei.page.contactUsMapInit();
	//????????????????????????
	HuaWei.page.publicCommentonInit();
	//??????????????????????????????????????????????????????
	HuaWei.page.publicInputFocusInit();
	//??????????????????????????????
	HuaWei.page.publicFancyBoxInit();
	
	HuaWei.form.sellerqueryFormCheck();
	HuaWei.form.licenseUniFormCheck();
	//??????????????????????????????
	$('form').attr("autocomplete",'off');
	//??????IE6????????????
	if(HuaWei.page.isIE6())document.execCommand("BackgroundImageCache", false, true);	
	//?????????????????????????????????????????????????????????
	$('select[name="cooperationtype"]').change(function(){
		if($(this).val() == '1'){
			window.location.href = 'channel_servicepartner_register.html?node=4&child=0'	
		}
		if($(this).val() == '0'){
			window.location.href = 'channel_salepartners_register.html?node=4&child=0'	
		}
	});	
	//????????????????????????
	if($('#indeximg').length>0){
		$('div.bottomdiv').hide();
	}
	
	//??????????????????????????????????????????bug
	var bsobj = null
	setInterval(function(){
		bsobj = $('#bsPanel');
		if(bsobj.is(':visible')){
			if((bsobj.offset().left + bsobj.width())>=$(window).width()){
				bsobj.animate({'left':($(window).width()-bsobj.width()-20)+'px'});
			}
		}		
	},100);
}

function iPx(){
    if ((navigator.userAgent.match(/iPhone/i)) || (navigator.userAgent.match(/iPod/i)) || (navigator.userAgent.match(/iPad/i))) 
        return true;
    return false;
}
// JavaScript Document
HuaWei.page.supportDocumentsDetailsShow=function(){
	$('ul.doccenter_details_btn a.start').click(function(){
		$('ul.doccenter_details_list li[item="true"] ul').slideDown(400);
		$('ul.doccenter_details_list li[item="true"]').each(function(index, element) {
			$(this).find('a:eq(0)').removeClass('show').addClass('show');
		});
	})
	$('ul.doccenter_details_btn a.merger').click(function(){
		$('ul.doccenter_details_list li[item="true"] ul').slideUp(400);	
		$('ul.doccenter_details_list li[item="true"]').each(function(index, element) {
			$(this).find('a:eq(0)').removeClass('show');
		});
	})
	$('ul.doccenter_details_list li[item="true"]').each(function(index, element) {
		if(index==0)$(this).find('a:eq(0)').removeClass('show').addClass('show');
        $(this).find('a:eq(0)').click(function(){
			var node = $(this).parent().find('ul:eq(0)');
			if(!node.is(":visible")){
				$(this).removeClass('show').addClass('show');
				node.slideDown(400);				
			}else{
				$(this).removeClass('show');
				node.slideUp(400);					
			}
		})
    });
	}
$(function(){
	HuaWei.page.onLoad();
	HuaWei.page.supportDocumentsDetailsShow();
	if($('#about_intro_flv').length>0){
		HuaWei.page.flashVedioPlayer('about_intro_flv',$('#about_intro_flv').attr('flafile'),$('#about_intro_flv').attr('vediowidth'),$('#about_intro_flv').attr('vedioheight'),'false');
	}
	
})
