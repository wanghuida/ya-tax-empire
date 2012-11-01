<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            [!--pagetitle--]
        </title>
        <meta name="keywords" content="[!--pagekey--]">
        <meta name="description" content="[!--pagedes--]">
        <link rel="stylesheet" href="[!--news.url--]skin/default/css/yatax.css" type="text/css" media="screen, project, print">
        <link rel="stylesheet" href="[!--news.url--]skin/default/css/globle_cn_ie6.css" type="text/css" media="screen, project, print">
        <link rel="stylesheet" href="[!--news.url--]skin/default/css/jquery.ui.theme.css" type="text/css" media="screen, project, print">
    </head>
    <body>
        <script type="text/javascript" src="[!--news.url--]skin/default/js/jquery-1.8.2.js">
</script>[!--temp.header--]
        <div id="container">
            <div class="bound body">
                <div>
                    您当前的位置：[!--newsnav--]
                </div>
                <div class="grid215 left">
                    <div class='leftNav' id='1001'>
                        <div class='top' id='1002'></div>
                        <div class='content' id='1003'>
                            [e:loop={"select * from phome_ecms_news where classid=$GLOBALS[navclassid] order by id desc",10,24,0}] <a href="#%3C?=$bqr['id']?%3E"><?=$bqr['title']?>
                            </a> [/e:loop]
                        </div>
                        <div class='bottom' id='1004'></div>
                    </div>
                </div>
                <div class="grid765_r left">
                    <div class="core-network">
                        <div class="content">
                            <!--列表模板主页面开始-->
                            <a name="atop"></a>
                            <div class="title">
                                [!--class.name--]
                            </div>
                            <hr>
                            [e:loop={"select * from phome_ecms_news_data_1 where classid=$GLOBALS[navclassid] order by id desc",10,24,0}]
                            <div id="&lt;?=$bqr['id']?&gt;">
                                <?=$bqr['newstext']?>
                                </div><a style="padding-left: 90%;" href="#atop"><img src="/skin/default/images/totop.jpg"></a>
                            <div class="hr"></div>[/e:loop] <!--列表模板主页面结束-->
                        </div>
                    </div>
                </div>
            </div>
        </div>[!--temp.footer--]
    </body>
</html>