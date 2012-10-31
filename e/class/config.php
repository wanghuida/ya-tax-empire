<?php
if(!defined('InEmpireCMS'))
{
	exit();
}
define('EmpireCMSConfig',TRUE);

//数据库设置
$phome_use_db='mysql';	//数据库类型
$phome_use_dbver='5.0';	//数据库版本
$phome_db_server='localhost';	//数据库登陆地址
$phome_db_port='';	//端口，不填为按默认
$phome_db_username='root';	//数据库用户名
$phome_db_password='root';	//数据库密码
$phome_db_dbname='empirecms';	//数据库名
$phome_db_char='utf8';	//设置默认编码
$phome_db_dbchar='utf8';	//数据库默认编码
$dbtbpre='phome_';	//数据表前缀
$ecmslang='gb';	//语言包

//页面编码设置
$phome_ecms_charver='utf-8';	//安装帝国CMS的编码版本
$phome_headercharset=1;	//页面默认字符集,0=关闭 1=开启

//后台相关配置
$do_openonlinesetting=3;	//开启后台在线配置参数(0为关闭,1为开启防火墙配置,2为开启安全配置,3为全开启)

//其它配置
$do_openbqquery=1;	//开启标签支持sql语句查询(0为不支持,1为开启)
$do_openreadfile=0;	//开启标签支持读取本地文件,一般不要开启(0为不支持,1为开启)
$do_txtpath=ECMS_PATH.'d/txt/';	//文本型数据存放目录
$saveurlimgclearurl=0;	//远程保存图片自动去除图片的链接(0为保留,1为去除)
$ecmsdeftempid=0;	//默认模板组ID


//-------EmpireCMS.Seting.area-------

//后台安全设置
$do_loginauth='';	//登录认证码,如果设置登录需要输入此认证码才能通过
$do_ecookiernd='iXWevEF69pXfGpb3TvtTwW74kcVqcd';	//后台登录COOKIE认证码(填写10~50个任意字符，最好多种字符组合)
$do_ckhloginfile=0;	//后台是否启用文件验证,0为验证,1为不验证
$do_ckhloginip=0;	//后台是否验证登录IP,0为不验证,1为验证
$do_theloginlog=0;	//是否记录登陆日志(0为记录,1为不记录)
$do_thedolog=0;		//是否记录操作日志(0为记录,1为不记录)

//COOKIE设置
$phome_cookiedomain='';		//cookie作用域
$phome_cookiepath='/';		//cookie作用路径
$phome_cookievarpre='rmapj';		//前台cookie变量前缀
$phome_cookieadminvarpre='spzhr';		//后台cookie变量前缀
$phome_cookieckrnd='pFm8QJXEK8cM8DtCepzwuUqdeyL5e3';	//COOKIE验证随机码(填写10~50个任意字符，最好多种字符组合)

//网站防火墙配置
$efw_open=0;	//开启防火墙(0为关闭,1为开启)
$efw_pass='';	//防火墙加密密钥(填写10~50个任意字符，最好多种字符组合)
$efw_adminloginurl='';	//允许后台登陆的域名,设置后必须通过这个域名才能访问后台
$efw_adminhour='';	//允许登陆后台的时间：0~23小时，多个时间点用半角逗号格开
$efw_adminweek='';	//允许登陆后台的星期：星期0~6，多个星期用半角逗号格开
$efw_adminckpassvar='';	//后台预登陆验证变量名
$efw_adminckpassval='';	//后台预登陆认证码
$efw_cleargettext='';	//屏蔽提交敏感字符，多个用半角逗号格开

//-------EmpireCMS.Seting.area-------


//文件类型
$tranpicturetype=',.jpg,.gif,.png,.bmp,.jpeg,';	//图片
$tranflashtype=',.swf,.flv,.dcr,';	//FLASH
$mediaplayertype=',.wmv,.asf,.wma,.mp3,.asx,.mid,.midi,';	//mediaplayer
$realplayertype=',.rm,.ra,.rmvb,.mp4,.mov,.avi,.wav,.ram,.mpg,.mpeg,';	//realplayer



//***************** 以下部分为缓存，不用设置 **************

//-------EmpireCMS.Public.Cache-------

//------------e_public
$public_r=array('sitename'=>'善道永安税务师事务有限公司',
'newsurl'=>'/',
'filetype'=>'|.gif|.jpg|.swf|.rar|.zip|.mp3|.wmv|.txt|.doc|',
'filesize'=>2048,
'relistnum'=>8,
'renewsnum'=>100,
'min_keyboard'=>2,
'max_keyboard'=>20,
'search_num'=>20,
'search_pagenum'=>16,
'newslink'=>0,
'checked'=>0,
'pltime'=>20,
'searchtime'=>30,
'loginnum'=>5,
'logintime'=>60,
'addnews_ok'=>0,
'register_ok'=>0,
'indextype'=>'.html',
'goodlencord'=>0,
'goodtype'=>'',
'searchtype'=>'.html',
'exittime'=>40,
'smalltextlen'=>160,
'defaultgroupid'=>1,
'fileurl'=>'/d/file/',
'install'=>0,
'phpmode'=>0,
'plsize'=>500,
'plincludesize'=>0,
'dorepnum'=>300,
'loadtempnum'=>50,
'bakdbpath'=>'bdata',
'bakdbzip'=>'zip',
'downpass'=>'JHCtmcF8Emb7mBbGVPD8',
'filechmod'=>1,
'loginkey_ok'=>0,
'tbname'=>'news',
'limittype'=>0,
'plkey_ok'=>1,
'redodown'=>1,
'downsofttemp'=>'[ <a href=\"#ecms\" onclick=\"window.open(\'[!--down.url--]\',\'\',\'width=300,height=300,resizable=yes\');\">[!--down.name--]</a> ]',
'onlinemovietemp'=>'[ <a href=\"#ecms\" onclick=\"window.open(\'[!--down.url--]\',\'\',\'width=300,height=300,resizable=yes\');\">[!--down.name--]</a> ]',
'havefp'=>0,
'fpnum'=>0,
'lctime'=>1222406370,
'candocode'=>1,
'opennotcj'=>0,
'listpagetemp'=>'页次：[!--thispage--]/[!--pagenum--]&nbsp;每页[!--lencord--]&nbsp;总数[!--num--]&nbsp;&nbsp;&nbsp;&nbsp;[!--pagelink--]&nbsp;&nbsp;&nbsp;&nbsp;转到:[!--options--]',
'reuserpagenum'=>50,
'revotejsnum'=>100,
'readjsnum'=>100,
'qaddtran'=>1,
'qaddtransize'=>50,
'ebakthisdb'=>1,
'delnewsnum'=>300,
'markpos'=>5,
'markimg'=>'../data/mark/maskdef.gif',
'marktext'=>'',
'markfontsize'=>'5',
'markfontcolor'=>'',
'markfont'=>'../data/mark/cour.ttf',
'adminloginkey'=>0,
'php_outtime'=>0,
'listpagefun'=>'sys_ShowListPage',
'textpagefun'=>'sys_ShowTextPage',
'adfile'=>'thea',
'notsaveurl'=>'',
'rssnum'=>50,
'rsssub'=>300,
'savetxtf'=>',article.newstext,',
'dorepdlevelnum'=>300,
'listpagelistfun'=>'sys_ShowListMorePage',
'listpagelistnum'=>12,
'infolinknum'=>100,
'searchgroupid'=>0,
'opencopytext'=>0,
'reuserjsnum'=>100,
'reuserlistnum'=>8,
'opentitleurl'=>1,
'searchtempvar'=>1,
'showinfolevel'=>0,
'navfh'=>'>',
'spicwidth'=>105,
'spicheight'=>118,
'spickill'=>1,
'jpgquality'=>80,
'markpct'=>65,
'redoview'=>24,
'reggetfen'=>0,
'regbooktime'=>30,
'revotetime'=>30,
'fpath'=>0,
'filepath'=>'Y-m-d',
'nreclass'=>',',
'nreinfo'=>',',
'nrejs'=>',',
'nottobq'=>',',
'defspacestyleid'=>1,
'canposturl'=>'',
'openspace'=>0,
'defadminstyle'=>1,
'realltime'=>0,
'closeip'=>'',
'openip'=>'',
'hopenip'=>'',
'plface'=>'||[~e.jy~]##1.gif||[~e.kq~]##2.gif||[~e.se~]##3.gif||[~e.sq~]##4.gif||[~e.lh~]##5.gif||[~e.ka~]##6.gif||[~e.hh~]##7.gif||[~e.ys~]##8.gif||[~e.ng~]##9.gif||[~e.ot~]##10.gif||',
'plfacenum'=>10,
'textpagelistnum'=>6,
'memberlistlevel'=>0,
'ebakcanlistdb'=>0,
'keytog'=>2,
'keytime'=>30,
'keyrnd'=>'9KeU32EynhbYRgpHRGYeAeLvxEMWXM',
'checkdorepstr'=>',0,0,0,0,',
'regkey_ok'=>0,
'opengetdown'=>0,
'gbkey_ok'=>0,
'fbkey_ok'=>0,
'newaddinfotime'=>0,
'classnavs'=>'<a href=\"/a/guanyuwomen/\">关于我们</a>&nbsp;|&nbsp;<a href=\"/a/yewujieshao/\">业务介绍</a>&nbsp;|&nbsp;<a href=\"/a/peixunzhuanti/\">税收大课堂</a>',
'plgroupid'=>0,
'adminstyle'=>',1,2,',
'docnewsnum'=>300,
'openschall'=>0,
'schallfield'=>1,
'schallminlen'=>3,
'schallmaxlen'=>20,
'schallnum'=>20,
'schallpagenum'=>16,
'dtcanbq'=>1,
'dtcachetime'=>43200,
'defpltempid'=>1,
'buycarnum'=>0,
'shopddgroupid'=>0,
'repkeynum'=>0,
'regacttype'=>0,
'opengetpass'=>0,
'hlistinfonum'=>30,
'qlistinfonum'=>25,
'dtncanbq'=>1,
'dtncachetime'=>43200,
'readdinfotime'=>0,
'qeditinfotime'=>0,
'onclicktype'=>0,
'onclickfilesize'=>10,
'onclickfiletime'=>60,
'schalltime'=>0,
'defprinttempid'=>1,
'opentags'=>1,
'tagstempid'=>1,
'usetags'=>',1,2,3,4,5,6,7,8,',
'chtags'=>'',
'tagslistnum'=>25,
'closeqdt'=>0,
'settop'=>0,
'qlistinfomod'=>0,
'pl_num'=>20,
'gb_num'=>20,
'member_num'=>20,
'space_num'=>25,
'infolday'=>0,
'filelday'=>0,
'dorepkey'=>0,
'dorepword'=>0,
'onclickrnd'=>'',
'keybgcolor'=>'',
'keyfontcolor'=>'',
'keydistcolor'=>'',
'indexpageid'=>0,
'closeqdtmsg'=>'',
'openfileserver'=>0,
'fs_purl'=>'',
'closemods'=>'',
'deftempid'=>0);
//------------e_public

//-------EmpireCMS.Public.Cache-------

$emod_pubr=Array('linkfields'=>'|');

$etable_r=array();
$etable_r['news']=Array('deftb'=>'1',
'yhid'=>0,
'mid'=>1);
$etable_r['download']=Array('deftb'=>'1',
'yhid'=>0,
'mid'=>2);
$etable_r['photo']=Array('deftb'=>'1',
'yhid'=>0,
'mid'=>3);
$etable_r['flash']=Array('deftb'=>'1',
'yhid'=>0,
'mid'=>4);
$etable_r['movie']=Array('deftb'=>'1',
'yhid'=>0,
'mid'=>5);
$etable_r['shop']=Array('deftb'=>'1',
'yhid'=>0,
'mid'=>6);
$etable_r['article']=Array('deftb'=>'1',
'yhid'=>0,
'mid'=>7);
$etable_r['info']=Array('deftb'=>'1',
'yhid'=>0,
'mid'=>8);


$emod_r=array();
$emod_r[1]=Array('mid'=>1,
'mname'=>'新闻系统模型',
'qmname'=>'新闻',
'defaulttb'=>1,
'datatbs'=>',1,',
'deftb'=>'1',
'enter'=>',title,ftitle,special.field,newstime,titlepic,smalltext,writer,befrom,newstext,',
'qenter'=>',title,ftitle,special.field,titlepic,smalltext,writer,befrom,newstext,',
'listtempf'=>',title,ftitle,newstime,titlepic,smalltext,diggtop,',
'tempf'=>',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,diggtop,',
'mustqenterf'=>',title,newstext,',
'listandf'=>'',
'setandf'=>0,
'searchvar'=>',title,smalltext,',
'cj'=>',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,',
'canaddf'=>',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,',
'caneditf'=>',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,',
'tbdataf'=>',writer,befrom,newstext,',
'tobrf'=>',title,special.field,titlepic,newstime,ftitle,smalltext,writer,befrom,newstext,diggtop,',
'dohtmlf'=>',title,special.field,titlepic,newstime,ftitle,smalltext,writer,befrom,newstext,diggtop,',
'checkboxf'=>',',
'savetxtf'=>'',
'editorf'=>',newstext,',
'ubbeditorf'=>',',
'pagef'=>'newstext',
'smalltextf'=>',smalltext,',
'filef'=>',',
'imgf'=>',titlepic,',
'flashf'=>',',
'linkfields'=>'|',
'onlyf'=>',',
'adddofunf'=>'||',
'editdofunf'=>'||',
'qadddofunf'=>'||',
'qeditdofunf'=>'||',
'definfovoteid'=>0,
'orderf'=>'',
'sonclass'=>'|67|68|69|72|73|74|75|',
'tid'=>1,
'tbname'=>'news');
$emod_r[2]=Array('mid'=>2,
'mname'=>'下载系统模型',
'qmname'=>'软件',
'defaulttb'=>0,
'datatbs'=>',1,',
'deftb'=>'1',
'enter'=>',title,special.field,newstime,titlepic,softwriter,homepage,demo,softfj,language,softtype,softsq,star,filetype,filesize,downpath,softsay,',
'qenter'=>',title,special.field,titlepic,softwriter,homepage,demo,softfj,language,softtype,softsq,filetype,filesize,downpath,softsay,',
'listtempf'=>',title,newstime,titlepic,softfj,language,softtype,softsq,star,filetype,filesize,softsay,',
'tempf'=>',title,newstime,titlepic,softwriter,homepage,demo,softfj,language,softtype,softsq,star,filetype,filesize,downpath,softsay,',
'mustqenterf'=>',title,downpath,softsay,',
'listandf'=>'',
'setandf'=>0,
'searchvar'=>',title,softsay,',
'cj'=>',title,newstime,titlepic,softwriter,homepage,demo,softfj,language,softtype,softsq,star,filetype,filesize,downpath,softsay,',
'canaddf'=>',title,newstime,titlepic,softwriter,homepage,demo,softfj,language,softtype,softsq,star,filetype,filesize,downpath,softsay,',
'caneditf'=>',title,newstime,titlepic,softwriter,homepage,demo,softfj,language,softtype,softsq,star,filetype,filesize,downpath,softsay,',
'tbdataf'=>',softwriter,homepage,demo,downpath,',
'tobrf'=>',title,special.field,titlepic,newstime,softwriter,homepage,demo,softfj,language,softtype,softsq,star,filetype,filesize,downpath,softsay,',
'dohtmlf'=>',title,special.field,titlepic,newstime,softwriter,homepage,demo,softfj,language,softtype,softsq,star,filetype,filesize,downpath,softsay,',
'checkboxf'=>',',
'savetxtf'=>'',
'editorf'=>',',
'ubbeditorf'=>',',
'pagef'=>'',
'smalltextf'=>',softsay,',
'filef'=>',',
'imgf'=>',titlepic,',
'flashf'=>',',
'linkfields'=>'|',
'onlyf'=>',',
'adddofunf'=>'||',
'editdofunf'=>'||',
'qadddofunf'=>'||',
'qeditdofunf'=>'||',
'definfovoteid'=>0,
'orderf'=>'',
'sonclass'=>'|38|39|40|41|',
'tid'=>2,
'tbname'=>'download');
$emod_r[3]=Array('mid'=>3,
'mname'=>'图片系统模型',
'qmname'=>'图片',
'defaulttb'=>0,
'datatbs'=>',1,',
'deftb'=>'1',
'enter'=>',title,special.field,newstime,filesize,picsize,picfbl,picfrom,titlepic,picurl,morepic,num,width,height,picsay,',
'qenter'=>',title,filesize,picsize,picfbl,picfrom,titlepic,picurl,picsay,',
'listtempf'=>',title,newstime,titlepic,picurl,picsay,',
'tempf'=>',title,newstime,filesize,picsize,picfbl,picfrom,titlepic,picurl,morepic,width,height,picsay,',
'mustqenterf'=>',title,picsay,',
'listandf'=>'',
'setandf'=>0,
'searchvar'=>',title,picsay,',
'cj'=>',title,newstime,filesize,picsize,picfbl,picfrom,titlepic,picurl,morepic,num,width,height,picsay,',
'canaddf'=>',title,newstime,filesize,picsize,picfbl,picfrom,titlepic,picurl,morepic,num,width,height,picsay,',
'caneditf'=>',title,newstime,filesize,picsize,picfbl,picfrom,titlepic,picurl,morepic,num,width,height,picsay,',
'tbdataf'=>',filesize,picsize,picfbl,picfrom,morepic,num,width,height,',
'tobrf'=>',title,special.field,titlepic,newstime,filesize,picsize,picfbl,picfrom,picurl,morepic,num,width,height,picsay,',
'dohtmlf'=>',title,special.field,titlepic,newstime,filesize,picsize,picfbl,picfrom,picurl,morepic,num,width,height,picsay,',
'checkboxf'=>',',
'savetxtf'=>'',
'editorf'=>',',
'ubbeditorf'=>',',
'pagef'=>'',
'smalltextf'=>',picsay,',
'filef'=>',',
'imgf'=>',titlepic,picurl,',
'flashf'=>',',
'linkfields'=>'|',
'onlyf'=>',',
'adddofunf'=>'||',
'editdofunf'=>'||',
'qadddofunf'=>'||',
'qeditdofunf'=>'||',
'definfovoteid'=>0,
'orderf'=>'',
'sonclass'=>'|52|53|54|',
'tid'=>3,
'tbname'=>'photo');
$emod_r[4]=Array('mid'=>4,
'mname'=>'FLASH系统模型',
'qmname'=>'FLASH',
'defaulttb'=>0,
'datatbs'=>',1,',
'deftb'=>'1',
'enter'=>',title,special.field,newstime,titlepic,flashwriter,email,star,filesize,flashurl,width,height,flashsay,',
'qenter'=>',title,special.field,titlepic,flashwriter,email,filesize,flashurl,width,height,flashsay,',
'listtempf'=>',title,newstime,titlepic,flashwriter,star,filesize,flashurl,flashsay,',
'tempf'=>',title,newstime,titlepic,flashwriter,email,star,filesize,flashurl,width,height,flashsay,',
'mustqenterf'=>',title,flashurl,flashsay,',
'listandf'=>'',
'setandf'=>0,
'searchvar'=>',title,flashwriter,flashsay,',
'cj'=>',title,newstime,titlepic,flashwriter,email,star,filesize,flashurl,width,height,flashsay,',
'canaddf'=>',title,newstime,titlepic,flashwriter,email,star,filesize,flashurl,width,height,flashsay,',
'caneditf'=>',title,newstime,titlepic,flashwriter,email,star,filesize,flashurl,width,height,flashsay,',
'tbdataf'=>',',
'tobrf'=>',title,special.field,titlepic,newstime,flashwriter,email,star,filesize,flashurl,width,height,flashsay,',
'dohtmlf'=>',title,special.field,titlepic,newstime,flashwriter,email,star,filesize,flashurl,width,height,flashsay,',
'checkboxf'=>',',
'savetxtf'=>'',
'editorf'=>',',
'ubbeditorf'=>',',
'pagef'=>'',
'smalltextf'=>',flashsay,',
'filef'=>',',
'imgf'=>',titlepic,',
'flashf'=>',flashurl,',
'linkfields'=>'|',
'onlyf'=>',',
'adddofunf'=>'||',
'editdofunf'=>'||',
'qadddofunf'=>'||',
'qeditdofunf'=>'||',
'definfovoteid'=>0,
'orderf'=>'',
'sonclass'=>'|50|51|',
'tid'=>4,
'tbname'=>'flash');
$emod_r[5]=Array('mid'=>5,
'mname'=>'电影系统模型',
'qmname'=>'电影',
'defaulttb'=>0,
'datatbs'=>',1,',
'deftb'=>'1',
'enter'=>',title,special.field,newstime,titlepic,movietype,company,movietime,player,playadmin,filetype,filesize,star,playdk,playtime,moviefen,downpath,playerid,onlinepath,moviesay,',
'qenter'=>',',
'listtempf'=>',title,newstime,titlepic,movietype,company,movietime,player,playadmin,filetype,filesize,star,moviefen,moviesay,',
'tempf'=>',title,newstime,titlepic,movietype,company,movietime,player,playadmin,filetype,filesize,star,playdk,playtime,moviefen,downpath,onlinepath,moviesay,',
'mustqenterf'=>',title,moviesay,',
'listandf'=>'',
'setandf'=>0,
'searchvar'=>',title,movietype,company,player,playadmin,moviesay,',
'cj'=>',title,newstime,titlepic,movietype,company,movietime,player,playadmin,filetype,filesize,star,playdk,playtime,moviefen,downpath,playerid,onlinepath,moviesay,',
'canaddf'=>',title,newstime,titlepic,movietype,company,movietime,player,playadmin,filetype,filesize,star,playdk,playtime,moviefen,downpath,playerid,onlinepath,moviesay,',
'caneditf'=>',title,newstime,titlepic,movietype,company,movietime,player,playadmin,filetype,filesize,star,playdk,playtime,moviefen,downpath,playerid,onlinepath,moviesay,',
'tbdataf'=>',playdk,playtime,downpath,onlinepath,playerid,',
'tobrf'=>',title,special.field,titlepic,newstime,movietype,company,movietime,player,playadmin,filetype,filesize,star,playdk,playtime,moviefen,downpath,onlinepath,moviesay,playerid,',
'dohtmlf'=>',title,special.field,titlepic,newstime,movietype,company,movietime,player,playadmin,filetype,filesize,star,playdk,playtime,moviefen,downpath,onlinepath,moviesay,playerid,',
'checkboxf'=>',',
'savetxtf'=>'',
'editorf'=>',',
'ubbeditorf'=>',',
'pagef'=>'',
'smalltextf'=>',moviesay,',
'filef'=>',',
'imgf'=>',titlepic,',
'flashf'=>',',
'linkfields'=>'|',
'onlyf'=>',',
'adddofunf'=>'||',
'editdofunf'=>'||',
'qadddofunf'=>'||',
'qeditdofunf'=>'||',
'definfovoteid'=>0,
'orderf'=>'',
'sonclass'=>'|42|43|44|45|',
'tid'=>5,
'tbname'=>'movie');
$emod_r[6]=Array('mid'=>6,
'mname'=>'商城系统模型',
'qmname'=>'商品',
'defaulttb'=>0,
'datatbs'=>',1,',
'deftb'=>'1',
'enter'=>',title,special.field,newstime,productno,pbrand,intro,unit,weight,tprice,price,buyfen,pmaxnum,titlepic,productpic,newstext,',
'qenter'=>',',
'listtempf'=>',title,newstime,productno,pbrand,intro,unit,weight,tprice,price,buyfen,pmaxnum,titlepic,productpic,newstext,',
'tempf'=>',title,newstime,productno,pbrand,intro,unit,weight,tprice,price,buyfen,pmaxnum,titlepic,productpic,newstext,',
'mustqenterf'=>',title,newstext,',
'listandf'=>',pbrand,',
'setandf'=>0,
'searchvar'=>',title,productno,pbrand,intro,price,newstext,',
'cj'=>',title,newstime,productno,pbrand,intro,unit,weight,tprice,price,buyfen,pmaxnum,titlepic,productpic,newstext,',
'canaddf'=>',title,newstime,productno,pbrand,intro,unit,weight,tprice,price,buyfen,pmaxnum,titlepic,productpic,newstext,',
'caneditf'=>',title,newstime,productno,pbrand,intro,unit,weight,tprice,price,buyfen,pmaxnum,titlepic,productpic,newstext,',
'tbdataf'=>',',
'tobrf'=>',title,special.field,titlepic,newstime,productno,pbrand,intro,unit,weight,tprice,price,buyfen,pmaxnum,productpic,newstext,',
'dohtmlf'=>',title,special.field,titlepic,newstime,productno,pbrand,intro,unit,weight,tprice,price,buyfen,pmaxnum,productpic,newstext,',
'checkboxf'=>',',
'savetxtf'=>'',
'editorf'=>',newstext,',
'ubbeditorf'=>',',
'pagef'=>'newstext',
'smalltextf'=>',',
'filef'=>',',
'imgf'=>',titlepic,productpic,',
'flashf'=>',',
'linkfields'=>'|',
'onlyf'=>',',
'adddofunf'=>'||',
'editdofunf'=>'||',
'qadddofunf'=>'||',
'qeditdofunf'=>'||',
'definfovoteid'=>0,
'orderf'=>'',
'sonclass'=>'|46|47|48|49|',
'tid'=>6,
'tbname'=>'shop');
$emod_r[7]=Array('mid'=>7,
'mname'=>'文章系统模型',
'qmname'=>'文章',
'defaulttb'=>0,
'datatbs'=>',1,',
'deftb'=>'1',
'enter'=>',title,ftitle,special.field,newstime,titlepic,smalltext,writer,befrom,newstext,',
'qenter'=>',title,ftitle,special.field,titlepic,smalltext,writer,befrom,newstext,',
'listtempf'=>',title,ftitle,newstime,titlepic,smalltext,diggtop,',
'tempf'=>',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,diggtop,',
'mustqenterf'=>',title,newstext,',
'listandf'=>'',
'setandf'=>0,
'searchvar'=>',title,smalltext,',
'cj'=>',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,',
'canaddf'=>',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,',
'caneditf'=>',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,',
'tbdataf'=>',',
'tobrf'=>',title,special.field,titlepic,newstime,ftitle,smalltext,writer,befrom,newstext,diggtop,',
'dohtmlf'=>',title,special.field,titlepic,newstime,ftitle,smalltext,writer,befrom,newstext,diggtop,',
'checkboxf'=>',',
'savetxtf'=>'newstext',
'editorf'=>',newstext,',
'ubbeditorf'=>',',
'pagef'=>'newstext',
'smalltextf'=>',smalltext,',
'filef'=>',',
'imgf'=>',titlepic,',
'flashf'=>',',
'linkfields'=>'|',
'onlyf'=>',',
'adddofunf'=>'||',
'editdofunf'=>'||',
'qadddofunf'=>'||',
'qeditdofunf'=>'||',
'definfovoteid'=>0,
'orderf'=>'',
'sonclass'=>'|55|56|57|',
'tid'=>7,
'tbname'=>'article');
$emod_r[8]=Array('mid'=>8,
'mname'=>'分类信息系统模型',
'qmname'=>'分类信息',
'defaulttb'=>0,
'datatbs'=>',1,',
'deftb'=>'1',
'enter'=>',title,special.field,newstime,smalltext,titlepic,myarea,email,mycontact,address,',
'qenter'=>',title,smalltext,titlepic,myarea,email,mycontact,address,',
'listtempf'=>',title,newstime,smalltext,titlepic,myarea,',
'tempf'=>',title,newstime,smalltext,titlepic,myarea,email,mycontact,address,',
'mustqenterf'=>',title,smalltext,myarea,email,',
'listandf'=>',myarea,',
'setandf'=>0,
'searchvar'=>',title,smalltext,myarea,',
'cj'=>',title,newstime,smalltext,titlepic,myarea,email,mycontact,address,',
'canaddf'=>',title,newstime,smalltext,titlepic,myarea,email,mycontact,address,',
'caneditf'=>',title,newstime,smalltext,titlepic,myarea,email,mycontact,address,',
'tbdataf'=>',email,mycontact,address,',
'tobrf'=>',title,special.field,titlepic,newstime,smalltext,myarea,email,mycontact,address,',
'dohtmlf'=>',title,special.field,titlepic,newstime,smalltext,myarea,email,mycontact,address,',
'checkboxf'=>',',
'savetxtf'=>'',
'editorf'=>',',
'ubbeditorf'=>',',
'pagef'=>'',
'smalltextf'=>',smalltext,',
'filef'=>',',
'imgf'=>',titlepic,',
'flashf'=>',',
'linkfields'=>'|',
'onlyf'=>',',
'adddofunf'=>'||',
'editdofunf'=>'||',
'qadddofunf'=>'||',
'qeditdofunf'=>'||',
'definfovoteid'=>0,
'orderf'=>'',
'sonclass'=>'|11|12|13|14|15|16|18|19|20|21|23|24|25|26|28|29|30|31|',
'tid'=>8,
'tbname'=>'info');


//-------EmpireCMS.Public.Cache-------

?>