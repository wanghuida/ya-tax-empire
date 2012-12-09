/*created by Jacky Leong(KF53007)*/
var highlightindex = -1 ;
var timeoutID;
var autoNode;
var ul ;

$(function(){
	addHtmlAfter("#search_1");
	addHtmlBefore("#search_result_box");
	$.ucm.cgiPath = "/ilink/" + g_ssSourceSiteId + "/<!--$HttpCgiPath-->";
	
	//search input
	var w_input = $("#search-box-h");
	var r_textarea =  $("#search_result_box_textarea");
	autoNode = $(".auto");
	ul = $(".auto .List_Box .List_Box_Ul");
	
	var w_flag = false;
	w_input.focus(function(){
		r_textarea.val("");
		highlightindex = -1;
		var input = $(this);
		autoNode.hide();
		autoNode = $(".auto");
		ul = $(".auto .List_Box .List_Box_Ul");
		if(!w_flag){
			inputView(input);
			w_flag = true;
		}
	});
	var r_flag = false;
	r_textarea.focus(function(){
		w_input.val("");
		highlightindex = -1;
		autoNode.hide();
		var input = $(this);
		autoNode = $(".auto_bottom");
		ul = $(".auto_bottom .List_Box_bottom .List_Box_Ul_bottom");
		if(!r_flag){
			inputView(input);
			r_flag = true;
		}
	});	
});



//Prompt Box
function addHtmlAfter(obj){
	$(" <div class='auto'><div class='ico'></div><div class='List_Box'><ul class='List_Box_Ul'></ul></div></div>").insertAfter(obj);	
}

function addHtmlBefore(obj){
	$(" <div class='auto_bottom'><div class='List_Box_bottom'><ul class='List_Box_Ul_bottom'></ul></div></div>").insertBefore(obj);
}



function removeHtml(obj){
	$(obj).remove();
}

function inputView(w_input){
	w_input.keyup(function(event){	
		var myEvent = event || window.event;
		var keyCode = myEvent.keyCode;
		if(keyCode>=65 && keyCode<=90 || keyCode==8 || keyCode==46 ||
		 (keyCode>=48 && keyCode<=57) || (keyCode>=96 && keyCode<=105) || keyCode==32){
		 	var wordText = $(this).val();
		 	if(wordText != ""){
		 		clearTimeout(timeoutID);
		 		timeoutID = setTimeout(function(){
		 			var serviceData = {
		 				IdcService:"QUERY_WORDS",
		 				keywords:wordText,
		 				siteName:"CN"
		 			}
		 			$.ucm.executeService(serviceData,function(ucmResponse){
		 				var suggest = ucmResponse.ResultSets['msQueryWords'];
		 				ul.empty();
		 				for(var rowIndex = 0 ;rowIndex<suggest.rows.length;rowIndex++){
		 					var row = ucmResponse.getRow(suggest,rowIndex);
		 					var li = $("<li>").attr("lid",rowIndex);
		 					li.html(row.keyword).appendTo(ul);
		 					li.hover(
		 						function(){
		 							if(highlightindex != -1){
		 								ul.children("li").eq(highlightindex).addStyle(2);
		 							}
		 							highlightindex = $(this).attr("lid");
		 							$(this).addStyle(1);
		 						},
		 						function(){
		 							$(this).addStyle(2);
		 						}
		 					);
		 					
		 					li.click(function(){
		 						w_input.val($(this).text());
		 						autoNode.hide();
		 						highlightindex = -1;
		 						w_input.focus();
		 					});
		 					
		 				}
		 				
		 				if(suggest.rows.length>0){
		 					autoNode.show();
		 				}else{
		 					autoNode.hide();
		 					highlightindex = -1;
		 				}
		 				
		 			});
		 		},300);
		 	}else{
		 		autoNode.hide();
		 		highlightindex = -1;
		 	}
		 }
	});	
	w_input.keydown(function(event){	
		var myEvent = event || window.event;
		var keyCode = myEvent.keyCode;
		 if(keyCode == 38 || keyCode == 40){
		 	if(keyCode == 38){
		 		var lis = ul.children("li");
		 		if(highlightindex != -1){
		 			lis.eq(highlightindex).addStyle(2);
		 			highlightindex--;
		 		}else{
		 			highlightindex = lis.length -1;
		 		}
		 		if(highlightindex == -1){
		 			highlightindex = lis.length -1;
		 		}
		 		lis.eq(highlightindex).addStyle(1);
		 		var currText = ul.children("li").eq(highlightindex).text();
		 		w_input.val(currText);
		 		
		 	}
		 	
		 	if(keyCode == 40){		 			
		 		var lis = ul.children("li");
		 		if(highlightindex != -1){
		 			lis.eq(highlightindex).addStyle(2);
		 		}
		 		highlightindex++;
		 		if(highlightindex == lis.length){
		 			highlightindex  = 0 ;
		 		}
		 		lis.eq(highlightindex).addStyle(1);
		 		var currText = ul.children("li").eq(highlightindex).text();
		 		w_input.val(currText);
		 	}
		 }
	});	
	w_input.blur(function(){
		setTimeout(function(){
			autoNode.hide();
		},250);	
	});		
}


//change Style
$.fn.addStyle = function(n){
	switch(n){
		case 1:
			$(this).removeClass("liOut").addClass("liHover")
			break
		case 2:
			$(this).removeClass("liHover").addClass("liOut")
			break
		default:
			$(this).removeClass("liHover").addClass("liOut")		
	}
}
