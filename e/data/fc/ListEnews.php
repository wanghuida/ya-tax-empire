<?php
if(!defined('InEmpireCMS'))
{
	exit();
}
?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理信息</title>
<link href="../data/menu/menu.css" rel="stylesheet" type="text/css">
<script src="../data/menu/menu.js" type="text/javascript"></script>
<script language="javascript" src="../data/rightmenu/context_menu.js"></script>
<script language="javascript" src="../data/rightmenu/ieemu.js"></script>
<SCRIPT lanuage="JScript">
if(self==top)
{self.location.href='admin.php';}

function chft(obj,ecms,classid){
	if(ecms==1)
	{
		obj.style.fontWeight='bold';
	}
	else
	{
		obj.style.fontWeight='';
	}
	obj.title='栏目ID：'+classid;
}

function tourl(bclassid,classid){
	parent.main.location.href="ListNews.php?bclassid="+bclassid+"&classid="+classid;
}

if(moz) {
	extendEventObject();
	extendElementModel();
	emulateAttachEvent();
}
//右键菜单
function ShRM(obj,bclassid,classid,classurl,showmenu)
{
  var eobj,popupoptions;
  classurl='/e/public/ClassUrl/?classid='+classid;
if(showmenu==1)
{
  popupoptions = [
    new ContextItem("增加信息",function(){ parent.document.main.location="AddNews.php?enews=AddNews&bclassid="+bclassid+"&classid="+classid; }),
	new ContextSeperator(),
    new ContextItem("刷新栏目",function(){ parent.document.main.location="enews.php?enews=ReListHtml&classid="+classid; }),
	new ContextItem("刷新栏目JS",function(){ parent.document.main.location="ecmschtml.php?enews=ReSingleJs&doing=0&classid="+classid; }),
    new ContextItem("刷新首页",function(){ parent.document.main.location="ecmschtml.php?enews=ReIndex"; }),
	new ContextSeperator(),
	new ContextItem("预览首页",function(){ window.open("../../"); }),
    new ContextItem("预览栏目",function(){ window.open(classurl); }),
	new ContextSeperator(),
	new ContextItem("修改栏目",function(){ parent.document.main.location="AddClass.php?classid="+classid+"&enews=EditClass"; }),
    new ContextItem("增加新栏目",function(){ parent.document.main.location="AddClass.php?enews=AddClass"; }),
    new ContextItem("复制栏目",function(){ parent.document.main.location="AddClass.php?classid="+classid+"&enews=AddClass&docopy=1"; }),
    new ContextSeperator(),
	new ContextItem("数据更新",function(){ parent.document.main.location="ReHtml/ChangeData.php"; }),
	new ContextItem("增加采集节点",function(){ parent.document.main.location="AddInfoClass.php?enews=AddInfoClass&newsclassid="+classid; }),
	new ContextItem("管理附件",function(){ parent.document.main.location="file/ListFile.php?type=9&classid="+classid; }),
	new ContextSeperator()
  ]
}
else if(showmenu==2)
{
	popupoptions = [
    new ContextItem("新闻系统数据表",function(){ parent.document.main.location="ListAllInfo.php?tbname=news"; }),new ContextItem("下载系统数据表",function(){ parent.document.main.location="ListAllInfo.php?tbname=download"; }),new ContextItem("图片系统数据表",function(){ parent.document.main.location="ListAllInfo.php?tbname=photo"; }),new ContextSeperator(),new ContextItem("FLASH系统数据表",function(){ parent.document.main.location="ListAllInfo.php?tbname=flash"; }),new ContextItem("电影系统数据表",function(){ parent.document.main.location="ListAllInfo.php?tbname=movie"; }),new ContextItem("商城系统数据表",function(){ parent.document.main.location="ListAllInfo.php?tbname=shop"; }),new ContextSeperator(),new ContextItem("文章系统数据表",function(){ parent.document.main.location="ListAllInfo.php?tbname=article"; }),new ContextItem("分类信息数据表",function(){ parent.document.main.location="ListAllInfo.php?tbname=info"; })  ]
}
else
{
	popupoptions = [
    new ContextItem("刷新栏目",function(){ parent.document.main.location="enews.php?enews=ReListHtml&classid="+classid; }),
	new ContextItem("刷新栏目JS",function(){ parent.document.main.location="ecmschtml.php?enews=ReSingleJs&doing=0&classid="+classid; }),
    new ContextItem("刷新首页",function(){ parent.document.main.location="ecmschtml.php?enews=ReIndex"; }),
	new ContextItem("数据更新",function(){ parent.document.main.location="ReHtml/ChangeData.php"; }),
	new ContextSeperator(),
	new ContextItem("预览首页",function(){ window.open("../../"); }),
	new ContextItem("预览栏目",function(){ window.open(classurl); }),
	new ContextSeperator(),
	new ContextItem("修改栏目",function(){ parent.document.main.location="AddClass.php?classid="+classid+"&enews=EditClass"; }),
    new ContextItem("增加新栏目",function(){ parent.document.main.location="AddClass.php?enews=AddClass"; }),
    new ContextItem("复制栏目",function(){ parent.document.main.location="AddClass.php?classid="+classid+"&enews=AddClass&docopy=1"; }),
	new ContextSeperator()
  ]
}
  ContextMenu.display(popupoptions)
}
</SCRIPT>
</head>
<body onLoad="initialize();ContextMenu.intializeContextMenu();" bgcolor="#FFCFAD">
	<table border='0' cellspacing='0' cellpadding='0'>
	<tr height=20>
			<td id="home"><img src="../data/images/homepage.gif" border=0></td>
			<td><a href="#ecms" onclick="parent.main.location.href='ListAllInfo.php';" onmouseout="this.style.fontWeight=''" onmouseover="this.style.fontWeight='bold'" oncontextmenu="ShRM(this,0,0,'',2)"><b>管理信息</b></a></td>
	</tr>
	</table>
	<table border=0 cellspacing=0 cellpadding=0>
			<tr>
			<td id="pr82" class="file" onclick=""><a onclick=tourl(0,82) onmouseout=chft(this,0,82) onmouseover=chft(this,1,82) oncontextmenu=ShRM(this,0,82,'',1)>加入永安</a></td>
		  </tr>
				<tr>
			<td id="pr64" class="file" onclick=""><a onclick=tourl(0,64) onmouseout=chft(this,0,64) onmouseover=chft(this,1,64) oncontextmenu=ShRM(this,0,64,'',1)>关于我们</a></td>
		  </tr>
				<tr>
			<td id="pr62" class="file" onclick=""><a onclick=tourl(0,62) onmouseout=chft(this,0,62) onmouseover=chft(this,1,62) oncontextmenu=ShRM(this,0,62,'',1)>业务介绍</a></td>
		  </tr>
				<tr>
			<td id="pr63" class="menu1" onclick="chengstate('63')"><a onmouseout=chft(this,0,63) onmouseover=chft(this,1,63) oncontextmenu=ShRM(this,0,63,'',0)>税收大课堂</a></td>
		  </tr>
				  <tr id="item63" style="display:none">
			<td class="list">
				<table border=0 cellspacing=0 cellpadding=0>
			<tr>
			<td id="pr67" class="file" onclick=""><a onclick=tourl(63,67) onmouseout=chft(this,0,67) onmouseover=chft(this,1,67) oncontextmenu=ShRM(this,63,67,'',1)>企业重组培训</a></td>
		  </tr>
				<tr>
			<td id="pr68" class="file" onclick=""><a onclick=tourl(63,68) onmouseout=chft(this,0,68) onmouseover=chft(this,1,68) oncontextmenu=ShRM(this,63,68,'',1)>营改增专题</a></td>
		  </tr>
				<tr>
			<td id="pr69" class="file" onclick=""><a onclick=tourl(63,69) onmouseout=chft(this,0,69) onmouseover=chft(this,1,69) oncontextmenu=ShRM(this,63,69,'',1)>注册税务师培训</a></td>
		  </tr>
				<tr>
			<td id="pr71" class="file1" onclick=""><a onclick=tourl(63,71) onmouseout=chft(this,0,71) onmouseover=chft(this,1,71) oncontextmenu=ShRM(this,63,71,'',1)>培训公告</a></td>
		  </tr>
			</table>
				</td>
		 </tr>	
				<tr>
			<td id="pr65" class="menu3" onclick="chengstate('65')"><a onmouseout=chft(this,0,65) onmouseover=chft(this,1,65) oncontextmenu=ShRM(this,0,65,'',0)>行业洞察</a></td>
		  </tr>
				  <tr id="item65" style="display:none">
			<td class="list1">
				<table border=0 cellspacing=0 cellpadding=0>
			<tr>
			<td id="pr72" class="file" onclick=""><a onclick=tourl(65,72) onmouseout=chft(this,0,72) onmouseover=chft(this,1,72) oncontextmenu=ShRM(this,65,72,'',1)>业界动态</a></td>
		  </tr>
				<tr>
			<td id="pr73" class="file" onclick=""><a onclick=tourl(65,73) onmouseout=chft(this,0,73) onmouseover=chft(this,1,73) oncontextmenu=ShRM(this,65,73,'',1)>最新法规</a></td>
		  </tr>
				<tr>
			<td id="pr74" class="file" onclick=""><a onclick=tourl(65,74) onmouseout=chft(this,0,74) onmouseover=chft(this,1,74) oncontextmenu=ShRM(this,65,74,'',1)>公司新闻</a></td>
		  </tr>
				<tr>
			<td id="pr75" class="file1" onclick=""><a onclick=tourl(65,75) onmouseout=chft(this,0,75) onmouseover=chft(this,1,75) oncontextmenu=ShRM(this,65,75,'',1)>税务文化研究</a></td>
		  </tr>
			</table>
				</td>
		 </tr>	
			</table>
	</body>
</html>
