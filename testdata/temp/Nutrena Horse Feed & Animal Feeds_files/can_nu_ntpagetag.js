/* Unica Page Tagging Script v2.1.0
 * Copyright 2004-2010 Unica Corporation.  All rights reserved.
 * Visit http://www.unica.com for more information.
 */

var NTPT_IMGSRC = 'http://pt200255.unica.com/ntpagetag.gif';

var NTPT_FLDS = {};
NTPT_FLDS.lc = true; // Document location
NTPT_FLDS.rf = true; // Document referrer
NTPT_FLDS.rs = true; // User's screen resolution
NTPT_FLDS.cd = true; // User's color depth
NTPT_FLDS.ln = true; // Browser language
NTPT_FLDS.tz = true; // User's timezone
NTPT_FLDS.jv = true; // Browser's Java support
NTPT_FLDS.ck = true; // Cookies
NTPT_FLDS.iv = true; // Initial view

var NTPT_MAXTAGWAIT = 1.0; // Max delay (secs) on link-tags and submit-tags

var NTPT_HTTPSIMGSRC = 'https://pt200255.unica.com/ntpagetag.gif';
var NTPT_GLBLREFTOP = false;
var NTPT_SET_IDCOOKIE = true;
var NTPT_IDCOOKIE_NAME = 'UnicaNIODID';
var NTPT_SET_SESSION_COOKIE = false;
var NTPT_SESSION_COOKIE_NAME = 'NISession';

// Variables that need to be modified on a per-site basis

var NTPT_GLBLEXTRA = 'site=www.nutrenaworld.com';
var NTPT_IDCOOKIE_DOMAIN = '.nutrenaworld.com';
var NTPT_GLBLCOOKIES = [ ];

/*** END OF USER-CONFIGURABLE VARIABLES ***/

(function(){var w=document,r=window;function Q(value){return((typeof(value)==="string")&&(value!==""));};function Bv(o){return(encodeURIComponent?encodeURIComponent(o):escape(o));};function hb(o){return(decodeURIComponent?decodeURIComponent(o):unescape(o));};function m(k,o,kT,DW){var G="",I;G=k+'='+Bv(o)+";";if(DW){G+=" domain="+DW+";";}if(kT>0){I=new Date();I.setTime(I.getTime()+(kT*1000));G+=" expires="+I.toGMTString()+";";}G+=" path=/";w.cookie=G;};function l(k){var Bw,p,j,G;Bw=k+"=";G=w.cookie;if(G.length>0){j=G.indexOf(Bw);if(j!==-1){j+=Bw.length;p=G.indexOf(";",j);if(p===-1){p=G.length;}return hb(G.substring(j,p));};}return null;};function Mu(cQ){var L="",H;for(H in cQ){if(Q(cQ[H])){if(L!==""){L+=";";}L+=H+"="+cQ[H];};}return L;};function eC(t){var Bj='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';if(t<62){return Bj.charAt(t);}return(eC(Math.floor(t/62))+Bj.charAt(t%62));};function FP(){var tT="",Bd=new Date(),Uu;for(Uu=0;Uu<11;Uu+=1){tT+=eC(Math.round(Math.random()*61));}return(tT+"-"+eC(Bd.getTime()));};function GI(Z,fh){return(Z+(((Z==='')||((fh==='')||(fh.substring(0,1)==='&')))?'':'&')+fh);};function Fc(){var lO=new Date();return(lO.getTime()+'.'+Math.floor(Math.random()*1000));};function h(Z6,hJ){return(typeof(r[Z6])!=="undefined")?r[Z6]:hJ;};(function(){var GV=h('NTPT_GLBLCOOKIES',null),p6=h('NTPT_PGCOOKIES',null),Y4=h('NTPT_SET_IDCOOKIE',false),Y=h('NTPT_IDCOOKIE_NAME',"SaneID"),Yl=h('NTPT_IDCOOKIE_DOMAIN',null),fS=h('NTPT_IDCOOKIE_EXPIRE',155520000),or=h('NTPT_SET_SESSION_COOKIE',false),GL=h('NTPT_SESSION_COOKIE_NAME',"NetInsightSessionID"),cX=h('NTPT_SESSION_COOKIE_DOMAIN',null),c6=h('NTPT_HTTPSIMGSRC',''),pV=h('NTPT_PGREFTOP',h('NTPT_GLBLREFTOP',false)),xE=h('NTPT_NOINITIALTAG',false),hE=h('NTPT_MAXTAGWAIT',1.0),IC=NTPT_IMGSRC,c=NTPT_FLDS,bs=null,M=null,S=null,a=null,A=[],N={},z=new Array(10),q;for(q=0;q<z.length;q+=1){z[q]=null;}function v(k,Vz){if(typeof(Vz)!=="undefined"){A[k]=Vz.toString();}};function s3(k){A[k]='';};function dB(s){var Ek,e,f;if(Q(s)){Ek=s.split('&');for(f=0;f<Ek.length;f+=1){e=Ek[f].split('=');if(e.length===2){v(e[0],hb(e[1]));};};}};function zj(s){var _R='',H;dB(h('NTPT_GLBLEXTRA',''));if(!S){dB(h('NTPT_PGEXTRA',''));}dB(s);for(H in A){if(Q(A[H])){_R=GI(_R,H+'='+Bv(A[H]));};}return _R;};function Yq(){var H;N.A=[];for(H in A){if(Q(A[H])){N.A[H]=A[H];};}};function B4(){var H;A=[];for(H in N.A){if(Q(N.A[H])){A[H]=N.A[H];};}};function oN(P,i,W){if(z[P]!==null){z[P].onload=i;z[P].onerror=i;z[P].onabort=i;}return setTimeout(i,(W*1000));};function D6(g,R){if(!Q(g)){return;}q=((q+1)%z.length);if(z[q]===null){z[q]=new Image(1,1);}z[q].src=g+'?'+R;};function pa(s){var g,R;if((c6!=='')&&(w.location.protocol==='https:')){g=c6;}else{g=IC;}R=zj(s);D6(g,R);B4();};function kU(s){v('ets',Fc());pa(s);return true;};function mT(K){if(bs){clearTimeout(bs);bs=null;}if(S){var _=S;S=null;if(K){_.click();_.onclick=_.UK;}else{r.location.href=_.href;};}};function we(T,s,W){var C,K;if(!T||!T.href){return true;}if(S){return false;}S=T;if(c.lc){v('lc',T.href);}if(c.rf){if(!pV||!top||!top.document){v('rf',w.location);};}kU(s);if(W){C=W;}else{C=hE;}if(C>0){if(S.click){S.UK=S.onclick;S.onclick=null;K=true;}else{K=false;}bs=oN(q,function(){mT(K);},C);return false;}S=null;return true;};function xa(){if(M){clearTimeout(M);M=null;}if(a){var bp=a;a=null;bp.submit();bp.onsubmit=bp.TJ;}};function L8(D,s,W){var C;if(!D||!D.submit){return true;}if(a){return false;}a=D;kU(s);if(W){C=W;}else{C=hE;}if(C>0){D.TJ=D.onsubmit;D.onsubmit=null;M=oN(q,function(){xa();},C);return false;}a=null;return true;};function BY(){var Hf;if(pV&&top&&top.document){Hf=top.document.referrer;}else{Hf=w.referrer;}v('rf',Hf);};function Rd(){var B;if(navigator.language){B=navigator.language;}else if(navigator.userLanguage){B=navigator.userLanguage;}else{B='';}if(B.length>2){B=B.substring(0,2);}B=B.toLowerCase();v('ln',B);};function WQ(){var F,lO=new Date(),J=lO.getTimezoneOffset(),V;F='GMT';if(J!==0){if(J>0){F+=' -';}else{F+=' +';}J=Math.abs(J);V=Math.floor(J/60);J-=V*60;if(V<10){F+='0';}F+=V+':';if(J<10){F+='0';}F+=J;}v('tz',F);};function Ab(){var O=[],np=false,NR='ck',b,G,U,H;v('js','1');v('ts',Fc());if(c.lc){v('lc',w.location);}if(c.rf){BY();}if(self.screen){if(c.rs){v('rs',self.screen.width+'x'+self.screen.height);}if(c.cd){v('cd',self.screen.colorDepth);};}if(c.ln){Rd();}if(c.tz){WQ();}if(c.jv){v('jv',navigator.javaEnabled()?'1':'0');}if(or&&!l(GL)){m(GL,1,0,cX);if(c.iv&&l(GL)){v('iv','1');};}if(c.ck){if(GV){for(b=0;b<GV.length;b+=1){O[GV[b]]="";};}if(p6){for(b=0;b<p6.length;b+=1){O[p6[b]]="";};}for(H in O){if(typeof(O[H])==="string"){G=l(H);if(G){O[H]=G;};};}if(Y4){G=l(Y);if(G){O[Y]=G;np=true;};}U=Mu(O);if(U!==""){v(NR,U);};}Yq();if(!xE){pa('');}s3('iv');Yq();if(Y4&&!np){G=l(Y);if(!G){G=FP();m(Y,G,fS,Yl);if(c.ck&&l(Y)){O[Y]=G;U=Mu(O);if(U!==""){v(NR,U);Yq();};};};}};function B6(k,o){var Z,wr,b,C9;Z=w.location.search.substring(1);C9=k+"="+o;wr=Z.split("&");for(b=0;b<wr.length;b+=1){if(wr[b]===C9){return true;};}return false;};function vD(){var uY=h("NTPT_EM_COOKIE_PREFIX","NetInsightEM"),wG=uY+"Session",dz=uY,O_=h("NTPT_EM_COOKIE_TIMEOUT",1800),Rr="emsgpcat",iI="1",Ks="1";if(l(wG)||l(dz)||B6(Rr,iI)){m(wG,Ks,0,Yl);m(dz,Ks,O_,Yl);v(Rr,iI);return true;}return false;};function Yu(){if(c.gsme){return vD();}return true;};if(Yu()){r.ntptAddPair=function(X,d){return v(X,d);};r.ntptDropPair=function(X){return s3(X);};r.ntptEventTag=function(X){return kU(X);};r.ntptLinkTag=function(X,d,T5){return we(X,d,T5);};r.ntptSubmitTag=function(X,d,T5){return L8(X,d,T5);};Ab();}else{r.ntptAddPair=r.ntptDropPair=r.ntptEventTag=r.ntptLinkTag=r.ntptSubmitTag=function(){return true;};}}());}());
