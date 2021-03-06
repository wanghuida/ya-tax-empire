<?php
if(!defined('InEmpireCMS'))
{
	exit();
}
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>
        <?=defined('empirecms')?$r[title]:'用户控制面板'?>
    </title>
    <meta name="keywords" content="<?=defined('empirecms')?$r[title]:'用户控制面板'?>">
    <meta name="description" content="<?=defined('empirecms')?$r[title]:'用户控制面板'?>">
    <link rel="stylesheet" href="/skin/default/css/yatax.css" type="text/css"
          media="screen, project, print">
    <link rel="stylesheet" href="/skin/default/css/globle_cn_ie6.css" type="text/css"
          media="screen, project, print">
    <link rel="stylesheet" href="/skin/default/css/jquery.ui.theme.css" type="text/css"
          media="screen, project, print">
    <script type="text/javascript" src="/skin/default/js/jquery-1.8.2.js">
    </script>
</head>
<body>
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
<div id="container">
  <div class="bound body">
    <div> 您的位置：<?=$url?></div>
    <div class="grid215 left">
      <div class='leftNav' id='1001'>
        <div class='top' id='1002'></div>
        <div class='content' id='1003'>
        <?php
        $lguserid=intval(getcvar('mluserid'));//登陆用户ID
        $lgusername=RepPostVar(getcvar('mlusername'));//登陆用户
        $lggroupid=intval(getcvar('mlgroupid'));//会员组ID
        if($lggroupid)  //登陆会员显示菜单
        {
        ?>
        <a href="/e/member/EditInfo/">修改资料</a>
        <a href="/e/member/my/">帐号状态</a>
        <a href="/e/member/msg/">站内信息</a>
        <a href="/e/member/mspace/SetSpace.php">空间设置</a>
        <a href="/e/DoInfo/">管理信息</a>
        <a href="/e/member/fava/">收藏夹</a>
        <a href="/e/payapi/">在线支付</a>
        <a href="/e/member/friend/">我的好友</a>
        <a href="/e/member/buybak/">消费记录</a>
        <a href="/e/member/buygroup/">在线充值</a>
        <a href="/e/member/card/">点卡充值</a>
        <a href="#ecms" onclick="window.open('/e/ShopSys/buycar/','','width=680,height=500,scrollbars=yes,resizable=yes');">我的购物车</a>
        <a href="/e/ShopSys/ListDd/">我的订单</a>
        <a href="/e/enews/?enews=exit" onclick="return confirm('确认要退出?');">退出登陆</a>
        <?php
        }
        else  //游客显示菜单
        {
        ?>  
        <a href="/e/member/login/">会员登陆</a>
        <a href="/e/member/register/">注册帐号</a>
        <a href="/e/DoInfo/">发布投稿</a>
        <a href="#ecms" onclick="window.open('/e/ShopSys/buycar/','','width=680,height=500,scrollbars=yes,resizable=yes');">我的购物车</a>
        <?php
        }
        ?>
        </div>
        <div class='bottom' id='1004'></div>
      </div>
    </div>
    <div class="grid765_r left">
      <div class="core-network">
        <div class="content">
          