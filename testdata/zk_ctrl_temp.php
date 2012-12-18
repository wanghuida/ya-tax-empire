<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>
        [!--pagetitle--]
    </title>
    <meta name="keywords" content="[!--pagekey--]">
    <meta name="description" content="[!--pagedes--]">
    <link rel="stylesheet" href="[!--news.url--]skin/default/css/yatax.css" type="text/css"
          media="screen, project, print">
    <link rel="stylesheet" href="[!--news.url--]skin/default/css/globle_cn_ie6.css" type="text/css"
          media="screen, project, print">
    <link rel="stylesheet" href="[!--news.url--]skin/default/css/jquery.ui.theme.css" type="text/css"
          media="screen, project, print">
    <script type="text/javascript" src="[!--news.url--]skin/default/js/jquery-1.8.2.js">
    </script>
</head>
<body>
[!--temp.header--]
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
        <a href="[!--news.url--]e/member/EditInfo/">修改资料</a>
        <a href="[!--news.url--]e/member/my/">帐号状态</a>
        <a href="[!--news.url--]e/member/msg/">站内信息</a>
        <a href="[!--news.url--]e/member/mspace/SetSpace.php">空间设置</a>
        <a href="[!--news.url--]e/DoInfo/">管理信息</a>
        <a href="[!--news.url--]e/member/fava/">收藏夹</a>
        <a href="[!--news.url--]e/payapi/">在线支付</a>
        <a href="[!--news.url--]e/member/friend/">我的好友</a>
        <a href="[!--news.url--]e/member/buybak/">消费记录</a>
        <a href="[!--news.url--]e/member/buygroup/">在线充值</a>
        <a href="[!--news.url--]e/member/card/">点卡充值</a>
        <a href="#ecms" onclick="window.open('/e/ShopSys/buycar/','','width=680,height=500,scrollbars=yes,resizable=yes');">我的购物车</a>
        <a href="[!--news.url--]e/ShopSys/ListDd/">我的订单</a>
        <a href="[!--news.url--]e/enews/?enews=exit" onclick="return confirm('确认要退出?');">退出登陆</a>
        <?php
        }
        else  //游客显示菜单
        {
        ?>  
        <a href="[!--news.url--]e/member/login/">会员登陆</a>
        <a href="[!--news.url--]e/member/register/">注册帐号</a>
        <a href="[!--news.url--]e/DoInfo/">发布投稿</a>
        <a href="#ecms" onclick="window.open('[!--news.url--]e/ShopSys/buycar/','','width=680,height=500,scrollbars=yes,resizable=yes');">我的购物车</a>
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
          [!--empirenews.template--]
        </div>
      </div>
    </div>
  </div>
</div>
[!--temp.footer--]
</body>
</html>