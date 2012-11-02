<?php
if(!defined('InEmpireCMS'))
{
	exit();
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><?=$pagetitle?> 信息评论 - Powered by EmpireCMS</title>
<meta name="keywords" content="<?=$pagetitle?> 信息评论" />
<meta name="description" content="<?=$pagetitle?> 信息评论" />
<style type="text/css">
<!--
body,Table{ color: #222; font-size: 12px; }
a { color: #222; text-decoration: none; }
a:hover { color: #f00; text-decoration: underline; }
h1 { font-size:32px; font-weight: bold; }
h2 { color: #1e3a9e; font-size: 25px; font-weight: bold;  }
.you { color: #1f3a87; font-size: 14px; }
.text { font-size: 14px; padding-left: 5px; padding-right: 5px; line-height: 20px}
.re a { color: #1f3a87; }
.name { color: #1f3a87; }
.name a { color: #1f3a87; text-decoration: underline;}
.retext { background-color: #f3f3f3; width: 100%; float: left; padding-top: 22px; padding-bottom: 22px; border-top: 1px solid #ccc; }
.retext textarea { width: 535px; height: 130px; float: left; margin-left: 60px; border-top-style: inset; border-top-width: 2px; border-left-style: inset; border-left-width: 2px; }
.hrLine{BORDER-BOTTOM: #807d76 1px dotted;}
-->
</style>
<script src="/e/data/js/ajax.js"></script>
</head>

<body topmargin="0">
<table width="766" border="0" align="center" cellpadding="3" cellspacing="1">
  <tr>
    <td width="210"><a href="/"><img src="/skin/default/images/logo.gif" border="0" /></a></td>
    <td><h1>网友评论</h1></td>
    <td><div align="right"><a href="#tosaypl"><strong><font color="#FF0000">我也评两句</font></strong></a></div></td>
  </tr>
</table>
<table width="766" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#222">
  <tr>
    <td height="2"></td>
  </tr>
</table>
<table width="766" border="0" align="center" cellpadding="3" cellspacing="1">
  <tr> 
    <td height="42"> 
      <h2>评论：<a href="<?=$titleurl?>" target="_blank"><font color="#1e3a9e"><?=$title?></font></a></h2></td>
    <td><div align="right"><a href="<?=$titleurl?>" target="_blank">查看原文</a></div></td>
  </tr>
</table>
<hr align="center" width="766" size=1 class=hrline>
<table width="766" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#384EA3">
  <form action="../enews/index.php" method="post" name="infopfenform">
    <input type="hidden" name="enews" value="AddInfoPfen" />
    <input type="hidden" name="classid" value="<?=$classid?>" />
    <input type="hidden" name="id" value="<?=$id?>" />
    <tr> 
      <td width="50%" height="27" valign="middle"><font color="#FFFFFF">&nbsp;评分: 
        <input type="radio" name="fen" value="1">
        1分 
        <input type="radio" name="fen" value="2">
        2分 
        <input name="fen" type="radio" value="3" checked>
        3分 
        <input type="radio" name="fen" value="4">
        4分 
        <input type="radio" name="fen" value="5">
        5分 
        <input type="submit" name="Submit" value="提交">
        </font></td>
      <td width="50%" valign="middle"><div align="center"><font color="#FFFFFF">平均得分: 
          <strong><span id="pfendiv"><?=$pinfopfen?></span></strong> 分，共有 <strong><?=$infopfennum?></strong> 
          人参与评分</font></div></td>
    </tr>
  </form>
</table>
<table width="766" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#CCCCCC">
  <tr> 
    <td height="30" bgcolor="#FFFFFF"> 
      <table width="100%" border="0" cellspacing="1" cellpadding="3">
        <tr> 
          <td width="17%">&nbsp;&nbsp;&nbsp;网友评论</td>
          <td width="83%"><div align="right"><?=$listpage?>&nbsp;&nbsp;&nbsp;</div></td>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td bgcolor="#f8fcff"> 
<?php
while($r=$empire->fetch($sql))
{
	$plusername=$r[username];
	if(empty($r[username]))
	{
		$plusername=$fun_r['nomember'];
	}
	if($r[userid])
	{
		$plusername="<a href='$public_r[newsurl]e/space/?userid=$r[userid]' target='_blank'>$r[username]</a>";
	}
	//ip
	$sayip=ToReturnXhIp($r[sayip]);
	//副表
	$fr=$empire->fetch1("select * from {$dbtbpre}enewspl_data_".$r[stb]." where plid='$r[plid]'");
	$saytext=RepPltextFace(stripSlashes($fr['saytext']));//替换表情
	$includelink=" onclick=\"javascript:document.saypl.saytext.value+='[quote]".$r[plid]."[/quote]';document.saypl.repid.value='".$r[plid]."';document.saypl.saytext.focus();\"";
?>
 
      <table width="96%" border="0" align="center" cellpadding="3" cellspacing="1" style="word-break:break-all; word-wrap:break-all;">
        <tr> 
          <td height="30"><span class="name">本站网友 <?=$plusername?></span> <font color="#666666">ip:<?=$sayip?></font></td>
          <td><div align="right"><font color="#666666"><?=$r[saytime]?> 发表</font></div></td>
        </tr>
        <tr valign="top"> 
          <td height="50" colspan="2" class="text"><?=$saytext?></td>
        </tr>
        <tr> 
          <td height="30">&nbsp;</td>
          <td><div align="right" class="re"><a href="#tosaypl"<?=$includelink?>>回复</a>&nbsp; 
              <a href="JavaScript:makeRequest('../enews/?enews=DoForPl&plid=<?=$r[plid]?>&classid=<?=$classid?>&id=<?=$id?>&dopl=1&doajax=1&ajaxarea=zcpldiv<?=$r[plid]?>','EchoReturnedText','GET','');">支持</a>[<span id="zcpldiv<?=$r[plid]?>"><?=$r[zcnum]?></span>]&nbsp; 
              <a href="JavaScript:makeRequest('../enews/?enews=DoForPl&plid=<?=$r[plid]?>&classid=<?=$classid?>&id=<?=$id?>&dopl=0&doajax=1&ajaxarea=fdpldiv<?=$r[plid]?>','EchoReturnedText','GET','');">反对</a>[<span id="fdpldiv<?=$r[plid]?>"><?=$r[fdnum]?></span>]
            </div></td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="1" cellpadding="3">
        <tr>
          <td background="/skin/default/images/plhrbg.gif"></td>
        </tr>
      </table>
      
<?
}
?>
 
      <div align="right"><br />
        <?=$listpage?>&nbsp;&nbsp;&nbsp;<br />
        <br />
        <font color="#FF0000">网友评论仅供网友表达个人看法，并不表明本站同意其观点或证实其描述&nbsp;&nbsp;&nbsp;</font><br><br> </div></td>
  </tr>
  <script>
  function CheckPl(obj)
  {
  	if(obj.saytext.value=="")
  	{
  		alert("错误，评论不能为空");
  		obj.saytext.focus();
  		return false;
  	}
  	return true;
  }
  </script>
  <form action="../enews/index.php" method="post" name="saypl" id="saypl" onsubmit="return CheckPl(document.saypl)">
  <tr id="tosaypl"> 
    <td bgcolor="#f8fcff"> <table width="100%" border="0" cellspacing="1" cellpadding="3">
        <tr> 
            <td width="13%" height="28">&nbsp;&nbsp;&nbsp;<span class="you">我也评两句</span></td>
            <td valign="middle">用户名： 
              <input name="username" type="text" id="username" size="12" value="<?=$lusername?>" />
            密码： 
            <input name="password" type="password" id="password" size="12" value="<?=$lpassword?>" />
            验证码： 
            <input name="key" type="text" id="key" size="6" />
              <img src="/e/ShowKey/?v=pl" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/e/member/register/" target="_blank">还没有注册？</a></td>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td bgcolor="#f8fcff"> <table width="100%" border="0" cellspacing="1" cellpadding="3" class="retext">
        <tr> 
          <td width="78%"><div align="center"> 
              <textarea name="saytext" cols="58" rows="6" id="saytext"></textarea>
            </div></td>
          <td width="22%" rowspan="2"> <div align="center">
              <input name="nomember" type="checkbox" id="nomember" value="1" checked="checked" />
                匿名发表<br>
                <br />
              <input name="imageField" type="submit" id="imageField" value=" 提 交 " />
            </div></td>
        </tr>
        <tr> 
          <td><div align="center"> 
              <script src="/d/js/js/plface.js"></script>
            </div></td>
        </tr>
      </table> </td>
  </tr>
  <input name="id" type="hidden" id="id" value="<?=$id?>" />
  <input name="classid" type="hidden" id="classid" value="<?=$classid?>" />
  <input name="enews" type="hidden" id="enews" value="AddPl" />
  <input name="repid" type="hidden" id="repid" value="0" />
  </form>
</table>
<script type="text/javascript" src="/skin/default/js/global_cn.index.js"></script>


<div id="seo-footer" style="height:310px;">
        <div class="bound">
            <div class="section information">
                <span class="title">按访问者</span>
                <ul>
                    <li><a href="/cn/carrier/index.htm" target="_blank">永安企业业务</a></li>
                    <li><a href="/cn/" target="_blank">永安企业业务</a></li>
                    <li><a href="/cn/" target="_blank">最终消费者</a></li>
                    <li><a href="aboutus.html/Partner/" target="_blank">合作伙伴</a></li>
                    <li><a href="aboutus.html/newsroom/press-release/">新闻媒体</a></li>
                    <li><a href="/social/default.html" target="_blank">求职者</a></li>
                </ul>
            </div>

            <div class="section information">

                <span class="title">行业洞察</span>
                <ul>
                    <li><a href="/cn/industry/customer-voices/index.htm">客户声音</a></li>
                    <li><a href="/cn/industry/consumer-lab/index.htm">永安企业业务</a></li>
                    <li><a href="/cn/industry/moving-forward/index.htm">永安企业业务</a></li>
                    <li><a href="/cn/industry/huawei-voices/index.htm">永安企业业务</a></li>
                    <li><a href="/cn/industry/standards-contributions/index.htm">永安企业业务</a></li>
                </ul>
            </div>
            <div class="section information">

                <span class="title">关于永安</span>
                <ul>
                    <li><a href="aboutus.html/corporate-info/vision-mission/index.htm">愿景与使命</a>
                    </li>
                    <li><a href="aboutus.html/corporate-info/strategy/index.htm">公司战略</a></li>
                    <li><a href="aboutus.html/corporate-citizenship/index.htm">社会责任</a></li>
                    <li>
                        <a href="aboutus.html/corporate-info/coporate-governance/index.htm">公司治理</a>
                    </li>
                    <li>
                        <a href="aboutus.html/corporate-info/financial-highlights/index.htm">永安企业业务</a>
                    </li>
                    <li><a href="aboutus.html/corporate-info/milestone/index.htm">发展历程</a></li>
                </ul>
            </div>


            <div class="section information">

                <span class="title">常用链接</span>
                <ul>
                    <li><a href="aboutus.html/newsroom/press-release/">新闻中心</a></li>
                    <li><a href="aboutus.html/events/index.htm">展会活动</a></li>
                    <li><a href="aboutus.html/publications/index.htm">公司刊物</a></li>
                    <li><a href="aboutus.html/corporate-info/cyber_security/index.htm">永安企业业务</a>
                    </li>
                    <li><a href="/ilink/cn/success-story/index.htm" target="_blank">成功故事</a></li>
                </ul>
            </div>

            <div class="section information" style="margin-right:0px;">

                <span class="title">相关网站</span>
                <ul>
                    <li><a href="/cn/carrier/index.htm" target="_blank">永安企业业务</a></li>
                    <li><a href="/cn/" target="_blank">永安企业业务</a></li>
                    <li><a href="/cn/" target="_blank">永安企业业务</a></li>
                    <li><a href="http://www.huaweimarine.com/marine/" target="_blank">永安海洋</a></li>
                    <li><a href="/minisite/mobile_cn/index.html" target="_blank">手机永安网</a></li>
                </ul>
            </div>
        </div>

        <div style=" width:980px;margin:auto;color:#FFF;padding-top:30px;">
            <ul style="margin-left:6px;height:30px;">
                <li class="left"><a style="color:#FFF;" href="/">法律声明</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                <li class="left"><a style="color:#FFF;" href="/">隐私保护</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                <li class="left"><a href="/" style="color:#FFF;">联系我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                <li class="left"><a href="/" style="color:#FFF;">网站地图</a></li>
                <li class="left" style="margin-left:100px;">版权所有 /。 保留一切权利。/</li>
            </ul>
        </div>

</div>
</body>
</html>