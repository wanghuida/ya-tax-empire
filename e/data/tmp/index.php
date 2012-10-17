<?php
if(!defined('InEmpireCMS'))
{
	exit();
}
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>帝国网站管理系统 - Powered by EmpireCMS</title>
<meta name="keywords" content="帝国网站管理系统,EmpireCMS" />
<meta name="description" content="　　帝国软件是一家专注于网络软件开发的科技公司，其主营产品“帝国网站管理系统(EmpireCMS)”是目前国内应用最广泛的CMS程序。通过多年的不断创新与完善，使系统集安全、强大、稳定、灵活于一身。目前EmpireCMS程序已经广泛应用在国内数十万家网站，覆盖国内上千万上网人群，并经过上千家知名网站的严格检测，被称为国内最安全、最稳定的开源CMS系统。" />
<link href="/skin/default/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/skin/default/js/tabs.js"></script>
</head>
<body class="homepage">
<!-- 导航tab选项卡 -->
<table width="920" border="0" align="center" cellpadding="0" cellspacing="0" class="nav">
  <tr> 
        <td class="nav_global">
<span id="logo">
<a href="/">
<img src="/skin/default/images/logo.gif" width="360" height="90" boder="0" />
</a>
</span>
<ul>
        <li class="curr" id="tabnav_btn_0" onmouseover="tabit(this)"><a href="/">首页</a></li>
        <? @sys_ShowClassByTemp('0',12,0,0);?> </ul></td>
  </tr>
</table>
<div id="topbanner">
<img src="/skin/default/images/top-banner.jpg" />
</div>

<div class="buttom">
<div>
<table>
<tr>
<td colspan="2" width="220" class="subtitle">专家团队<td>
</tr>
<tr>
<td class="subcontent">首席顾问</td>
<td>艾华</td>
</tr>
<tr>
<td class="subcontent">资深税务师</td>
<td>刑太武</td>
</tr>
<tr>
<td class="subcontent">资深税务师</td>
<td>任广</td>
</tr>
</table>
</div>

<div >
<table>
<tr>
<td width="220" class="subtitle">近期培训<td>
</tr>
<tr>
<td width="220" class="subcontent"><a href="/a/peixunzhuanti/qiyechongzu">企业重组培训</a></td>
</tr>
<tr>
<td width="220" class="subcontent"><a href="/a/peixunzhuanti/yinggaizeng">营改增专题</a></td>
</tr>
<tr>
<td width="220" class="subcontent"><a href="/a/peixunzhuanti/zhushui">注册税务师培训</a></td>
</tr>
</table>
</div>

<div >
<table>
<tr>
<td width="220" class="subtitle">业界动态<td>
</tr>
<tr>
<td width="220"><ul><? @sys_GetEcmsInfo(65,3,32,0,0,2,0);?></ul></td>
</tr>
</table>
</div>

<div >
<table>
<tr>
<td width="220" class="subtitle">税务文化研究<td>
</tr>
<tr>
<td width="220"><ul><? @sys_GetEcmsInfo(70,3,32,0,0,2,0);?></ul></td>
</tr>
</table>
</div>

</div>

<!-- 页脚 -->
<table width="920" border="0" cellpadding="0" cellspacing="0" align="center">
<tr>
<td align="center" class="search">
<form action="/e/search/index.php" method="post" name="searchform" id="searchform">
<table border="0" cellspacing="6" cellpadding="0">
<tr>
<td><strong>站内搜索：</strong>
<input name="keyboard" type="text" size="32" id="keyboard" class="inputText" />
<input type="hidden" name="show" value="title" />
<input type="hidden" name="tempid" value="1" />
<select name="tbname">
<option value="news">新闻</option>
<option value="download">下载</option>
<option value="photo">图库</option>
<option value="flash">FLASH</option>
<option value="movie">电影</option>
<option value="shop">商品</option>
<option value="article">文章</option>
<option value="info">分类信息</option>
</select>
</td>
<td><input type="image" class="inputSub" src="/skin/default/images/search.gif" />
</td>
<td><a href="/search/" target="_blank">高级搜索</a></td>
</tr>
</table>
</form>
</td>
</tr>
<tr>
<td>
	<table width="100%" border="0" cellpadding="0" cellspacing="4" class="copyright">
        <tr> 
          <td align="center"><a href="/">网站首页</a> | <a href="#">关于我们</a> 
            | <a href="#">服务条款</a> | <a href="#">广告服务</a> | <a href="#">联系我们</a> 
            | <a href="#">网站地图</a> | <a href="#">免责声明</a> | <a href="/e/wap/" target="_blank">WAP</a></td>
        </tr>
	</table>
</td>
</tr>
</table>
</body>
</html>