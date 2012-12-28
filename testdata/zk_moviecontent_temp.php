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
    	<!-- <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="610" height="494">
    	  <param name="movie" value='<?=$showdown_r[1]?>'>
    	  <param name="quality" value="high">
    	  <embed src="<?=$showdown_r[1]?>" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="610" height="494"></embed>
        </object> -->
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="610" height="494">
        <param name=movie value="<?=$showdown_r[1]?>" ref>
        <param name=quality value=High>
        <param name="_cx" value="12383">
        <param name="_cy" value="1588">
        <param name="FlashVars" value>
        <param name="Src" ref value="<?=$showdown_r[1]?>">
        <param name="WMode" value="Window">
        <param name="Play" value="-1">
        <param name="Loop" value="-1">
        <param name="SAlign" value>
        <param name="Menu" value="-1">
        <param name="Base" value>
        <param name="AllowScriptAccess" value="always">
        <param name="Scale" value="ShowAll">
        <param name="DeviceFont" value="0">
        <param name="EmbedMovie" value="0">
        <param name="BGColor" value>
        <param name="SWRemote" value>
        <param name="MovieData" value>
        <embed src="<?=$showdown_r[1]?>" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="610" height="494">
        </embed></object>
        <div>
			<div>[视频名称]：&nbsp;&nbsp;[!--title--]</div>
			<div>[视频介绍]：&nbsp;&nbsp;[!--moviesay--]</div>
			<div>[!--temp.pl--]</div>
		</div>
    </div>
    <div class="content_rr">
        <div class="white-paper">
            <div class="body">
                <div class="header">
                    <div class="icon"></div>
                    最后更新
                </div>
                <div class="content">
                    <ul><script src='[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js'></script></ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="related-news">
            <div class="body">
                <div class="header">
                    <div class="icon"></div>
                    视频推荐
                </div>
                <div class="content">
                    [phomenewspic]'selfinfo',2,4,128,90,1,20,2[/phomenewspic]
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>
[!--temp.footer--]
</body>
</html>