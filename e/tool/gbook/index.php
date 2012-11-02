<?php
require("../../class/connect.php");
if(!defined('InEmpireCMS'))
{
	exit();
}
require("../../class/db_sql.php");
require("../../class/q_functions.php");
require "../".LoadLang("pub/fun.php");
$link=db_connect();
$empire=new mysqlquery();
$editor=1;
//分类id
$bid=(int)$_GET['bid'];
$gbr=$empire->fetch1("select bid,bname,groupid from {$dbtbpre}enewsgbookclass where bid='$bid'");
if(empty($gbr['bid']))
{
	printerror("EmptyGbook","",1);
}
//权限
if($gbr['groupid'])
{
	include("../../class/user.php");
	$user=islogin();
	include("../../data/dbcache/MemberLevel.php");
	if($level_r[$gbr[groupid]][level]>$level_r[$user[groupid]][level])
	{
		echo"<script>alert('您的会员级别不足(".$level_r[$gbr[groupid]][groupname].")，没有权限提交信息!');history.go(-1);</script>";
		exit();
	}
}
esetcookie("gbookbid",$bid,0);
$bname=$gbr['bname'];
$search="&bid=$bid";
$page=(int)$_GET['page'];
$start=0;
$line=$public_r['gb_num'];//每页显示条数
$page_line=12;//每页显示链接数
$offset=$start+$page*$line;//总偏移量
$totalnum=(int)$_GET['totalnum'];
if($totalnum>0)
{
	$num=$totalnum;
}
else
{
	$totalquery="select count(*) as total from {$dbtbpre}enewsgbook where bid='$bid' and checked=0";
	$num=$empire->gettotal($totalquery);//取得总条数
}
$search.="&totalnum=$num";
$query="select lyid,name,email,`call`,lytime,lytext,retext from {$dbtbpre}enewsgbook where bid='$bid' and checked=0";
$query=$query." order by lyid desc limit $offset,$line";
$sql=$empire->query($query);
$listpage=page1($num,$line,$page_line,$start,$page,$search);
$url="<a href=../../../>".$fun_r['index']."</a>&nbsp;>&nbsp;".$fun_r['saygbook'];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>留言板 - Powered by EmpireCMS</title>
<meta name="keywords" content="<?=$bname?>" />
<meta name="description" content="<?=$bname?>" />
<link href="/skin/default/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/skin/default/js/tabs.js"></script>
</head>
<body class="listpage">
<!-- 页头 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="top">
    <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="63%">
                    <!-- 登录 -->
                    <script>
                        document.write('<script src="/e/member/login/loginjs.php?t='+Math.random()+'"><'+'/script>');
                    </script>
                </td>
                <td align="right">
                    <a onclick="window.external.addFavorite(location.href,document.title)" href="#ecms">加入收藏</a> | <a onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('/')" href="#ecms">设为首页</a> | <a href="/e/member/cp/">会员中心</a> | <a href="/e/DoInfo/">我要投稿</a> | <a href="/e/web/?type=rss2" target="_blank">RSS<img src="/skin/default/images/rss.gif" border="0" hspace="2" /></a>
                </td>
            </tr>
        </table></td>
    </tr>
</table>
<table width="100%" border="0" cellpadding="0" cellspacing="10">
    <tr valign="middle">
        <td width="240" align="center"><a href="/"><img src="/skin/default/images/logo.gif" width="200" height="65" border="0" /></a></td>
        <td align="center"><a href="http://www.phome.net/OpenSource/" target="_blank"><img src="/skin/default/images/opensource.gif" width="100%" height="70" border="0" /></a></td>
    </tr>
</table>
<!-- 导航tab选项卡 -->
<table width="920" border="0" align="center" cellpadding="0" cellspacing="0" class="nav">
    <tr>
        <td class="nav_global"><ul>
            <li class="curr" id="tabnav_btn_0" onmouseover="tabit(this)"><a href="/">首页</a></li>
            <li id="tabnav_btn_1" onmouseover="tabit(this)"><a href="/news/">新闻中心</a></li>
            <li id="tabnav_btn_2" onmouseover="tabit(this)"><a href="/download/">下载中心</a></li>
            <li id="tabnav_btn_3" onmouseover="tabit(this)"><a href="/movie/">影视频道</a></li>
            <li id="tabnav_btn_4" onmouseover="tabit(this)"><a href="/shop/">网上商城</a></li>
            <li id="tabnav_btn_5" onmouseover="tabit(this)"><a href="/flash/">FLASH频道</a></li>
            <li id="tabnav_btn_6" onmouseover="tabit(this)"><a href="/photo/">图片频道</a></li>
            <li id="tabnav_btn_7" onmouseover="tabit(this)"><a href="/article/">文章中心</a></li>
            <li id="tabnav_btn_8" onmouseover="tabit(this)"><a href="/info/">分类信息</a></li>
        </ul></td>
    </tr>
</table>
<table width="100%" border="0" cellspacing="10" cellpadding="0">
<tr valign="top">
<td class="list_content"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="position">
<tr>
<td>现在的位置：<a href=../../../>首页</a>&nbsp;>&nbsp;<?=$bname?>
</td>
</tr>
</table><table width="100%" border="0" cellspacing="0" cellpadding="0" class="box">
	<tr>
		<td><table width="100%" border="0" cellpadding="3" cellspacing="2">
			<tr>
				<td align="center" bgcolor="#E1EFFB"><strong><?=$bname?></strong></td>
			</tr>
			<tr>
				<td align="left" valign="top"><table width="100%" border="0" cellpadding="4" cellspacing="0" bgcolor="#FFFFFF">
						<tr>
							<td height="100%" valign="top" bgcolor="#FFFFFF"> 
<?
while($r=$empire->fetch($sql))
{
	$r['retext']=nl2br($r[retext]);
	$r['lytext']=nl2br($r[lytext]);
?>

								<table width="92%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#F4F9FD" class="tableborder">
										<tr class="header">
											<td width="55%" height="23">发布者: <?=$r[name]?> </td>
											<td width="45%">发布时间: <?=$r[lytime]?> </td>
										</tr>
										<tr bgcolor="#FFFFFF">
											<td height="23" colspan="2"><table border="0" width="100%" cellspacing="1" cellpadding="8" bgcolor='#cccccc'>
													<tr>
														<td width='100%' bgcolor='#FFFFFF' style='word-break:break-all'> <?=$r[lytext]?> </td>
													</tr>
												</table>
												
<?
if($r[retext])
{
?>

												<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
													<tr>
														<td><img src="../../data/images/regb.gif" width="18" height="18" /><strong><font color="#FF0000">回复:</font></strong> <?=$r[retext]?> </td>
													</tr>
												</table>
												
<?
}
?> </td>
										</tr>
									</table>
								<br />
								
<?
}
?>

								<table width="92%" border="0" align="center" cellpadding="4" cellspacing="1">
									<tr>
										<td>分页: <?=$listpage?></td>
									</tr>
								</table>
								<form action="../../enews/index.php" method="post" name="form1" id="form1">
									<table width="92%" border="0" align="center" cellpadding="4" cellspacing="1"class="tableborder">
										<tr class="header">
											<td colspan="2" bgcolor="#F4F9FD"><strong>请您留言:</strong></td>
										</tr>
										<tr bgcolor="#FFFFFF">
											<td width="20%">姓名:</td>
											<td width="722" height="23"><input name="name" type="text" id="name" />
												*</td>
										</tr>
										<tr bgcolor="#FFFFFF">
											<td>联系邮箱:</td>
											<td height="23"><input name="email" type="text" id="email" />
												*</td>
										</tr>
										<tr bgcolor="#FFFFFF">
											<td>联系电话:</td>
											<td height="23"><input name="call" type="text" id="call" /></td>
										</tr>
										<tr bgcolor="#FFFFFF">
											<td>留言内容(*):</td>
											<td height="23"><textarea name="lytext" cols="60" rows="12" id="lytext"></textarea></td>
										</tr>
										<tr bgcolor="#FFFFFF">
											<td height="23">&nbsp;</td>
											<td height="23"><input type="submit" name="Submit3" value="提交" />
											<input type="reset" name="Submit22" value="重置" />
											<input name="enews" type="hidden" id="enews" value="AddGbook" /></td>
										</tr>
									</table>
								</form></td>
						</tr>
				</table></td>
			</tr>
		</table></td>
	</tr>
</table></td>
</tr>
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
<?php
db_close();
$empire=null;
?>