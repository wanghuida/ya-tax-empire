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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            全站搜索
        </title>
        <meta name="keywords" content="全站搜索">
        <meta name="description" content="全站搜索">
        <link rel="stylesheet" href="/skin/default/css/yatax.css" type="text/css" media="screen, project, print">
        <link rel="stylesheet" href="/skin/default/css/globle_cn_ie6.css" type="text/css" media="screen, project, print">
        <link rel="stylesheet" href="/skin/default/css/jquery.ui.theme.css" type="text/css" media="screen, project, print">
    </head>
    <body>
        <script type="text/javascript" src="/skin/default/js/jquery-1.8.2.js"></script>
		<div id="header">
    <div class="bound">
        <a href="/" id="logo">
            <img title="首页" src="/skin/default/images/logo_cn.gif">
        </a>
        <div class="topnav">
            <script>
                document.write('<script src="/e/member/login/loginjs.php?t='+Math.random()+'"><'+'/script>');
            </script>
        </div>
    </div>
</div>
<div id="menu">
    <div class="nav">
        <ul>
            <li is="menuindex">
                <a href="/" class="trad"><span>首页</span></a>
            </li>
            <li is="menuindex">
                <a iblk="行业洞察" href="/a/hangyedongcha" class="trad"><span>行业洞察</span></a>

                <div class="menuitempanel">
                    <div class="menucontentdiv">
                        <div class="menufillet_e"></div>
                        <div class="trad clearfix">
                            <ul class="taxonomy">
                                <a href="/a/hangyedongcha/yejiedongtai/" class="topfrx">业界动态</a><br/>
                                <a href="/a/hangyedongcha/zuixinfagui/" class="topfrx">最新法规</a><br/>
                                <a href="/a/hangyedongcha/gongsixinwen/" class="topfrx">公司新闻</a><br/>
                                <a href="/a/hangyedongcha/shuiwuwenhua/" class="topfrx">税文化研究</a><br/>
                            </ul>

                            <div class="verticalLine"></div>

                            <ul class="m_box">
                                <li><a href="/cn/industry/moving-forward/index.htm"><img height="140"
                                                                                         width="259"
                                                                                         src="/skin/default/images/hw_s_223305.gif"></a>
                                </li>
                                <li class="summary">
                                    <ul>
                                        <li>善道·永安税务师事务有限公司</li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="shadow_b_layout">
                            <div></div>
                        </div>
                    </div>
                </div>
            </li>
            <li is="menuindex">
                <a iblk="服务与方案" href="/a/yewujieshao" class="solutions_products"><span>服务与方案</span></a>

                <div class="menuitempanel">
                    <div class="menucontentdiv">
                        <div class="menufillet_e"></div>
                        <div class="solutions_products clearfix">
                            <ul class="list">
                                <li><a href="/a/yewujieshao/#123" class="topfrx">税务培训</a></li>
                                <li><a href="/a/yewujieshao/#122" class="topfrx">税务申报代理</a></li>
                                <li><a href="/a/yewujieshao/#121" class="topfrx">个人所得税代理</a></li>
                                <li><a href="/a/yewujieshao/#120" class="topfrx">汇算清缴代理</a></li>
                                <li><a href="/a/yewujieshao/#119" class="topfrx">税政协助</a></li>
                            </ul>
                            <ul class="list">
                                <li><a href="/a/yewujieshao/#118" class="topfrx">转让定价</a></li>
                                <li><a href="/a/yewujieshao/#117" class="topfrx">税务筹划</a></li>
                                <li><a href="/a/yewujieshao/#116" class="topfrx">税务审计</a></li>
                                <li><a href="/a/yewujieshao/#115" class="topfrx">税务顾问</a></li>
                                <li><a href="/a/yewujieshao" class="topfrx">其他业务</a></li>
                            </ul>
                            <ul class="list last">
                                <li><a href="/a/chenggonganli" class="topfrx">成功案例</a></li>
                                <li><a href="/a/chenggonganli/#180" class="topfrx">合作企业</a></li>
                            </ul>

                            <div class="verticalLine"></div>
                            <ul class="m_box">
                                <li>
                                    <a href="/" target="_blank"><img height="144" width="217"
                                                                     src="/skin/default/images/hw_s_223306.gif"></a>
                                </li>
                                <li class="summary">
                                    <ul>
                                        <li>善道·永安税务师事务有限公司</li>
                                    </ul>
                                </li>
                            </ul>

                        </div>
                        <div class="shadow_b_layout">
                            <div></div>
                        </div>
                    </div>
                </div>
            </li>
            <li is="menuindex">
                <a iblk="财税大课堂" href="/a/ketang" class="support"><span>财税课堂</span></a>

                <div class="menuitempanel">
                    <div class="menucontentdiv">
                        <div class="menufillet_e"></div>
                        <div class="support clearfix">
                            <ul class="list last">
                                <li><a href="/a/ketang/zhushui/" class="topfrx">注册税务师</a></li>
                                <li><a href="/a/ketang/chongzu" class="topfrx">企业重组培训</a></li>
                                <li><a href="/a/ketang/yinggaizeng" class="topfrx">营改增专题</a></li>
                                <li><a href="/a/ketang/gonggao/" class="topfrx">培训公告</a></li>
                                <li><a href="/e/tool/gbook/?bid=2" class="topfrx">在线咨询</a></li>
                            </ul>
                            <div class="verticalLine"></div>

                            <ul class="m_box">
                                <li><img height="144" width="217" src="/skin/default/images/hw_s_223303.gif"></li>
                                <li class="summary">
                                    <ul>
                                        <li>欢迎来到财税大课堂</li>
                                    </ul>
                                </li>
                            </ul>

                        </div>
                        <div class="shadow_b_layout">
                            <div></div>
                        </div>
                    </div>
                </div>
            </li>
            <li is="menuindex">
                <a iblk="关于永安" href="/a/guanyuwomen/" class="about_yatax"><span>关于永安</span></a>

                <div class="menuitempanel">
                    <div class="menucontentdiv">
                        <div class="menufillet_e"></div>
                        <div class="trad clearfix">
                            <ul class="list">
                                <li><a href="/a/guanyuwomen/#131" class="topfrx">公司简介</a></li>
                                <li><a href="/a/guanyuwomen/#130" class="topfrx">公司理念</a></li>
                                <li><a href="/a/guanyuwomen/#129" class="topfrx">专家团队</a></li>
                            </ul>
                            <ul class="list last">
                                <li><a href="/a/guanyuwomen/#128" class="topfrx">联系方式</a></li>
                                <li><a href="/e/tool/gbook/?bid=3" class="topfrx">留言板</a></li>
                            </ul>
                            <div class="verticalLine"></div>
                            <ul class="m_box">
                                <li><a href="/a/guanyuwomen/">
                                    <img height="155" width="273" src="/skin/default/images/hw_u_173050.jpg"></a></li>
                                <li>善道·永安税务师事务有限公司</li>
                            </ul>

                        </div>
                        <div class="shadow_b_layout">
                            <div></div>
                        </div>
                    </div>
                </div>
            </li>
            <li is="menuindex">
                <a iblk="加入永安" href="/a/jiaruyongan" class="join_yatax"><span>加入永安</span></a>

                <div class="menuitempanel">
                    <div class="menucontentdiv">
                        <div class="menufillet_e"></div>
                        <div class="trad clearfix">
                            <ul class="list">
                                <li><a href="/a/jiaruyongan/" class="topfrx">总经理助理</a></li>
                                <li><a href="/a/jiaruyongan/" class="topfrx">高级项目经理</a></li>
                                <li><a href="/a/jiaruyongan/" class="topfrx">项目助理</a></li>
                            </ul>
                            <ul class="list">
                                <li><a href="/a/jiaruyongan/" class="topfrx">教育项目经理</a></li>
                            </ul>
                            <ul class="list last">
                                <li><a href="/a/jiaruyongan/" class="topfrx">网站产品经理</a></li>
                            <li><a href="/a/jiaruyongan/" class="topfrx">技术与开发人员</a></li>
                            </ul>


                           <div class="verticalLine"></div>

                            <ul class="m_box">
                                <li><a href="/" target="_blank"><img height="140" width="204"
                                                                            src="/skin/default/images/hw_192713.jpg"></a>
                                </li>
                                <li class="title"><a href="/" target="_blank">走近永安</a></li>
                            </ul>
                        </div>
                        <div class="shadow_b_layout">
                            <div></div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>
	    <div class="bound body">
	    	<div>现在的位置：<a href="/">首页</a>&nbsp;>&nbsp;搜索</div>
	    	<div class="grid765_r left">
				<form action='index.php' method="GET" name="search_news" id="search_news">
					关键字：
					<input name="keyboard" type="text" id="keyboard" value="<?=$keyboard?>" size="42" />
	        		<select name="field" id="field">
			          <option value="1">全文</option>
			          <option value="2">标题</option>
			          <option value="3">内容</option>
			        </select> 
			        <input type="submit" name="Submit22" value="搜索" />
			        <font color="#666666">(多个关键字请用&quot;空格&quot;隔开)</font> 
				</form>
				系统搜索到约有<strong><?=$num?></strong>项符合<strong><?=$keyboard?></strong>的查询结果
				<div class="hr"></div>
				
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
				<div class="s_result">
					<?=$smalltext?><br/>
					<span class="a"><?=$titleurl?> - <?=$newstime?></span>
				</div>
				<div class="hr"></div>
				
<?php
}
db_close();
$empire=null;
?>

				<?=$listpage?>
			</div>
			<div class="grid215 right">
			    <div class="white-paper">
			        <div class="body">
			            <div class="header">
			                <div class="icon"></div>
			                培训公告
			            </div>
			            <div class="content">
			                <ul>
			                    <?php
			                    require_once ECMS_PATH.'e/data/dbcache/class1.php';
			                    $link=db_connect();
			                    $empire=new mysqlquery();
			                    $peixungg = $empire->query("select * from phome_ecms_news where classid='91' order by id desc limit 5");
			                    while ($r=$empire->fetch($peixungg)) {
			                        $titleurl=sys_ReturnBqTitleLink($r);
			                        echo "<li><a href=".$titleurl." target=_blank>".$r['title']."</a></li>";
			                    }
			                    ?>
			                </ul>
			                <div style="padding-left:80%;height:20px">
			                    <a href="/a/ketang/gonggao/" class="expand">更多</a>
			                </div>
			            </div>
			            <div class="clear"></div>
			        </div>
			    </div>
			    <div class="related-news">
			        <div class="body">
			            <div class="header">
			                <div class="icon"></div>
			                最新动态
			            </div>
			            <div class="content">
			                <ul>
			                    <?php
			                    $zuixindt = $empire->query("select * from phome_ecms_news where classid in ('72','73','74','67' ,'68','69') order by id desc limit 5");
			                    while ($r=$empire->fetch($zuixindt)) {
			                        $titleurl=sys_ReturnBqTitleLink($r);
			                        echo "<li><a href=".$titleurl." target=_blank>".$r['title']."</a></li>";
			                    }
			                    ?>
			                </ul>
			                <div style="padding-left:80%">
			                    <a href="/a/hangyedongcha/" class="expand">更多</a>
			                </div>
			            </div>
			            <div class="clear"></div>
			        </div>
			    </div>
			    <div class="tags">
			        <div class="body">
			            <div class="header">
			                <div class="icon"></div>
			                热门标签
			            </div>
			            <div class="tags">
			                <span class="highlights3">
			                    <a href="/a/peixunzhuanti/">培训业务</a>
			                </span> 
			                <span class="highlights3">
			                    <a href="/a/yewujieshao/#117">税务筹划</a>
			                </span>
			                <span class="highlights3">
			                    <a href="/a/yewujieshao/#122">税务代理</a>
			                </span>
			                <span class="highlights3">
			                    <a href="/a/peixunzhuanti/qiyechongzu">企业重组</a>
			                </span>
			            </div>
			        </div>
			    </div>
			</div>
		</div>
		<script type="text/javascript" src="/skin/default/js/global_cn.index.js"></script>


<div id="seo-footer" style="height:230px;">
        <div class="bound">
            <div class="section information">
                <span class="title">关于永安</span>
                <ul>
                    <li><a href="/a/guanyuwomen/#131">公司简介</a></li>
                    <li><a href="/a/guanyuwomen/#130">公司理念</a></li>
                    <li><a href="/a/guanyuwomen/#129">专家团队</a></li>
                    <li><a href="/a/guanyuwomen/#128">联系我们</a></li>
                    <li><a href="/a/jiaruyongan/">加入永安</a></li>
                </ul>
            </div>

            <div class="section information">
                <span class="title">行业洞察</span>
                <ul>
                    <li><a href="/a/hangyedongcha/yejiedongtai/">业界动态</a></li>
                    <li><a href="/a/hangyedongcha/zuixinfagui/">最新法规</a></li>
                    <li><a href="/a/hangyedongcha/gongsixinwen/">公司新闻</a></li>
                    <li><a href="/a/hangyedongcha/shuiwuwenhua/">税务文化研究</a></li>
                </ul>
            </div>

            <div class="section information">
                <span class="title">服务与方案</span>
                <ul>
                    <li><a href="/a/yewujieshao/">税务业务</a></li>
                    <li><a href="/a/yewujieshao/">培训业务</a></li>
                    <li><a href="/a/chenggonganli/">成功案例</a></li>
                    <li><a href="/a/chenggonganli/#180">合作企业</a></li>
                </ul>
            </div>

            <div class="section information">
                <span class="title">财税课堂</span>
                <ul>
                    <li><a href="/a/ketang/zhushui/" class="topfrx">注册税务师</a></li>
                    <li><a href="/a/ketang/chongzu" class="topfrx">企业重组培训</a></li>
                    <li><a href="/a/ketang/yinggaizeng" class="topfrx">营改增专题</a></li>
                    <li><a href="/a/ketang/gonggao/" class="topfrx">培训公告</a></li>
                    <li><a href="/e/tool/gbook/?bid=2" class="topfrx">在线咨询</a></li>
                </ul>
            </div>

            <div class="section information" style="margin-right:0px;">

                <span class="title">相关网站</span>
                <ul>
                    <li><a href="http://www.taxren.net" target="_blank">纳税人论坛</a></li>
                    <li><a href="http://www.cctaa.cn/" target="_blank">中国注册税务师协会</a></li>
                    <li><a href="http://zszx.hb-n-tax.gov.cn/" target="_blank">湖北省注税管理中心</a></li>
                    <li><a href="http://www.chinatax.gov.cn/n8136506/index.html" target="_blank">国家税务总局</a></li>
                </ul>
            </div>
        </div>

        <div style=" width:980px;margin:auto;color:#FFF;padding-top:10px;">
            <ul style="height:20px;text-align:center">
                <li>版权所有 © 善道·永安税务师事务有限公司</li>
                <li><pre>电话：027-88937081       网址：http://www.ya-tax.com</pre></li>
            </ul>
        </div>

</div>
	</body>
</html>
<?php
db_close();
$empire=null;
?>