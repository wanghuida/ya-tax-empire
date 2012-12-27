<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
</head>
<body>
<script type="text/javascript" src="[!--news.url--]skin/default/js/jquery-1.8.2.js"></script>
[!--temp.header--]
<div class="container body">
	<div> 您的位置：[!--newsnav--]</div>
    <div class="content_ll">
        <?php
        $id=$navinfor[id];
        $pathid=0;
        $classid=$GLOBALS[navclassid] ;
        $mid=$class_r[$classid][modid];
        $tbname=$class_r[$classid][tbname];
        $query="select * from {$dbtbpre}ecms_".$tbname." where id='$id' and classid='$classid'";
        $r=$empire->fetch1($query); 
        if($emod_r[$mid]['tbdataf']&&$emod_r[$mid]['tbdataf']<>',')
        {
            $selectdataf=substr($emod_r[$mid]['tbdataf'],1,-1);
            $finfor=$empire->fetch1("select ".$selectdataf." from {$dbtbpre}ecms_".$tbname."_data_".$r[stb]." where id='$r[id]'");
            $r=array_merge($r,$finfor);
        }
        $path_r=explode("\r\n",$r[onlinepath]);
        $showdown_r=explode("::::::",$path_r[$pathid]);
        ?>
    	<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="610" height="494">
    	  <param name="movie" value='<?=$showdown_r[1]?>'>
    	  <param name="quality" value="high">
    	  <embed src="<?=$showdown_r[1]?>" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="610" height="494"></embed>
        </object>
        <div>
			<div>[影片名称]:[!--title--][领衔主演][!--player--][影片长度][!--playtime--][上传时间][!--movietime--]
			[影片介绍]:[!--moviesay--]</div>
			<div>[!--temp.pl--]</div>
		</div>
    </div>
    <div class="content_rr">
        <a href="[!--news.url--]e/tool/gbook/?bid=1" target=_blank>
            <img src="[!--news.url--]skin/default/images/zixun.jpg" alt="在线咨询" />
        </a>
        <div class="hr"></div>
        <div class="white-paper">
            <div class="body">
                <div class="header">
                    <div class="icon"></div>
                    最后更新
                </div>
                <div class="content">
                    <ul><script src='[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js'></script></ul>
                    <div style="padding-left:80%;">
                        <a href="[!--news.url--]a/ketang" target="_blank" class="expand">更多</a>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="related-news">
            <div class="body">
                <div class="header">
                    <div class="icon"></div>
                    影视推荐
                </div>
                <div class="content">
                    [phomenewspic]'selfinfo',2,4,128,90,1,20,2[/phomenewspic]
                    <div style="padding-left:80%;height:20px">
                        <a href="[!--news.url--]a/hangyedongcha/" target="_blank" class="expand">更多</a>
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
                        <a href="[!--news.url--]a/peixunzhuanti/" target="_blank">培训业务</a>
                    </span> 
                    <span class="highlights3">
                        <a href="[!--news.url--]a/yewujieshao/#117" target="_blank">税务筹划</a>
                    </span>
                    <span class="highlights3">
                        <a href="[!--news.url--]a/yewujieshao/#122" target="_blank">税务代理</a>
                    </span>
                    <span class="highlights3">
                        <a href="[!--news.url--]a/peixunzhuanti/qiyechongzu" target="_blank">企业重组</a>
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>
[!--temp.footer--]
</body>
</html>