//图片滚动
$(function(){
	$('.slide .switch').scrollable({size:2,loop:false,items:'.slide .switch ul'});
	
	
		$(".zpTopRight a img").hover(function(){		
		$(this).attr("src","/social/img/g2_focus.gif");	
		
		},function(){
			
			$(this).attr("src","/social/img/g2.gif");	
			
			})
	
	$(".downDown,.downInput").click(function(){		
		$(".selection1").slideToggle();	
		
		})
		
		
	$(".selection1 ul li a").click(function(){		
		var text=$(this).text();
		$(".selection1").hide();
		if(text=="华为终端招聘职位"){				
window.location.href="https://xjobs.brassring.com/TGWebHost/home.aspx?partnerid=25501&siteid=5163";				
				}
				else{			
			window.location.href="http://career.huawei.com/career/zh/social/Index.do?callMethod=doIndex";			
			}
		return false;
		
		
		})
				
	
	
	
	
});


//折叠展开 
$(function(){
	var h=$(".mainBox").height();
	
	$(".moreNews1").click(function(){
		$(this).hide();
		$(".fold").show();
		$(".moreNews").css("background-image","none");
		$(".mainBox").css({"height":"auto"});	
		return false;
		});
		
	$(".fold").click(function(){
		$(this).hide();
		$(".moreNews1").show();		
		$(".mainBox").css({"height":h});
		return false;
		});
		
	})	 
	
		
	
	
//下拉菜单
$(function(){	
	var timeOut;
	var $navTarget;
	var $contentTarget;	
	
	var indexli;
	$('#menu .nav li[is="menuindex"]').hover(function(){

		indexli = $(this).index();

		$navTarget = $(this).find('a:eq(0)');
		$contentTarget = $(this).find('.menuitempanel');
		timeout = setTimeout(function(){
			$navTarget .addClass('hover');
			$contentTarget.slideDown(300);
		}, 100);
		
				
	},function(){
		//alert("hidden")
		clearTimeout(timeout);
		$('#menu .nav li .menuitempanel').stop(true,true);
		$('.menuitempanel div.menufillet_s,.menuitempanel div.menufillet_e,.menuitempanel div.menufillet_w,.menuitempanel div.menufillet_se,.menuitempanel div.menufillet_sw').stop(true,true);
		//$(this).find('div.downarrow').hide();
		$(this).find('a:eq(0)').removeClass('hover');//+indexli);
		$(this).find('.menuitempanel').hide();
	})
			
	})
	
//弹窗
function showDialog(){		
		var objW = $(window); //当前窗口
                var objC = $(".tips"); //对话框
                var brsW = objW.width();
                var brsH = objW.height();
                var sclL = objW.scrollLeft();
                var sclT = objW.scrollTop();
                var curW = objC.width();
                var curH = objC.height();
                //计算对话框居中时的左边距
                var left = sclL + (brsW - curW) / 2;
                //计算对话框居中时的上边距
                var top = sclT + (brsH - curH) / 2;
                //设置对话框在页面中的位置
                objC.css({ "left": left, "top": top });			
		}
		
$(function(){	
	$(".left").dialog({dialogWidth:443});	
	$(".tBox").hover(function(){		
		$(this).css("background","url(img/tboxleft.jpg)").find("a").css("background","url(img/tboxBtn2.jpg)").end().siblings().css("background","url(img/tboxright.jpg)").find("a").css("background","url(img/tboxBtn.jpg)");		
		},function(){			
			$(this).css("background","url(img/tboxright.jpg)").find("a").css("background","url(img/tboxBtn.jpg)");	
			});	
		
		
	})
	
	
jQuery.fn.dialog=function(options){
	
	var defaults={
		width:450
		}	
				
	var options=$.extend(defaults,options);
		
	this.each(function(){			
		$(".dialogContent").hide();	
		$(this).click(function(){			
		var dialogTitle=$(this).attr("title");
		var dialongContent=$(".dialogContent").html();
		var dialogHtml='<div class="tipsOverlay" style="display:block"></div>';		
		dialogHtml+='<div class="tips" style="display:block">';				
		dialogHtml+='<div class="tipsTop"><div class="tl"></div><div class="tc"></div><div class="tr"></div>  </div>';		
		dialogHtml+='<div class="tipsContent"><div class="tipsHeader">';		
		dialogHtml+='<h1>'+dialogTitle+'</h1>';		
		dialogHtml+='<div class="closeBtn"></div></div>';		
		dialogHtml+='<div class="tipsDetail">'+dialongContent+'</div></div>';
		dialogHtml+='<div class="tipsBottom"><div class="bl"></div><div class="bc"></div><div class="br"></div></div></div>';		
		
		$(dialogHtml).appendTo("body");
			$(".tips").width(options.dialogWidth);			
			var objW = $(window); //当前窗口
            var objC = $(".tips"); //对话框
            var brsW = objW.width();
            var brsH = objW.height();
            var sclL = objW.scrollLeft();
            var sclT = objW.scrollTop();
            var curW = objC.width();				
            var curH = objC.height();
                //计算对话框居中时的左边距
            var left = sclL + (brsW - curW) / 2;
                //计算对话框居中时的上边距
            var top = sclT + (brsH - curH) / 2;
                //设置对话框在页面中的位置
            objC.css({ "left": left, "top": top });				
		$(".tc,.bc").width(options.dialogWidth-10+"px");
		
		$(".closeBtn").click(function(){
			$(".tipsOverlay").remove();
			$(".tips").remove();		
		});	
		return false;	
			});		
		});
	
	}	


$(function(){	
 var l=$(".dtBox").length;	
	if(l<=5){		
		$(".moreNews").hide();		
		$(".mainBox").css("height","auto")	
		}	
	})

	 