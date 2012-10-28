<?php
if(!defined('InEmpireCMS'))
{
	exit();
}
?><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理栏目</title>
<SCRIPT lanuage="JScript">
function turnit(ss)
{
 if (ss.style.display=="") 
  ss.style.display="none";
 else
  ss.style.display=""; 
}
var newWindow = null

//调用地址
function tvurl(classid){
	window.open('view/ClassUrl.php?classid='+classid,'','width=500,height=250');
}
//刷新栏目
function relist(classid){
	self.location.href='enews.php?enews=ReListHtml&from=ListClass.php&classid='+classid;
}
//刷新信息
function renews(classid,tbname){
	window.open('ReHtml/DoRehtml.php?enews=ReNewsHtml&from=ListClass.php&classid='+classid+'&tbname[]='+tbname);
}
//归档
function docinfo(classid){
	if(confirm('确认归档?'))
	{
		self.location.href='ecmsinfo.php?enews=InfoToDoc&ecmsdoc=1&docfrom=ListClass.php&classid='+classid;
	}
}
//刷新JS
function rejs(classid){
	self.location.href='ecmschtml.php?enews=ReSingleJs&doing=0&classid='+classid;
}
//复制
function copyc(classid){
	self.location.href='AddClass.php?classid='+classid+'&enews=AddClass&docopy=1';
}
//修改
function editc(classid){
	self.location.href='AddClass.php?classid='+classid+'&enews=EditClass';
}
//删除
function delc(classid){
	if(confirm('确认要删除此栏目，将删除所属子栏目及信息'))
	{
		self.location.href='ecmsclass.php?classid='+classid+'&enews=DelClass';
	}
}
//标题分类
function ttc(classid){
	window.open('ClassInfoType.php?classid='+classid);
}
</SCRIPT>
</head>
<body>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
  <tr> 
    <td width="18%">位置: <a href="ListClass.php">管理栏目</a></td>
    <td width="82%"> <div align="right" class="emenubutton">
        <input type="button" name="Submit6" value="增加栏目" onclick="self.location.href='AddClass.php?enews=AddClass'">
        <input type="button" name="Submit" value="刷新首页" onclick="self.location.href='ecmschtml.php?enews=ReIndex'">
        <input type="button" name="Submit2" value="刷新所有栏目页" onclick="window.open('ecmschtml.php?enews=ReListHtml_all&from=ListClass.php','','');">
        <input type="button" name="Submit3" value="刷新所有信息页面" onclick="window.open('ReHtml/DoRehtml.php?enews=ReNewsHtml&start=0&from=ListClass.php','','');">
        <input type="button" name="Submit4" value="刷新所有JS调用" onclick="window.open('ecmschtml.php?enews=ReAllNewsJs&from=ListClass.php','','');">
      </div></td>
  </tr>
</table>
<table width="100%" border="0" cellpadding="3" cellspacing="1" class="tableborder">
  <form name=editorder method=post action=ecmsclass.php onsubmit="return confirm('确认要操作?');">
    <tr class="header" height="25"> 
      <td width="5%" align="center">顺序</td>
      <td width="7%" align="center"><a href='ListClass.php?doopen=1&open=1' title='收缩'><img src='../data/images/displayadd.gif' width='15' height='15' border='0'></a></td>
      <td width="6%" align="center">ID</td>
      <td width="36%">栏目名</td>
      <td width="6%" align="center">访问</td>
      <td width="14%">栏目管理</td>
      <td width="29%">操作</td>
    </tr>
    <tr bgcolor='#ffffff' height=25><td><input type=text name=myorder[] value=0 size=2><input type=hidden name=classid[] value=70></td><td><a href='AddNews.php?enews=AddNews&classid=70' target=_blank><img src='../data/images/txt.gif' border=0></a></td><td align=center>70</td><td><input type=checkbox name=reclassid[] value=70> <a href='/a/shuiwuwenhuayanjiu/' target=_blank>税务文化研究</a></td><td align=center>0</td><td><a href='#e' onclick=editc(70)>修改</a> <a href='#e' onclick=copyc(70)>复制</a> <a href='#e' onclick=delc(70)>删除</a></td><td><a href='#e' onclick=relist(70)>刷新</a> <a href='#e' onclick=renews(70,'news')>信息</a> <a href='#e' onclick=rejs(70)>JS</a> <a href='#e' onclick=tvurl(70)>调用</a> <a href='#e' onclick=ttc(70)>分类</a> <a href='#e' onclick=docinfo(70)>归档</a></td></tr><tr bgcolor='#DBEAF5' height=25><td><input type=text name=myorder[] value=1 size=2><input type=hidden name=classid[] value=64></td><td onMouseUp='turnit(classdiv64);' style='CURSOR:hand'><img src='../data/images/dir.gif'></td><td align=center>64</td><td><input type=checkbox name=reclassid[] value=64> <a href='/a/guanyuwomen/' target=_blank>关于我们</a></td><td align=center>0</td><td><a href='#e' onclick=editc(64)>修改</a> <a href='#e' onclick=copyc(64)>复制</a> <a href='#e' onclick=delc(64)>删除</a></td><td><a href='#e' onclick=relist(64)>刷新</a> <a href='#e' onclick=renews(64,'news')>信息</a> <a href='#e' onclick=rejs(64)>JS</a> <a href='#e' onclick=tvurl(64)>调用</a></td></tr><tbody id='classdiv64'></tbody><tr bgcolor='#DBEAF5' height=25><td><input type=text name=myorder[] value=2 size=2><input type=hidden name=classid[] value=62></td><td onMouseUp='turnit(classdiv62);' style='CURSOR:hand'><img src='../data/images/dir.gif'></td><td align=center>62</td><td><input type=checkbox name=reclassid[] value=62> <a href='/a/yewujieshao/' target=_blank>业务介绍</a></td><td align=center>0</td><td><a href='#e' onclick=editc(62)>修改</a> <a href='#e' onclick=copyc(62)>复制</a> <a href='#e' onclick=delc(62)>删除</a></td><td><a href='#e' onclick=relist(62)>刷新</a> <a href='#e' onclick=renews(62,'news')>信息</a> <a href='#e' onclick=rejs(62)>JS</a> <a href='#e' onclick=tvurl(62)>调用</a></td></tr><tbody id='classdiv62'></tbody><tr bgcolor='#DBEAF5' height=25><td><input type=text name=myorder[] value=3 size=2><input type=hidden name=classid[] value=63></td><td onMouseUp='turnit(classdiv63);' style='CURSOR:hand'><img src='../data/images/dir.gif'></td><td align=center>63</td><td><input type=checkbox name=reclassid[] value=63> <a href='/a/peixunzhuanti/' target=_blank>税收大课堂</a></td><td align=center>0</td><td><a href='#e' onclick=editc(63)>修改</a> <a href='#e' onclick=copyc(63)>复制</a> <a href='#e' onclick=delc(63)>删除</a></td><td><a href='#e' onclick=relist(63)>刷新</a> <a href='#e' onclick=renews(63,'news')>信息</a> <a href='#e' onclick=rejs(63)>JS</a> <a href='#e' onclick=tvurl(63)>调用</a></td></tr><tbody id='classdiv63'><tr bgcolor='#ffffff' height=25><td><input type=text name=myorder[] value=0 size=2><input type=hidden name=classid[] value=67></td><td>&nbsp;&nbsp;&nbsp;<a href='AddNews.php?enews=AddNews&classid=67' target=_blank><img src='../data/images/txt.gif' border=0></a></td><td align=center>67</td><td><input type=checkbox name=reclassid[] value=67> <a href='/a/peixunzhuanti/qiyechongzu/' target=_blank>企业重组培训</a></td><td align=center>0</td><td><a href='#e' onclick=editc(67)>修改</a> <a href='#e' onclick=copyc(67)>复制</a> <a href='#e' onclick=delc(67)>删除</a></td><td><a href='#e' onclick=relist(67)>刷新</a> <a href='#e' onclick=renews(67,'news')>信息</a> <a href='#e' onclick=rejs(67)>JS</a> <a href='#e' onclick=tvurl(67)>调用</a> <a href='#e' onclick=ttc(67)>分类</a> <a href='#e' onclick=docinfo(67)>归档</a></td></tr><tr bgcolor='#ffffff' height=25><td><input type=text name=myorder[] value=0 size=2><input type=hidden name=classid[] value=68></td><td>&nbsp;&nbsp;&nbsp;<a href='AddNews.php?enews=AddNews&classid=68' target=_blank><img src='../data/images/txt.gif' border=0></a></td><td align=center>68</td><td><input type=checkbox name=reclassid[] value=68> <a href='/a/peixunzhuanti/yinggaizeng/' target=_blank>营改增专题</a></td><td align=center>0</td><td><a href='#e' onclick=editc(68)>修改</a> <a href='#e' onclick=copyc(68)>复制</a> <a href='#e' onclick=delc(68)>删除</a></td><td><a href='#e' onclick=relist(68)>刷新</a> <a href='#e' onclick=renews(68,'news')>信息</a> <a href='#e' onclick=rejs(68)>JS</a> <a href='#e' onclick=tvurl(68)>调用</a> <a href='#e' onclick=ttc(68)>分类</a> <a href='#e' onclick=docinfo(68)>归档</a></td></tr><tr bgcolor='#ffffff' height=25><td><input type=text name=myorder[] value=0 size=2><input type=hidden name=classid[] value=69></td><td>&nbsp;&nbsp;&nbsp;<a href='AddNews.php?enews=AddNews&classid=69' target=_blank><img src='../data/images/txt.gif' border=0></a></td><td align=center>69</td><td><input type=checkbox name=reclassid[] value=69> <a href='/a/peixunzhuanti/zhushui/' target=_blank>注册税务师培训</a></td><td align=center>0</td><td><a href='#e' onclick=editc(69)>修改</a> <a href='#e' onclick=copyc(69)>复制</a> <a href='#e' onclick=delc(69)>删除</a></td><td><a href='#e' onclick=relist(69)>刷新</a> <a href='#e' onclick=renews(69,'news')>信息</a> <a href='#e' onclick=rejs(69)>JS</a> <a href='#e' onclick=tvurl(69)>调用</a> <a href='#e' onclick=ttc(69)>分类</a> <a href='#e' onclick=docinfo(69)>归档</a></td></tr><tr bgcolor='#ffffff' height=25><td><input type=text name=myorder[] value=0 size=2><input type=hidden name=classid[] value=71></td><td>&nbsp;&nbsp;&nbsp;<img src='../data/images/dir.gif'></td><td align=center>71</td><td><input type=checkbox name=reclassid[] value=71> <a href='/a/peixunzhuanti/peixungonggao/' target=_blank>培训公告</a></td><td align=center>0</td><td><a href='#e' onclick=editc(71)>修改</a> <a href='#e' onclick=copyc(71)>复制</a> <a href='#e' onclick=delc(71)>删除</a></td><td><a href='#e' onclick=relist(71)>刷新</a> <a href='#e' onclick=renews(71,'news')>信息</a> <a href='#e' onclick=rejs(71)>JS</a> <a href='#e' onclick=tvurl(71)>调用</a></td></tr></tbody><tr bgcolor='#ffffff' height=25><td><input type=text name=myorder[] value=4 size=2><input type=hidden name=classid[] value=65></td><td><a href='AddNews.php?enews=AddNews&classid=65' target=_blank><img src='../data/images/txt.gif' border=0></a></td><td align=center>65</td><td><input type=checkbox name=reclassid[] value=65> <a href='/a/yejiedongtai/' target=_blank>业界动态</a></td><td align=center>0</td><td><a href='#e' onclick=editc(65)>修改</a> <a href='#e' onclick=copyc(65)>复制</a> <a href='#e' onclick=delc(65)>删除</a></td><td><a href='#e' onclick=relist(65)>刷新</a> <a href='#e' onclick=renews(65,'news')>信息</a> <a href='#e' onclick=rejs(65)>JS</a> <a href='#e' onclick=tvurl(65)>调用</a> <a href='#e' onclick=ttc(65)>分类</a> <a href='#e' onclick=docinfo(65)>归档</a></td></tr>    <tr class="header"> 
      <td height="25" colspan="7"> <div align="left"> &nbsp;&nbsp;
          <input type="submit" name="Submit5" value="修改栏目顺序" onClick="document.editorder.enews.value='EditClassOrder';document.editorder.action='ecmsclass.php';">&nbsp;&nbsp;
          <input name="enews" type="hidden" id="enews" value="EditClassOrder">
          <input type="submit" name="Submit7" value="刷新栏目页面" onClick="document.editorder.enews.value='GoReListHtmlMoreA';document.editorder.action='ecmschtml.php';">&nbsp;&nbsp;
          <input type="submit" name="Submit72" value="终极栏目属性转换" onClick="document.editorder.enews.value='ChangeClassIslast';document.editorder.action='ecmsclass.php';">
        </div></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="25" colspan="7"><strong>终极栏目属性转换说明(只能选择单个栏目)：</strong><br>
        如果你选择的是<font color="#FF0000">非终极栏目</font>，则转为<font color="#FF0000">终极栏目</font><font color="#666666">(此栏目不能有子栏目)</font><br>
        如果你选择的是<font color="#FF0000">终极栏目</font>，则转为<font color="#FF0000">非终极栏目</font><font color="#666666">(请先把当前栏目的数据转移，否则会出现冗余数据)<br>
        </font><strong>修改栏目顺序:顺序值越小越前面</strong></td>
    </tr>
    <input name="from" type="hidden" value="ListClass.php">
    <input name="gore" type="hidden" value="0">
  </form>
</table>
<br>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
  <tr class="header"> 
    <td width="13%" height="25"> 
      <div align="center">名称</div></td>
    <td width="39%" height="25">调用地址</td>
    <td width="13%">
<div align="center">名称</div></td>
    <td width="35%"> 
      <div align="center">调用地址</div></td>
  </tr>
  <tr> 
    <td height="25" bgcolor="#FFFFFF"><div align="center">热门信息调用</div></td>
    <td height="25" bgcolor="#FFFFFF"> <input name="textfield" type="text" value="/d/js/js/hotnews.js">
      [<a href="ecmschtml.php?enews=ReHot_NewNews">刷新</a>][<a href="view/js.php?js=hotnews&p=js" target="_blank">预览</a>]</td>
    <td bgcolor="#FFFFFF"><div align="center">横向搜索表单</div></td>
    <td bgcolor="#FFFFFF"> <div align="left"> 
        <input name="textfield3" type="text" value="/d/js/js/search_news1.js">
        [<a href="view/js.php?js=search_news1&p=js" target="_blank">预览</a>]</div></td>
  </tr>
  <tr> 
    <td height="25" bgcolor="#FFFFFF"> <div align="center">最新信息调用</div></td>
    <td height="25" bgcolor="#FFFFFF"> <input name="textfield2" type="text" value="/d/js/js/newnews.js">
      [<a href="ecmschtml.php?enews=ReHot_NewNews">刷新</a>][<a href="view/js.php?js=newnews&p=js" target="_blank">预览</a>]</td>
    <td bgcolor="#FFFFFF"><div align="center">纵向搜索表单</div></td>
    <td bgcolor="#FFFFFF"> <div align="left"> 
        <input name="textfield4" type="text" value="/d/js/js/search_news2.js">
        [<a href="view/js.php?js=search_news2&p=js" target="_blank">预览</a>]</div></td>
  </tr>
  <tr> 
    <td height="25" bgcolor="#FFFFFF"><div align="center">推荐信息调用</div></td>
    <td height="25" bgcolor="#FFFFFF"><input name="textfield22" type="text" value="/d/js/js/goodnews.js">
      [<a href="ecmschtml.php?enews=ReHot_NewNews">刷新</a>][<a href="view/js.php?js=goodnews&p=js" target="_blank">预览</a>]</td>
    <td bgcolor="#FFFFFF"><div align="center">搜索页面地址</div></td>
    <td bgcolor="#FFFFFF"> <div align="left"> 
        <input name="textfield5" type="text" value="/search">
        [<a href="../../search" target="_blank">预览</a>]</div></td>
  </tr>
  <tr> 
    <td height="24" bgcolor="#FFFFFF"> 
      <div align="center">控制面板地址</div></td>
    <td height="24" bgcolor="#FFFFFF">
<input name="textfield52" type="text" value="/e/member/cp">
      [<a href="../member/cp" target="_blank">预览</a>]</td>
    <td bgcolor="#FFFFFF"><div align="center"></div></td>
    <td bgcolor="#FFFFFF"><div align="center"></div></td>
  </tr>
  <tr class="header"> 
    <td height="25" colspan="4">js调用方式：&lt;script src=js地址&gt;&lt;/script&gt;</td>
  </tr>
</table>
</body>
</html>
