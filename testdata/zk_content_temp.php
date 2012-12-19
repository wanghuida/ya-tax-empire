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
        <div> 您的位置：[!--newsnav--]</div>
        <div class="grid215 left">            
            <div class='leftNav' id='1001'>
                <div class='top' id='1002'></div>
                <div class='content' id='1003'>
                    [showclasstemp]'selfinfo',13,0,0[/showclasstemp]
                </div>
                <script type="text/javascript">
                    document.getElementById([!--self.classid--]).className="on"
                </script> 
                <div class='bottom' id='1004'></div>
            </div>
        </div>
        <div class="grid765_r left">
            <div class="grid550_l left">
                    <script type="text/javascript">
                        var theClass = [!--self.classid--]
                        switch(theClass){
                            case 62:
                            var sHTML="<img src='[!--news.url--]skin/default/images/mybanner0.jpg'>"
                            break
                            case 64:
                            sHTML="<img src='[!--news.url--]skin/default/images/mybanner1.jpg'>"
                            break
                            case 82:
                            sHTML="<img src='[!--news.url--]skin/default/images/mybanner2.jpg'>"
                            break
                            case 72:
                            sHTML="<img src='[!--news.url--]skin/default/images/mybanner3.jpg'>"
                            break
                            case 73:
                            sHTML="<img src='[!--news.url--]skin/default/images/mybanner4.jpg'>"
                            break
                            case 74:
                            sHTML="<img src='[!--news.url--]skin/default/images/mybanner5.jpg'>"
                            break
                            case 75:
                            sHTML="<img src='[!--news.url--]skin/default/images/mybanner6.jpg'>"
                            break
                            default:
                            sHTML="<img src='[!--news.url--]skin/default/images/mybanner7.jpg'>"
                        }
                        
                        document.write(sHTML) 
                    </script>
                <div class="core-network">
                    <div class="content">
                    <div class="hr"></div>
                        <div align="center">
                            <strong>[!--title--]</strong>
                        </div>
                        <br>

                        <div>
                            [!--newstext--]
                            <p align="center" class="pageLink">
                                [!--page.url--]
                            </p>
                        </div>
                    </div>
                    <a style="padding-left: 90%;" href="#header">回顶部</a>
                </div>
            </div>
            <div class="grid215 right">
                 <div class="zixun">
                    <a href="[!--news.url--]e/tool/gbook/?bid=1" target=_blank>在线咨询</a>
                </div>
                <div class="hr"></div>
                <div class="white-paper">
                    <div class="body">
                        <div class="header">
                            <div class="icon"></div>
                            培训公告
                        </div>
                        <div class="content">
                            <ul>
                            [e:loop={71,5,0,0}]
                            <li><a href="<?=$bqsr['titleurl']?>" target="_blank"><?=$bqr['title']?></a> </li>
                            [/e:loop]
                            </ul>
                            <div style="padding-left:80%;height:20px">
                                <a href="[!--news.url--]/a/peixunzhuanti/peixungonggao/" class="expand">更多</a>
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
                            [e:loop={'news',5,18,0,'classid in ("72","73","74","67" ,"68","69")','newstime DESC'}]
                            <li><a href="<?=$bqsr['titleurl']?>" target="_blank"><?=$bqr['title']?></a></li>
                            [/e:loop]
                            </ul>
                            <div style="padding-left:80%">
                                <a href="[!--news.url--]/a/hangyedongcha/" class="expand">更多</a>
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
                <!--wcmPlaceholder("contact_us", "placeholderDefinitionDocName=PH_CN_MAIN_CONTENT")-->
            </div>
        </div>
    </div>
</div>
[!--temp.footer--]
</body>
</html>