<?php
if(!defined('InEmpireCMS'))
{
	exit();
}
?><script>
function AddFj(str)
{var r;
var a;
a=document.add.softfj.value;
r=a.split(str);
if(r.length!=1)
{return true;}
document.add.softfj.value+="/"+str;
}
function DelFj(str)
{
var a;
a=document.add.softfj.value;
document.add.softfj.value=a.replace("/"+str,"");
}
</script>
<table width=100% align=center cellpadding=3 cellspacing=1 class="tableborder">
  <tr> 
    <td width=16% height=25 bgcolor=ffffff>软件名称(*)</td>
    <td bgcolor=ffffff><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DBEAF5">
<tr> 
  <td height="25" bgcolor="#FFFFFF">
<?=$tts?"<select name='ttid'><option value='0'>标题分类</option>$tts</select>":""?>
	<input type=text name=title value="<?=htmlspecialchars(stripSlashes($r[title]))?>" size="60"> 
	<input type="button" name="button" value="图文" onclick="document.add.title.value=document.add.title.value+'(图文)';"> 
  </td>
</tr>
<tr> 
  <td height="25" bgcolor="#FFFFFF">属性: 
	<input name="titlefont[b]" type="checkbox" value="b"<?=$titlefontb?>>粗体
	<input name="titlefont[i]" type="checkbox" value="i"<?=$titlefonti?>>斜体
	<input name="titlefont[s]" type="checkbox" value="s"<?=$titlefonts?>>删除线
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name="titlecolor" type="text" value="<?=stripSlashes($r[titlecolor])?>" size="10"><a onclick="foreColor();"><img src="../data/images/color.gif" width="21" height="21" align="absbottom"></a>
  </td>
</tr>
</table></td>
  </tr>
  <tr>
    <td width='16%' height=25 bgcolor='ffffff'>特殊属性</td>
    <td bgcolor='ffffff'><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DBEAF5">
  <tr>
    <td height="25" bgcolor="#FFFFFF">信息属性: 
      <input name="checked" type="checkbox" value="1"<?=$r[checked]?' checked':''?>>
      审核 &nbsp;&nbsp; 推荐 
      <select name="isgood" id="isgood">
        <option value="0"<?=$r[isgood]==0?' selected':''?>>不推荐</option>
        <option value="1"<?=$r[isgood]==1?' selected':''?>>一级推荐</option>
        <option value="2"<?=$r[isgood]==2?' selected':''?>>二级推荐</option>
        <option value="3"<?=$r[isgood]==3?' selected':''?>>三级推荐</option>
        <option value="4"<?=$r[isgood]==4?' selected':''?>>四级推荐</option>
        <option value="5"<?=$r[isgood]==5?' selected':''?>>五级推荐</option>
        <option value="6"<?=$r[isgood]==6?' selected':''?>>六级推荐</option>
        <option value="7"<?=$r[isgood]==7?' selected':''?>>七级推荐</option>
        <option value="8"<?=$r[isgood]==8?' selected':''?>>八级推荐</option>
        <option value="9"<?=$r[isgood]==9?' selected':''?>>九级推荐</option>
      </select>
      &nbsp;&nbsp; 头条 
      <select name="firsttitle" id="firsttitle">
        <option value="0"<?=$r[firsttitle]==0?' selected':''?>>非头条</option>
        <option value="1"<?=$r[firsttitle]==1?' selected':''?>>一级头条</option>
        <option value="2"<?=$r[firsttitle]==2?' selected':''?>>二级头条</option>
        <option value="3"<?=$r[firsttitle]==3?' selected':''?>>三级头条</option>
        <option value="4"<?=$r[firsttitle]==4?' selected':''?>>四级头条</option>
        <option value="5"<?=$r[firsttitle]==5?' selected':''?>>五级头条</option>
        <option value="6"<?=$r[firsttitle]==6?' selected':''?>>六级头条</option>
        <option value="7"<?=$r[firsttitle]==7?' selected':''?>>七级头条</option>
        <option value="8"<?=$r[firsttitle]==8?' selected':''?>>八级头条</option>
        <option value="9"<?=$r[firsttitle]==9?' selected':''?>>九级头条</option>
      </select></td>
  </tr>
  <tr> 
    <td height="25" bgcolor="#FFFFFF">关键字&nbsp;&nbsp;&nbsp;: 
      <input name="keyboard" type="text" size="52" value="<?=stripSlashes($r[keyboard])?>">
      <font color="#666666">(多个请用&quot;,&quot;隔开)</font></td>
  </tr>
  <tr> 
    <td height="25" bgcolor="#FFFFFF">外部链接: 
      <input name="titleurl" type="text" value="<?=stripSlashes($r[titleurl])?>" size="52">
      <font color="#666666">(填写后信息连接地址将为此链接)</font></td>
  </tr>
</table>
</td>
  </tr>
  <tr> 
    <td width=16% height=25 bgcolor=ffffff>发布时间</td>
    <td bgcolor=ffffff><input name="newstime" type="text" value="<?=$r[newstime]?>"><input type=button name=button value="设为当前时间" onclick="document.add.newstime.value='<?=$todaytime?>'"></td>
  </tr>
  <tr> 
    <td width=16% height=25 bgcolor=ffffff>软件预览图</td>
    <td bgcolor=ffffff>
<input name="titlepic" type="text" id="titlepic" value="<?=$ecmsfirstpost==1?"":htmlspecialchars(stripSlashes($r[titlepic]))?>" size="45">
<a onclick="window.open('ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&filepass=<?=$filepass?>&doing=1&field=titlepic','','width=700,height=550,scrollbars=yes');" title="选择已上传的图片"><img src="../data/images/changeimg.gif" border="0" align="absbottom"></a> 
</td>
  </tr>
  <tr> 
    <td width=16% height=25 bgcolor=ffffff>软件作者</td>
    <td bgcolor=ffffff><input name="softwriter" type="text" size=60 id="softwriter" value="<?=$ecmsfirstpost==1?"":htmlspecialchars(stripSlashes($r[softwriter]))?>">
</td>
  </tr>
  <tr> 
    <td width=16% height=25 bgcolor=ffffff>厂商主页</td>
    <td bgcolor=ffffff><input name="homepage" type="text" size=60 id="homepage" value="<?=$ecmsfirstpost==1?"http://":htmlspecialchars(stripSlashes($r[homepage]))?>">
</td>
  </tr>
  <tr> 
    <td width=16% height=25 bgcolor=ffffff>系统演示</td>
    <td bgcolor=ffffff><input name="demo" type="text" size=60 id="demo" value="<?=$ecmsfirstpost==1?"http://":htmlspecialchars(stripSlashes($r[demo]))?>">
</td>
  </tr>
  <tr> 
    <td width=16% height=25 bgcolor=ffffff>运行环境</td>
    <td bgcolor=ffffff><input name="softfj" type="text" size=60 id="softfj" value="<?=$ecmsfirstpost==1?"":htmlspecialchars(stripSlashes($r[softfj]))?>">
</td>
  </tr>
  <tr> 
    <td height=25 bgcolor=ffffff>&nbsp;</td>
    <td bgcolor=ffffff><input type=checkbox name=check value='Win9X/Me' onclick="if(this.checked){AddFj(this.value);}else{DelFj(this.value);}">
      Win9X/Me&nbsp; <input type=checkbox name=check value='WinNT/2000/XP' onclick="if(this.checked){AddFj(this.value);}else{DelFj(this.value);}">
      WinNT/2000/XP&nbsp; <input type=checkbox name=check value='Unix' onclick="if(this.checked){AddFj(this.value);}else{DelFj(this.value);}">
      Unix&nbsp; <input type=checkbox name=check value='Linux' onclick="if(this.checked){AddFj(this.value);}else{DelFj(this.value);}">
      Linux&nbsp; <input type=checkbox name=check value='DOS' onclick="if(this.checked){AddFj(this.value);}else{DelFj(this.value);}">
      DOS&nbsp; <input type=checkbox name=check value='MAC OS' onclick="if(this.checked){AddFj(this.value);}else{DelFj(this.value);}">
      MAC OS&nbsp; <input type=checkbox name=check value='Other' onclick="if(this.checked){AddFj(this.value);}else{DelFj(this.value);}">
      Other</td>
  </tr>
  <tr> 
    <td width=16% height=25 bgcolor=ffffff>软件属性</td>
    <td bgcolor=ffffff>软件语言：<select name="language" id="language"><option value="简体中文"<?=$r[language]=="简体中文"?' selected':''?>>简体中文</option><option value="繁体中文"<?=$r[language]=="繁体中文"?' selected':''?>>繁体中文</option><option value="英文"<?=$r[language]=="英文"?' selected':''?>>英文</option><option value="多国语言"<?=$r[language]=="多国语言"?' selected':''?>>多国语言</option></select>，软件类型：<select name="softtype" id="softtype"><option value="国产软件"<?=$r[softtype]=="国产软件"?' selected':''?>>国产软件</option><option value="汉化软件"<?=$r[softtype]=="汉化软件"?' selected':''?>>汉化软件</option><option value="国外软件"<?=$r[softtype]=="国外软件"?' selected':''?>>国外软件</option></select>，授权形式：<select name="softsq" id="softsq"><option value="共享软件"<?=$r[softsq]=="共享软件"?' selected':''?>>共享软件</option><option value="免费软件"<?=$r[softsq]=="免费软件"?' selected':''?>>免费软件</option><option value="自由软件"<?=$r[softsq]=="自由软件"?' selected':''?>>自由软件</option><option value="试用软件"<?=$r[softsq]=="试用软件"?' selected':''?>>试用软件</option><option value="演示软件"<?=$r[softsq]=="演示软件"?' selected':''?>>演示软件</option><option value="商业软件"<?=$r[softsq]=="商业软件"?' selected':''?>>商业软件</option></select>，软件评价：<select name="star" id="star"><option value="1"<?=$r[star]=="1"?' selected':''?>>1星</option><option value="2"<?=$r[star]=="2"||$ecmsfirstpost==1?' selected':''?>>2星</option><option value="3"<?=$r[star]=="3"?' selected':''?>>3星</option><option value="4"<?=$r[star]=="4"?' selected':''?>>4星</option><option value="5"<?=$r[star]=="5"?' selected':''?>>5星</option></select></td>
  </tr>
  <tr> 
    <td width=16% height=25 bgcolor=ffffff>文件</td>
    <td bgcolor=ffffff>文件类型：<input name="filetype" type="text" id="filetype" value="<?=$ecmsfirstpost==1?"":htmlspecialchars(stripSlashes($r[filetype]))?>">
<select name="select2" onchange="document.add.filetype.value=this.value">
        <option value="">类型</option>
        <option value=".zip">.zip</option>
        <option value=".rar">.rar</option>
        <option value=".exe">.exe</option>
      </select>，文件大小：<input name="filesize" type="text" id="filesize" value="<?=$ecmsfirstpost==1?"":htmlspecialchars(stripSlashes($r[filesize]))?>">
<select name="select" onchange="document.add.filesize.value+=this.value">
        <option value="">单位</option>
        <option value=" MB">MB</option>
        <option value=" KB">KB</option>
        <option value=" GB">GB</option>
        <option value=" BYTES">BYTES</option>
      </select></td>
  </tr>
  <tr> 
    <td width=16% height=25 bgcolor=ffffff>下载地址(*)</td>
    <td bgcolor=ffffff><script>
function doadd()
{var i;
var str="";
var oldi=0;
var j=0;
oldi=parseInt(document.add.editnum.value);
for(i=1;i<=document.add.downnum.value;i++)
{
j=i+oldi;
str=str+"<tr><td width=7%> <div align=center>"+j+"</div></td><td width=19%><div align=left><input name=downname[] type=text id=downname[] value=下载地址"+j+" size=17></div></td><td width=40%><input name=downpath[] type=text size=36 id=downpath"+j+" ondblclick=SpOpenChFile(0,'downpath"+j+"')><select name=thedownqz[]><option value=''>--地址前缀--</option><?=$newdownqz?></select></td><td width=21%><div align=center><select name=downuser[] id=select><option value=0>游客</option><?=$ygroup?></select></div></td><td width=13%><div align=center><input name=fen[] type=text id=fen[] value=0 size=6></div></td></tr>";
}
document.getElementById("adddown").innerHTML="<table width='100%' border=0 cellspacing=1 cellpadding=3>"+str+"</table>";
}
</script>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25">下载地址前缀&nbsp;:
      <input name="downurl_qz" type="text" size="32">
      <select name="changeurl_qz" onchange="document.add.downurl_qz.value=document.add.changeurl_qz.value">
        <option value="" selected>选择前缀</option>
        <?=$downurlqz?>
      </select>
	  </td>
  </tr>
  <tr>
    <td height="25">选择/上传附件:
      <input name="changedown_url" id="changedown_url" type="text" size="32">
      <input type="button" name="Submit" value="选择" onclick="window.open('ecmseditor/FileMain.php?type=0&classid=<?=$classid?>&filepass=<?=$filepass?>&doing=1&field=changedown_url','','width=700,height=550,scrollbars=yes');">&nbsp;
	  <input type="button" name="Submit" value="复制" onclick="document.getElementById('changedown_url').focus();document.getElementById('changedown_url').select();clipboardData.setData('text',document.getElementById('changedown_url').value);"></td>
  </tr>
  <tr> 
    <td><table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#DBEAF5">
        <tr> 
          <td width="7%"> <div align="center">编号</div></td>
          <td width="19%"><div align="left">下载名称</div></td>
          <td width="40%">下载地址 <font color="#666666">(双击选择)</font></td>
          <td width="21%"> <div align="center">权限</div></td>
          <td width="13%"> <div align="center">点数</div></td>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td>
    <?php
    if($ecmsfirstpost==1)
    {
    ?>
	<table width='100%' border=0 cellspacing=1 cellpadding=3>
	<?php
	$editnum=3;
	for($pathi=1;$pathi<=$editnum;$pathi++)
	{
	?>
           <tr> 
              <td width='7%'> <div align=center><?=$pathi?></div></td>
              <td width='19%'> <div align=left> 
                  <input name=downname[] type=text value='下载地址<?=$pathi?>' size=17>
                    </div></td>
              <td width='40%'>
	      <input name=downpath[] type=text size=36 id='downpath<?=$pathi?>' ondblclick="SpOpenChFile(0,'downpath<?=$pathi?>');">
	      <select name=thedownqz[]><option value=''>--地址前缀--</option><?=$newdownqz?></select> 
                  </td>
                  <td width='21%'><div align=center> 
                      <select name=downuser[]>
                        <option value=0>游客</option>
                        <?=$ygroup?>
                      </select>
                    </div></td>
                  <td width='13%'> <div align=center> 
                      <input name=fen[] type=text value=0 size=6>
                    </div></td>
            </tr>
	<?php
	}
	?>
	</table>
    <?php
    }
    else
    {
	$editnum=0;
	$downloadpath="";
	if($r[downpath])
	{
		$r[downpath]=stripSlashes($r[downpath]);
		//下载地址
		$j=0;
		$d_record=explode("\r\n",$r[downpath]);
		for($i=0;$i<count($d_record);$i++)
		{
			$j=$i+1;
			$d_field=explode("::::::",$d_record[$i]);
			//权限
			$tgroup=str_replace(" value=".$d_field[2].">"," value=".$d_field[2]." selected>",$ygroup);
			//地址前缀
			$tnewdownqz=str_replace(" value='".$d_field[4]."'>"," value='".$d_field[4]."' selected>",$newdownqz);
			$downloadpath.="<tr><td width='7%'><div align=center>".$j."</div></td><td width='19%'><div align=left><input name=downname[] type=text id=downname[] value='".$d_field[0]."' size=17></div></td><td width='40%'><input name=downpath[] type=text id=downpath".$j." value='".$d_field[1]."' size=36 ondblclick=\"SpOpenChFile(0,'downpath".$j."');\"><select name=thedownqz[]><option value=''>--地址前缀--</option>".$tnewdownqz."</select><input type=hidden name=pathid[] value=".$j."><input type=checkbox name=delpathid[] value=".$j.">删</td><td width='21%'><div align=center><select name=downuser[] id=select><option value=0>游客</option>".$tgroup."</select></div></td><td width='13%'><div align=center><input name=fen[] type=text id=fen[] value='".$d_field[3]."' size=6></div></td></tr>";
		}
		$editnum=$j;
		$downloadpath="<table width='100%' border=0 cellspacing=1 cellpadding=3>".$downloadpath."</table>";
	}
	echo $downloadpath;
    }
    ?>
    </td>
  </tr>
  <tr> 
    <td height="25">下载地址扩展数量: <input name="editnum" type="hidden" id="editnum" value="<?=$editnum?>">
      <input name="downnum" type="text" id="downnum" value="1" size="6"> <input type="button" name="Submit5" value="输出地址" onclick="javascript:doadd();"></td>
  </tr>
  <tr> 
    <td id=adddown></td>
  </tr>
</table>
</td>
  </tr>
  <tr> 
    <td width=16% height=25 bgcolor=ffffff>软件简介(*)</td>
    <td bgcolor=ffffff><textarea name="softsay" cols="80" rows="10" id="softsay"><?=$ecmsfirstpost==1?"":htmlspecialchars(stripSlashes($r[softsay]))?></textarea>
</td>
  </tr>
</table>