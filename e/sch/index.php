<?php
require("../class/connect.php");
if(!defined('InEmpireCMS'))
{
	exit();
}
require("../class/db_sql.php");
require("../data/dbcache/class.php");
require LoadLang("pub/fun.php");
require("../class/schallfun.php");
$link=db_connect();
$empire=new mysqlquery();
$searchtime=time();
$totalnum=(int)$_GET['totalnum'];
$firstsearch=0;
if($totalnum<1)
{
	$firstsearch=1;
	//搜索间隔
	$lastsearchtime=(int)getcvar('lastschalltime');
	if($lastsearchtime)
	{
		if($searchtime-$lastsearchtime<$public_r[schalltime])
		{
			printerror('SchallOutTime','',1);
		}
	}
	//设置最后搜索时间
	esetcookie('lastschalltime',$searchtime,$searchtime+3600*24);
}
$page=(int)$_GET['page'];
$start=0;
$page_line=$public_r['schallpagenum'];//每页显示链接数
$line=$public_r['schallnum'];//每页显示记录数
$offset=$start+$page*$line;//总偏移量
//编码
if($phome_ecms_charver!='gb2312')
{
	include_once(ECMS_PATH.'e/class/doiconv.php');
	$iconv=new Chinese('');
	$char=$phome_ecms_charver=='big5'?'BIG5':'UTF8';
	$targetchar='GB2312';
}
$schallr=ReturnSearchAllSql($_GET);
require("../data/dbcache/SearchAllTb.php");
$keyboard=$schallr['keyboard'];
$query="select id,classid from {$dbtbpre}enewssearchall where ".$schallr['where'];
if($totalnum<1)
{
	$totalquery="select count(*) as total from {$dbtbpre}enewssearchall where ".$schallr['where'];
	$num=$empire->gettotal($totalquery);
	if(empty($num))
	{
		printerror('SchallNotRecord','',1);
	}
}
else
{
	$num=$totalnum;
}
$search=$schallr['search']."&totalnum=".$num;
$query.=" order by infotime desc limit $offset,$line";
$sql=$empire->query($query);
$listpage=page1($num,$line,$page_line,$start,$page,$search);
$url="<a href='".$public_r['newsurl']."'>".$fun_r['index']."</a>&nbsp;>&nbsp;".$fun_r['SearchAllNav'];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>搜索 - Powered by EmpireCMS</title>
<link href="/skin/default/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/skin/default/js/tabs.js"></script>
<style type="text/css">
<!--
.r {
display:inline;
font-weight:normal;
margin:0;
font-size:16px;
margin-top:10px;
}
.a{color:green}
.fl{color:#77c}
-->
</style>
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
					<td>现在的位置：<a href="/">首页</a>&nbsp;>&nbsp;搜索</td>
				</tr>
			</table>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="box">
				<tr>
					<td><form action='index.php' method="GET" name="search_news" id="search_news">
							<table width="100%" border="0" cellspacing="6" cellpadding="0">
								<tr>
									<td height="32">关键字：
										<input name="keyboard" type="text" id="keyboard" value="<?=$keyboard?>" size="42" />
                    <select name="field" id="field">
                      <option value="1">全文</option>
                      <option value="2">标题</option>
                      <option value="3">内容</option>
                    </select> 
                    <input type="submit" name="Submit22" value="搜索" />
                    <font color="#666666">(多个关键字请用&quot;空格&quot;隔开)</font> </td>
								</tr>
							</table>
						</form>
						<table width="100%" border="0" cellpadding="0" cellspacing="6">
							<tr>
								<td>系统搜索到约有<strong><?=$num?></strong>项符合<strong><?=$keyboard?></strong>的查询结果</td>
							</tr>
						</table>
						
<?php
$no=$offset;
$subnum=120;
$formatdate="Y-m-d H:i:s";
while($r=$empire->fetch($sql))
{
	$tbname=$class_r[$r[classid]]['tbname'];
	if(empty($tbname))
	{
		continue;
	}
	$no++;
	$titlefield=$schalltb_r[$tbname]['titlefield'];
	$smalltextfield=$schalltb_r[$tbname]['smalltextfield'];
	$infor=$empire->fetch1("select id,classid,titlepic,newstime,titleurl,groupid,newspath,filename,".$titlefield.",".$smalltextfield." from {$dbtbpre}ecms_".$tbname." where id='$r[id]' limit 1");
	$titleurl=sys_ReturnBqTitleLink($infor);
	$titlepic=$infor['titlepic']?$infor['titlepic']:$public_r['newsurl']."e/data/images/notimg.gif";
	$smalltext=SubSchallSmalltext($infor[$smalltextfield],$subnum);
	$title=DoReplaceFontRed($infor[$titlefield],$keyboard);
	$smalltext=DoReplaceFontRed($smalltext,$keyboard);
	$newstime=date($formatdate,$infor['newstime']);
?>

						<h2 class="r"><span><?=$no?>.</span> <a class="l" href="<?=$titleurl?>" target="_blank"><?=$title?></a></h2>
						<table width="80%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
							<tr>
								<td><?=$smalltext?></td>
							</tr>
							<tr>
								<td><span class="a"><?=$titleurl?> - <?=$newstime?></span></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							</tbody>
						</table>
						
<?php
}
db_close();
$empire=null;
?>

						<table width="100%" border="0" cellspacing="0" cellpadding="0" class="list_page">
							<tr>
								<td><?=$listpage?></td>
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