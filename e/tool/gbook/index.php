<?php
require("../../class/connect.php");
if (!defined('InEmpireCMS')) {
    exit();
}
require("../../class/db_sql.php");
require("../../class/q_functions.php");
require "../" . LoadLang("pub/fun.php");
$link = db_connect();
$empire = new mysqlquery();
$editor = 1;
//分类id
$bid = (int)$_GET['bid'];
$gbr = $empire->fetch1("select bid,bname,groupid from {$dbtbpre}enewsgbookclass where bid='$bid'");
if (empty($gbr['bid'])) {
    printerror("EmptyGbook", "", 1);
}
//权限
if ($gbr['groupid']) {
    include("../../class/user.php");
    $user = islogin();
    include("../../data/dbcache/MemberLevel.php");
    if ($level_r[$gbr[groupid]][level] > $level_r[$user[groupid]][level]) {
        echo"<script>alert('您的会员级别不足(" . $level_r[$gbr[groupid]][groupname] . ")，没有权限提交信息!');history.go(-1);</script>";
        exit();
    }
}
esetcookie("gbookbid", $bid, 0);
$bname = $gbr['bname'];
$search = "&bid=$bid";
$page = (int)$_GET['page'];
$start = 0;
$line = $public_r['gb_num']; //每页显示条数
$page_line = 12; //每页显示链接数
$offset = $start + $page * $line; //总偏移量
$totalnum = (int)$_GET['totalnum'];
if ($totalnum > 0) {
    $num = $totalnum;
} else {
    $totalquery = "select count(*) as total from {$dbtbpre}enewsgbook where bid='$bid' and checked=0";
    $num = $empire->gettotal($totalquery); //取得总条数
}
$search .= "&totalnum=$num";
$query = "select lyid,name,email,`call`,lytime,lytext,retext from {$dbtbpre}enewsgbook where bid='$bid' and checked=0";
$query = $query . " order by lyid desc limit $offset,$line";
$sql = $empire->query($query);
$listpage = page1($num, $line, $page_line, $start, $page, $search);
$url = "<a href=../../../>" . $fun_r['index'] . "</a>&nbsp;>&nbsp;" . $fun_r['saygbook'];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><?=defined('empirecms') ? $r[title] : '留言板'?></title>
    <link rel="stylesheet" href="/skin/default/css/yatax.css" type="text/css" media="screen, project, print">
    <link rel="stylesheet" href="/skin/default/css/globle_cn_ie6.css" type="text/css" media="screen, project, print">
    <link rel="stylesheet" href="/skin/default/css/jquery.ui.theme.css" type="text/css" media="screen, project, print">
    <script type="text/javascript" src="/skin/default/js/jquery-1.8.2.js"></script>
</head>
<body>
<!-- 页头 -->
<div id="header">
    <div class="bound">
        <a href="/" id="logo">
            <img title="首页" src="/skin/default/images/logo_cn.gif"></a>

        <div class="topnav">
            <div class="log">
                <!--change iframe to ajax start-->
                <script>
                    document.write('<script src="/e/member/login/loginjs.php?t=' + Math.random() + '"><' + '/script>');
                </script>
            </div>
            <!--change iframe to ajax end-->

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

<<<<<<< HEAD
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
                    <li><a href="/a/yewujieshao/">成功案例</a></li>
                    <li><a href="/a/yewujieshao/">合作伙伴</a></li>
                </ul>
            </div>

            <div class="section information">
                <span class="title">财税大课堂</span>
                <ul>
                    <li><a href="/a/peixunzhuanti/yinggaizeng/">营改增培训</a></li>
                    <li><a href="/a/peixunzhuanti/qiyechongzu/">企业重组培训</a></li>
                    <li><a href="/a/peixunzhuanti/zhushui/">注册税务师培训</a></li>
                    <li><a href="/a/peixunzhuanti/peixungonggao/">培训公告</a></li>
                </ul>
            </div>
=======
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
                            <ul class="list last">
                                <li><a href="/a/yewujieshao/#118" class="topfrx">转让定价</a></li>
                                <li><a href="/a/yewujieshao/#117" class="topfrx">税务筹划</a></li>
                                <li><a href="/a/yewujieshao/#116" class="topfrx">税务审计</a></li>
                                <li><a href="/a/yewujieshao/#115" class="topfrx">税务顾问</a></li>
                                <li><a href="/a/yewujieshao" class="topfrx">其他业务</a></li>
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
                <a iblk="财税大课堂" href="/a/peixunzhuanti" class="support"><span>财税大课堂</span></a>

                <div class="menuitempanel">
                    <div class="menucontentdiv">
                        <div class="menufillet_e"></div>
                        <div class="support clearfix">
                            <ul class="list last">
                                <li><a href="/a/peixunzhuanti/yinggaizeng" class="topfrx">营改增专题</a></li>
                                <li><a href="/a/peixunzhuanti/qiyechongzu" class="topfrx">企业重组培训</a></li>
                                <li><a href="/a/peixunzhuanti/" class="topfrx">税收课堂</a></li>
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
>>>>>>> e4d68972169007211228caceace8e4fc4927b63b

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
                            </ul>
                            <div class="verticalLine"></div>
                            <ul class="m_box">
                                <li><a href="/a/guanyuwomen/">
                                    <img height="155" width="273" src="/skin/default/images/hw_u_173050.jpg"></a></li>
                                <li>善道·永安税务师事务有限公司</li>
                            </ul>

<<<<<<< HEAD
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
=======
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

<div id="container">
    <div class="bound body">
        <div>您的位置：<a href=/>首页</a>&nbsp;>&nbsp;<?=$bname?></div>
        <div class="liuyan-left">
            <?
            while ($r = $empire->fetch($sql)) {
                $r['retext'] = nl2br($r[retext]);
                $r['lytext'] = nl2br($r[lytext]);
                ?>
                <div class="liuyan">
                    <div class="liuyan-top">
                        <span class="liuyan-title">发布者: <?=$r[name]?></span>
                        <span>发布时间: <?=$r[lytime]?></span>
                    </div>
                    <div class="liuyan-content"><?=$r[lytext]?></div>
                    <?
                        if ($r[retext]) {
                    ?>
                     <div class="liuyan-reply">
                         <strong><font color="#FF0000">回复:</font></strong> <?= $r[retext] ?>
                     </div>
                    <?
                        }
                    ?>
                </div>
                    <?
                        }
                    ?>
            分页： <?=$listpage?>
        </div>
        <div class="liuyan-right">
            <fieldset style="width:280px;height:480px;border: 1px ridge;padding: 10px 20px;">
                <legend>发布留言</legend>
                <form action="../../enews/index.php" method="post" name="form1" id="form1">
                    姓　　名：<input name="name" type="text" id="name"/> *<br/>
                    邮　　箱：<input name="email" type="text" id="email"/> *<br/>
                    联系电话：<input name="call" type="text" id="call"/><br/>
                    留言内容* <br/><textarea name="lytext" style="width: 280px;height: 350px;" id="lytext"></textarea><br/>
                    <input type="submit" name="Submit3" style="width: 50px;" value="提交"/>
                    <input type="reset" name="Submit22" style="width: 50px;" value="重置"/>
                    <input name="enews" type="hidden" id="enews" value="AddGbook"/>
                </form>
            </fieldset>
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
                <li><a href="/a/yewujieshao/">成功案例</a></li>
                <li><a href="/a/yewujieshao/">合作伙伴</a></li>
            </ul>
        </div>

        <div class="section information">
            <span class="title">财税大课堂</span>
            <ul>
                <li><a href="/a/peixunzhuanti/yinggaizeng/">营改增培训</a></li>
                <li><a href="/a/peixunzhuanti/qiyechongzu/">企业重组培训</a></li>
                <li><a href="/a/peixunzhuanti/zhushui/">注册税务师培训</a></li>
                <li><a href="/a/peixunzhuanti/peixungonggao/">培训公告</a></li>
>>>>>>> e4d68972169007211228caceace8e4fc4927b63b
            </ul>
        </div>

        <div class="section information" style="margin-right:0px;">

            <span class="title">相关网站</span>
            <ul>
                <li><a href="http://www.taxren.net" target="_blank">纳税人论坛</a></li>
                <li><a href="http://www.cctaa.cn/" target="_blank">中国注册税务师协会</a></li>
                <li><a href="http://zszx.hb-n-tax.gov.cn/" target="_blank">湖北省注税管理中心</a></li>
                <li><a href="http://www.chinatax.gov.cn/n8136506/index.html" target="_blank">国家税务总局</a>
                </li>
            </ul>
        </div>
    </div>

    <div style=" width:980px;margin:auto;color:#FFF;padding-top:10px;">
        <ul style="height:20px;text-align:center">
            <li>版权所有 © 善道·永安税务师事务有限公司</li>
            <li>
                <pre>电话：027-88937081       网址：http://www.ya-tax.com</pre>
            </li>
        </ul>
    </div>
</div>

</body>
</html>
<?php
db_close();
$empire = null;
?>