<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><?=defined('empirecms') ? $r[title] : '在线咨询'?></title>
    <link rel="stylesheet" href="[!--news.url--]skin/default/css/yatax.css" type="text/css" media="screen, project, print">
    <link rel="stylesheet" href="[!--news.url--]skin/default/css/globle_cn_ie6.css" type="text/css" media="screen, project, print">
    <link rel="stylesheet" href="[!--news.url--]skin/default/css/jquery.ui.theme.css" type="text/css" media="screen, project, print">
    <script type="text/javascript" src="[!--news.url--]skin/default/js/jquery-1.8.2.js"></script>
</head>
<body>

[!--temp.header--]

<div id="container">
    <div class="bound body">
        <div>您的位置：<a href="[!--news.url--]">首页</a>&nbsp;>&nbsp;<?=$bname?></div>
        <div class="grid215 left">            
            <div class='leftNav' id='1001'>
                <div class='top' id='1002'></div>
                <div class='content' id='1003'>
                    <?php
                        $navname = $empire->query("select bid,bname from {$dbtbpre}enewsgbookclass");
                        while ($r=$empire->fetch($navname)) {
                           echo "<a href='[!--news.url--]e/tool/gbook/?bid=".$r['bid']."' id=".$r['bid'].">".$r['bname']."</a>";
                        }
                    ?>
                </div>
                <script type="text/javascript">
                    document.getElementById([!--bid--]).className="on"
                </script> 
                <div class='bottom' id='1004'></div>
            </div>
        </div>
        <div class="grid765_r left">
            <div class="grid550_l left">
                <div>
                    <a href="#publish" style="font-size: 22px">发布留言>>></a>
                </div>
                <div style="margin-top: 10px;">
                    <?
                    while ($r = $empire->fetch($sql)) {
                        $r['retext'] = nl2br($r[retext]);
                        $r['lytext'] = nl2br($r[lytext]);
                        ?>
                        <div style="border:solid 1px;margin-bottom: 5px;line-height: 22px;">
                            <div style="background-color: #d3d3d3; color: #ffffff;">
                                <span style="padding:0 20px 0 10px;background: url([!--news.url--]skin/default/images/ent_cn_img_more.gif) no-repeat 2% 50%">发布者: <?=$r[name]?></span>
                                <span>发布时间: <?=$r[lytime]?></span>
                            </div>
                            <div style="padding:5px 10px; min-height:50px;"><?=$r[lytext]?></div>
                            <?
                                if ($r[retext]) {
                            ?>
                            <div style="padding:5px 10px;border-top:1px dashed;">
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
                <div id="publish">
                    <fieldset style="width:468px;height:350px;border: 1px ridge;padding: 10px 20px;">
                        <legend>发布留言</legend>
                        <form action="../../enews/index.php" method="post" name="form1" id="form1">
                            姓　　名：<input name="name" type="text" id="name"/> *&nbsp;&nbsp;&nbsp;&nbsp;
                            邮　　箱：<input name="email" type="text" id="email"/> *<br/>
                            联系电话：<input name="call" type="text" id="call"/><br/>
                            留言内容* <br/><textarea name="lytext" style="width: 450px;height: 220px;" id="lytext"></textarea><br/>
                            <input type="submit" name="Submit3" style="width: 50px;" value="提交"/>
                            <input type="reset" name="Submit22" style="width: 50px;" value="重置"/>
                            <input name="enews" type="hidden" id="enews" value="AddGbook"/>
                        </form>
                    </fieldset>
                </div>
                <a style="padding-left: 90%;" href="#header">回顶部</a>
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
                                $peixungg = $empire->query("select * from phome_ecms_news where classid='71' order by id desc limit 5");
                                while ($r=$empire->fetch($peixungg)) {
                                    echo "<li><a href=".$r['titleurl']."target=_blank>".$r['title']."</a></li>";
                                }
                                ?>
                            </ul>
                            <div style="padding-left:80%;height:20px">
                                <a href="[!--news.url--]a/peixunzhuanti/peixungonggao/" class="expand">更多</a>
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
                                $zuixindt = $empire->query("select * from phome_ecms_news where classid in ("72","73","74","67" ,"68","69") order by id desc limit 5");
                                while ($r=$empire->fetch($zuixindt)) {
                                    echo "<li><a href=".$r['titleurl']."target=_blank>".$r['title']."</a></li>";
                                }
                                ?>
                            </ul>
                            <div style="padding-left:80%">
                                <a href="[!--news.url--]a/hangyedongcha/" class="expand">更多</a>
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
                                <a href="[!--news.url--]a/peixunzhuanti/">培训业务</a>
                            </span> 
                            <span class="highlights3">
                                <a href="[!--news.url--]a/yewujieshao/#117">税务筹划</a>
                            </span>
                            <span class="highlights3">
                                <a href="[!--news.url--]a/yewujieshao/#122">税务代理</a>
                            </span>
                            <span class="highlights3">
                                <a href="[!--news.url--]a/peixunzhuanti/qiyechongzu">企业重组</a>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

[!--temp.footer--]

</body>
</html>