<script>
  function CheckPl(obj)
  {
  if(obj.saytext.value=="")
  {
  alert("您没什么话要说吗？");
  obj.saytext.focus();
  return false;
  }
  return true;
  }
</script>
<form action="[!--news.url--]e/enews/index.php" method="post" name="saypl" id="saypl" onsubmit="return CheckPl(document.saypl)">
<div id="pinglunshu">
	<strong>发表评论</strong>
	<a href="[!--news.url--]e/pl/?classid=[!--classid--]&amp;id=[!--id--]" target=_blank>共有<span><script type="text/javascript" src="[!--news.url--]e/public/ViewClick/?classid=[!--classid--]&id=[!--id--]&down=2"></script></span>条评论</a>
</div>
用户名:
<input name="username" type="text" class="inputText" id="username" value="" size="16" />
密码:
<input name="password" type="password" class="inputText" id="password" value="" size="16" />
验证码:
<input name="key" type="text" class="inputText" size="10" />
<img src="[!--news.url--]e/ShowKey/?v=pl" align="absmiddle" /><br>
<input name="nomember" type="checkbox" id="nomember" value="1" checked="checked" />
匿名发表<br>
<textarea id="pinglun" name="saytext" rows="6" id="saytext"></textarea><br>
<input name="imageField" type="image" src="[!--news.url--]e/data/images/postpl.gif"/>
<input name="id" type="hidden" id="id" value="[!--id--]" />
<input name="classid" type="hidden" id="classid" value="[!--classid--]" />
<input name="enews" type="hidden" id="enews" value="AddPl" />
<input name="repid" type="hidden" id="repid" value="0" />
<input type="hidden" name="ecmsfrom" value="[!--titleurl--]">
</form>