<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=880" />
<meta name="apple-mobile-web-app-title" content="네이버" />
<link rel="shortcut icon" type="image/x-icon" href="http://img.naver.net/static/www/favicon.ico" />

<title>네이버</title>


<link rel="stylesheet" type="text/css" href="/css/main_v20140306.css" />

<link rel="stylesheet" type="text/css" id="css" href="http://sstatic.naver.net/search/css/2014/api_atcmp_0206.css" />

<!--[if IE]><style type="text/css">.cast_list li{white-space:normal;}</style><![endif]-->
<script type="text/javascript">
//<![CDATA[
document.domain = "naver.com";
history.navigationMode = 'compatible';
var nsc = "navertop.v3";
</script>
<script type="text/javascript" src="/js/c/nlog_20140205.min.js"></script>
<script type="text/javascript">
var isAdult = false;
var isLogin = false; 
var strHost = "www.naver.com";
var isMobile = false;
var isMyCast = false;
var svr = "<!--tnweb209.ntop-->";
var LogError=function(b){var a=new Image();a.src="http://cecs.naver.com/?m="+b+"&u="+document.location+"&l=1115"};DLScript={quSXI:new Array(),quS:new Array(),retry:0,isLoad:function(a){for(var b=this.quS.length-1;
b>=0;b--){if(this.quS[b]===a){return true}}return false},_runOnload:function(b,d,c){if(!d){return}var a=b.readyState;if(typeof a==="undefined"&&!b.onloadDone){b.onloadDone=true;(c)?setTimeout(d,100):b.onload=d;
return}if(("loaded"===a||"complete"===a)&&!b.onloadDone){b.onloadDone=true;setTimeout(d,100)}else{if(this.retry<10){this.retry++;setTimeout(function(){DLScript._runOnload(b,d,c)},10)}}},_createJSDom:function(c,b){var a=document.createElement("script");
if(b=="src"){a.src=c}else{a.text=c}return a},_appendJSDom:function(a){document.getElementsByTagName("head")[0].appendChild(a)},loadDS:function(b,d,c){if(!this.isLoad(b)){this.quS[this.quS.length]=b;var a=this._createJSDom(b,"src");
this._runOnload(a,d,c);this._appendJSDom(a)}else{if(d){setTimeout(d,100)}}},loadXI:function(c,i,g,d){if(!this.isLoad(c)){this.quS[DLScript.quS.length]=c;var h=this.quSXI.length;if(d){var a={response:null,onload:g,done:false};
DLScript.quSXI[h]=a}if(typeof window.localStorage!="undefined"){try{var b=window.localStorage.getItem(c+"_uid");var m=window.localStorage.getItem(c)}catch(j){if(j.description){LogError("[DL] localStorge get : "+j.description)
}}if(m&&i&&b==i){if(d){DLScript.quSXI[h].response=m;DLScript.injectScripts()}else{var f=DLScript._createJSDom(m,"text");DLScript._runOnload(f,g,true);DLScript._appendJSDom(f)}return}}var k=DLScript.getXHRObject();
if(!k){LogError("[DL] XHRObject is NULL");this.loadDS(c,g);return}k.onreadystatechange=function(){if(k.readyState==4){if(k.status==200||k.status==0){var o=k.responseText;try{if(typeof window.localStorage!="undefined"&&i){DLScript.clearLS();
window.localStorage.setItem(c,o);window.localStorage.setItem(c+"_uid",i)}}catch(p){if(p.description){LogError("[DL] localStorge set : "+p.description)}}if(d){DLScript.quSXI[h].response=o;DLScript.injectScripts()
}else{var n=DLScript._createJSDom(o,"text");DLScript._runOnload(n,g,true);DLScript._appendJSDom(n)}}else{LogError("[DL] status is not 200(0) - "+k.status);DLScript.removeUrl(c);DLScript.clearLS();setTimeout(g,100)
}}};var l="";if(i){l=(c.indexOf("?")>0)?"&"+i:"?"+i}k.open("GET",c+l,true);k.setRequestHeader("Content-Type","application/x-www-form-urlencoded; charset=utf-8");k.setRequestHeader("charset","utf-8");k.send("")
}else{if(g){setTimeout(g,100)}}},injectScripts:function(){var a=DLScript.quSXI.length;for(var c=0;c<a;c++){var d=DLScript.quSXI[c];if(!d.done){if(!d.response){break}else{d.done=true;var b=DLScript._createJSDom(d.response,"text");
DLScript._runOnload(b,d.onload,true);DLScript._appendJSDom(b)}}}},getXHRObject:function(){var c=false;try{c=new XMLHttpRequest()}catch(f){var b=["Msxml2.XMLHTTP","Microsoft.XMLHTTP","Msxml2.XMLHTTP.6.0","Msxml2.XMLHTTP.3.0"];
var a=b.length;for(var d=0;d<a;d++){try{c=new ActiveXObject(b[d])}catch(f){LogError("[DL] getXHRObject - "+f.description);continue}break}}finally{return c}},loadWS:function(a){document.write('<script src="'+a+'" type="text/javascript"><\/script>')
},clearLS:function(){if(typeof window.localStorage!="undefined"){try{window.localStorage.clear()}catch(a){if(a.description){LogError("[DL] clearLS : "+a.description)}}}},removeUrl:function(a){for(var b=this.quS.length-1;
b>=0;b--){if(this.quS[b]===a){this.quS[b]=""}}}};
DLScript.loadDS("/js/c/JEagleEyeClient_20120111.min.js?v=2");
function refreshLcs(etc) {if(document.cookie.indexOf("nrefreshx=1") != -1) {etc=etc?etc:{};etc["mrf"]="1";return etc;}return null;}
lcs_do(refreshLcs());
//]]>
</script>
</head>


<body class=''>






<div id="u_skip">
<a href="#news_cast2" onclick="document.getElementById('news_cast2').tabIndex = -1;document.getElementById('news_cast2').focus();return false;"><span>뉴스스탠드 바로가기</span></a>
<a href="#open_cast" onclick="document.getElementById('open_cast').tabIndex = -1;document.getElementById('open_cast').focus();return false;"><span>오픈캐스트 바로가기</span></a>
<a href="#themecast" onclick="document.getElementById('themecast').tabIndex = -1;document.getElementById('themecast').focus();return false;"><span>주제별캐스트 바로가기</span></a>
<a href="#time_square" onclick="document.getElementById('time_square').tabIndex = -1;document.getElementById('time_square').focus();return false;"><span>타임스퀘어 바로가기</span></a>
<a href="#shop_cast" onclick="document.getElementById('shop_cast').tabIndex = -1;document.getElementById('shop_cast').focus();return false;"><span>쇼핑캐스트 바로가기</span></a>

<a href="#account" onclick="document.getElementById('account').tabIndex = -1;document.getElementById('account').focus();return false;"><span>로그인 바로가기</span></a>

</div>
<div id="wrap">
<div id="nanum_popup">
<div tabindex="0" class="nanum_popup" id="nanum_popup1" style="display:none;top:50%;left:50%;width:349px;margin-top:-127px;margin-left:-174px">
<div class="nanum_popup_in">
<div class="cnt"><span class="ques"></span>
<h4>나눔글꼴 설치 안내</h4>
<p>네이버 메인을 나눔글꼴로 보기 위해서는<br><span>&nbsp;나눔글꼴을 설치</span>해야 합니다.<br>나눔글꼴을 설치하시겠습니까?</p>
<input type="image" src="http://sstatic.naver.net/search/img3/btn_setup.gif" value="설치" class="nanum_inst" alt="설치">
<input type="image" src="http://sstatic.naver.net/search/img3/btn_cancel.gif" value="취소" class="nanum_cancel" alt="취소">
</div>
<div class="txt_notice">
<p>개인 및 기업을 포함, 모든 사용자가 무료로 사용 가능합니다.</p>
<a href="http://help.naver.com/ops/step2/faq.nhn?faqId=15879">나눔글꼴 라이센스 전문보기</a>
</div>
<span class="btn_cl">
<button type="button" title="레이어 닫기"><span class="blind">레이어 닫기</span></button>
</span>
</div>
<iframe frameborder="0" style="position:absolute;top:0;left:0;z-index:-1;width:100%;height:100%;border:0"></iframe>
</div>
<div tabindex="0" class="nanum_popup" id="nanum_popup2" style="display:none;top:50%;left:50%;width:424px;margin-top:-158px;margin-left:-212px">
<div class="nanum_popup_in">
<div class="cnt"><span class="ques"></span>
<h4>나눔글꼴 확인 오류</h4>
<p>고객님의 PC에서 나눔글꼴이 확인되지 않습니다.<br>나눔글꼴로 메인을 보기위해서는<span>나눔글꼴 재설치</span>가 필요합니다.<br>
<strong>나눔글꼴을 다시 설치하시겠습니까?</strong></p>
<p class="txt_nanum">나눔글꼴이 확인되지 않는 이유는 나눔글꼴 최초설치가 제대로<br>완료되지 않은 경우, 설치된 폰트를 임의로 삭제한 경우에 발생합니다.</p>
<input type="image" src="http://sstatic.naver.net/search/img3/btn_setup.gif" value="설치" class="nanum_inst" alt="설치">
<input type="image" src="http://sstatic.naver.net/search/img3/btn_cancel.gif" value="취소" class="nanum_cancel" alt="취소">
</div>
<div class="txt_notice">
<p>개인 및 기업을 포함, 모든 사용자가 무료로 사용 가능합니다.</p>
<a href="http://help.naver.com/ops/step2/faq.nhn?faqId=15879">나눔글꼴 라이센스 전문보기</a>
</div>
<span class="btn_cl">
<button type="button" title="레이어 닫기"><span class="blind">레이어 닫기</span></button>
</span>
</div>
<iframe frameborder="0" style="position:absolute;top:0;left:0;z-index:-1;width:100%;height:100%;border:0"></iframe>
</div>
</div>
<div style="position:relative; width:880px; margin:0 auto; z-index:11;">
<div id="da_top"></div>
<div id="da_brand"></div>
<div id="da_hook_t"></div>
<div id="da_hook_b"></div>
<div id="da_stake"></div>
<div id="da_casthelp"></div>
<div id="da_expwide"></div>
</div>
<div id="header">
<div class="gnb">
<h2 class="blind">홈 유형 선택</h2>
<ul class="nav_hm">
<li id="nav_hm" class="m"><a href="http://www.naver.com/" onclick="clickcr(this,'HNB.cast','','',event);" accesskey="1" ><span class="nav_hm2_ly nav_hm2_ly1">네이버 홈</span></a></li>
<li id="nav_hm2" class="m2"><a href="http://se.naver.com/" onclick="clickcr(this,'HNB.search','','',event);" accesskey="2"><span class="nav_hm2_ly nav_hm2_ly2">가볍고 빠른 검색홈, <span>네이버SE</span></span></a></li>
<li id="nav_hm3" class="m3"><a href="http://me.naver.com/" onclick="clickcr(this,'HNB.desk','','',event);" accesskey="3"><span class="nav_hm2_ly nav_hm2_ly3">나만의 네이버 홈, <span>네이버me</span></span></a></li>
</ul>
<h2 class="blind">네이버 설정</h2>
<ul class="naver_set">
<li class="makeHomePage hide"><a href="#mkhome" id="mkhome" onclick="clickcr(this,'top.mkhome','','',event);this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.naver.com');ToolBar.popup();return false;">네이버를 시작페이지로</a></li>
<li class="naverapp">
<a href="#" class="btn" onclick="clickcr(this,'top.app','','',event);Andro_MSG.toggle();return false;">네이버 앱 다운로드</a>
<div id="naverapply" class="ly_hnb hide">
<p class="tit">모바일 라이프의 경쟁력, 네이버 앱을 설치하세요!</p>
<fieldset>
<legend>다운로드URL 문자받기</legend>
<span class="txtsm">다운로드URL 문자받기</span>
<label class="blind" for="app_phone">휴대폰번호 입력</label>
<input class="empty" type="text" value="" id="app_phone" />
<button type="button" class="btnsm"><span class="blind">보내기</span></button>
</fieldset>
<p class="desc">입력하신 번호는 저장되지 않고, 전송은 무료입니다.</p>
<p class="qr"><img src="http://img.naver.net/static/www/dl_qr_naver.png" width="68" height="84" alt="네이버 앱 QR코드" /></p>
<ul class="app">
<li class="f"><a href="#naver"><strong>네이버 앱</strong></a></li>
<li><a href="#map">지도</a></li>
<li><a href="#n_drive">N드라이브</a></li>
<li><a href="#books">북스</a></li>
<li><a href="#music">뮤직</a></li>
<li><a href="#line">라인</a></li>
<li><a href="#appstore">앱스토어</a><span class="new">new</span></li>
</ul>
<div class="cls"><a href="#close" title="네이버 앱 다운로드 레이어 닫기" onclick="clickcr(this,'top*m.close','','',event);Andro_MSG.close();return false;"><span class="blind">네이버 앱 다운로드 레이어 닫기</span></a></div>
</div>
</li>





<!-- 글꼴설정 -->
<li class="set_font">
<!-- [d] : 열렸을경우 setf_open 추가 -->
<ul class="setf">
<li class="first"><span class="blind">현재</span><a href="#" onclick="return false;">시스템글꼴</a></li>
<li class="second"><a href="#" onclick="return false;">나눔글꼴</a></li>
</ul>
<!-- [d] : 열렸을경우 setf_help_open 추가 -->
<div class="setf_help">
<a href="#" onclick="return false;" title="글꼴설정 도움말" class="setf_help_toggle">글꼴설정 도움말</a>
<div class="ly_setf_help">
<ul>
<li><a href="#" onclick="return false;" id="font_preview">나눔글꼴 미리보기</a></li>
<li><a href="http://hangeul.naver.com/index.nhn" onclick="clickcr( this, 'top.fontcampaign', '', '', event );" >네이버 한글캠페인</a></li>
<li><a href="http://help.naver.com/ops/step2/faq.nhn?faqId=15611" onclick="clickcr( this, 'top.fontfaq', '', '', event );" >도움말</a></li>
</ul>
<a href="#" class="ly_setf_close" title="글꼴설정 도움말 닫기" onclick="return false;" >글꼴설정 도움말 닫기</a>
</div>
</div>
</li>

</ul>
<h2 class="blind">패밀리 사이트</h2>
<div id="fms" class="fms">
<a href="http://happybean.naver.com/main/SectionMain.nhn" id="top.happybean" class="hb"><span class="ir">해피빈</span></a><span>|</span><a href="http://jr.naver.com" id="top.jrnaver" class="ju"><span class="ir">쥬니버</span></a><span>|</span><a href="http://www.hangame.com" id="top.hangame" class="han"><span class="ir">한게임</span></a>
</div>
<div id="promotion8" style="display:none;height:41px;">
<img src="http://img.naver.net/static/www/up/2012/naver_homepage.png" width="880" height="31" alt="시작페이지" usemap="#sliding" />
<map id="promo_sliding" name="sliding">
<area shape="rect" coords="533,5,575,24" href="http://www.naver.com/" onclick="clickcr(this,'tsb.set','','',event);return HomePageSet.setHomePage();" alt="시작페이지 설정" />
<area shape="rect" coords="580,5,622,24" href="http://www.naver.com/" onclick="clickcr(this,'tsb.no','','',event);return HomePageSet.cancel();" alt="시작페이지 안하기" />
<area id="sethomepage_close" shape="rect" coords="855,5,875,23" href="#" alt="배너 닫기" onclick="clickcr(this,'tsb.close','','',event);return HomePageSet.cancel();" />
</map>
</div>
<script type="text/javascript">
//<![CDATA[
var slidingCookieName = "naverSetHomepage";
var slidingCookieExpDate = 1;
var slidingOneTimeLink = 1;
//]]>
</script>
</div>
<div class="lnb">
<h1>
<img src='http://img.naver.net/static/www/u/2013/0731/nmms_224940510.gif' alt='네이버' width='210' height='78' usemap='#logo_ss' />
<map id='logo_ss' name='logo_ss'>
<area shape='rect' coords='0,0,210,78' alt='네이버' href="http://www.naver.com/" onclick="clickcr(this, 'top.logo','78000C01_0000000C8FA1', '', event)"  />
</map>
</h1>
<hr />
<div id="search">
<form id="sform" name="sform" action="http://search.naver.com/search.naver" method="get">
<fieldset>
<legend>검색</legend>
<select id="where" name="where" title="검색 범위 선택" class="blind">
<option value="nexearch" selected="selected">통합검색</option>
<option value="post">블로그</option>
<option value="cafeblog">카페</option>
<option value="cafe">- 카페명</option>
<option value="article">- 카페글</option>
<option value="kin">지식iN</option>
<option value="news">뉴스</option>
<option value="web">사이트</option>
<option value="category">- 카테고리</option>
<option value="site">- 사이트</option>
<option value="movie">영화</option>
<option value="webkr">웹문서</option>
<option value="dic">사전</option>
<option value="100">- 백과사전</option>
<option value="endic">- 영어사전</option>
<option value="eedic">- 영영사전</option>
<option value="krdic">- 국어사전</option>
<option value="jpdic">- 일본어사전</option>
<option value="hanja">- 한자사전</option>
<option value="terms">- 용어사전</option>
<option value="book">책</option>
<option value="music">음악</option>
<option value="doc">전문자료</option>
<option value="shop">쇼핑</option>
<option value="local">지역</option>
<option value="video">동영상</option>
<option value="image">이미지</option>
<option value="mypc">내PC</option>
<optgroup label="스마트 파인더">
<option value="movie">영화</option>
<option value="auto">자동차</option>
<option value="game">게임</option>
<option value="health">건강</option>
<option value="people">인물</option>
</optgroup>
<optgroup label="네이버 랩">
<option>긍정부정검색</option>
</optgroup>
</select>
<span class="green_window"><input id="query" name="query" type="text" title="검색어 입력" class="input_text" tabindex="1" accesskey="s" style="ime-mode:active;" autocomplete="off" onclick="document.getElementById('fbm').value=1;"  /></span><button id="search_btn" type="submit" title="검색" tabindex="3" class="sch_smit" onmouseover="this.className='sch_smit over'" onmousedown="this.className='sch_smit down'" onmouseout="this.className='sch_smit'" onclick="clickcr(this,'sch.action','','',event);"><span class="ir">검색</span></button>
<input type="hidden" id="sm" name="sm" value="top_hty" />
<input type="hidden" id="fbm" name="fbm" value="0" />
<input type="hidden" id="acr" name="acr" value="" disabled="disabled" />
<input type="hidden" id="acq" name="acq" value="" disabled="disabled" />
<input type="hidden" id="qdt" name="qdt" value="" disabled="disabled" />
<input type="hidden" id="ie" name="ie" value="utf8" />
<input type="hidden" id="acir" name="acir" value="" disabled="disabled" />
<input type="hidden" id="os" name="os" value="" disabled="disabled" />
<input type="hidden" id="bid" name="bid" value="" disabled="disabled" />
<input type="hidden" id="pkid" name="pkid" value="" disabled="disabled" />
<input type="hidden" id="eid" name="eid" value="" disabled="disabled" />
<input type="hidden" id="mra" name="mra" value="" disabled="disabled" />
</fieldset>
</form>
<div id="nautocomplete" class="autocomplete">
<span class="btn_arw top"><a href="#" onclick="return false;" tabindex="2"><img src="http://sstatic.naver.com/search/images11/btn_atcmp_down_on.gif" width="13" height="11" title="자동완성 펼치기" alt="자동완성 펼치기" class="triangleImg" /></a></span>
</div>
<div id="autoFrame" class="reatcmp" style="width:360px;background-color:rgb(255, 255, 255);display:none;">
<div class="api_atcmp_wrap _atcmp" style="display:none;">
<div class="words nature">
<h3 class="tit">생각한대로 검색해 보세요 <span class="beta">Beta</span></h3>
<ul class="_nature">
<li class="_item"><a href="#" onclick="return false;">@txt@</a><span style="display:none" id="rank@rank@">@txt@</span></li>
</ul>
</div>
<div class="words _words">
<div class="_atcmp_result_wrap">
<ul class="_resultBox"></ul>
<ul class="_resultBox"></ul>
<ul class="_resultBox"></ul>
<ul class="_resultBox"></ul>
</div>
<div class="add_group _atcmp_answer_wrap"></div>
</div>
<p class="func"><span class="fl"><a onclick="__atcmpCR(event, this, 'help', '','','');" href="https://help.naver.com/support/service/main.nhn?serviceNo=606&categoryNo=1987" target="_blank">도움말</a> | <a onclick="__atcmpCR(event, this, 'report', '','','');" href="https://help.naver.com/support/contents/contents.nhn?serviceNo=606&categoryNo=2028" target="_blank">신고</a></span><span><em><a class="hisoff" href="javascript:;">검색어저장 켜기</a> |</em><a class="funoff" href="javascript:;"  onclick="smartSearch.unuse(); return false;">자동완성 끄기</a></span></p>
<img src="http://sstatic.naver.net/search/images11/img_atcmp15.gif" alt="기능을 다시 켤 때는 펼치기 버튼을 클릭하세요" width="218" height="23" class="help _help_tooltip1" style="display:none;"/>
</div>
<div class="api_atcmp_wrap _atcmpIng" style="display:none;">
<div class="words"><p class="msg">현재 자동완성 기능을 사용하고 계십니다.</p></div>
<p class="func"><span class="fl"><a onclick="__atcmpCR(event, this, 'help', '','','');" href="https://help.naver.com/support/service/main.nhn?serviceNo=606&categoryNo=1987" target="_blank">도움말</a> | <a onclick="__atcmpCR(event, this, 'report', '','','');" href="https://help.naver.com/support/contents/contents.nhn?serviceNo=606&categoryNo=2028" target="_blank">신고</a></span><span><em><a class="hisoff" href="javascript:;">검색어저장 켜기</a> |</em><a class="funoff" href="javascript:;"  onclick="smartSearch.unuse(); return false;">자동완성 끄기</a></span></p>
<img src="http://sstatic.naver.net/search/images11/img_atcmp15.gif" alt="기능을 다시 켤 때는 펼치기 버튼을 클릭하세요" width="218" height="23" class="help _help_tooltip2" style="display:none;"/>
</div>
<div class="api_atcmp_wrap _atcmpStart" style="display:none;">
<div class="words"><p class="msg">자동완성 기능이 활성화되었습니다.</p></div>
<p class="func"><span class="fl"><a onclick="__atcmpCR(event, this, 'help', '','','');" href="https://help.naver.com/support/service/main.nhn?serviceNo=606&categoryNo=1987" target="_blank">도움말</a> | <a onclick="__atcmpCR(event, this, 'report', '','','');" href="https://help.naver.com/support/contents/contents.nhn?serviceNo=606&categoryNo=2028" target="_blank">신고</a></span><span><em><a class="hisoff" href="javascript:;">검색어저장 켜기</a> |</em><a class="funoff" href="javascript:;"  onclick="smartSearch.unuse(); return false;">자동완성 끄기</a></span></p>
<img src="http://sstatic.naver.net/search/images11/img_atcmp15.gif" alt="기능을 다시 켤 때는 펼치기 버튼을 클릭하세요" width="218" height="23" class="help _help_tooltip3" style="display:none;"/>
</div>
<div class="api_atcmp_wrap _atcmpOff" style="display:none;">
<div class="words"><p class="msg">자동완성 기능이 꺼져 있습니다.</p></div>
<p class="func"><span class="fl"><a onclick="__atcmpCR(event, this, 'help', '','','');" href="https://help.naver.com/support/service/main.nhn?serviceNo=606&categoryNo=1987" target="_blank">도움말</a> | <a onclick="__atcmpCR(event, this, 'report', '','','');" href="https://help.naver.com/support/contents/contents.nhn?serviceNo=606&categoryNo=2028" target="_blank">신고</a></span><span><em><a class="hisoff" href="javascript:;">검색어저장 켜기</a> |</em><a class="funoff" href="javascript:;">자동완성 켜기</a></span></p>
</div>
<div class="api_atcmp_wrap _keywords" style="display:none;">
<div class="my_words">
<div class="lst_tab">
<ul><li class="on _recentTab"><a href="javascript:;">최근검색어</a></li><li class="_myTab"><a href="javascript:;">내 검색어</a></li></ul>
</div>
<div class="words _recent">
<ul><li data-rank="@rank@"><a class="t@my@ _myBtn" title="내 검색어 등록" href="javascript:;">내 검색어 등록</a><a href="javascript:;">@txt@</a><em class="date">@date@</em><a href="javascript:;" class="btn_del _del" title="검색어삭제">삭제</a><span style="display:none">@in_txt@</span></li></ul>
<div class="info_words _recentNone" style="display:none">최근검색어 내역이 없습니다.</div>
<p class="msg _offMsg" style="display:none">검색어 저장 기능이 꺼져 있습니다.</p>
</div>
<div class="words _my" style="display:none">
<ul><li data-rank="@rank@"><a class="ton _myBtn" title="내 검색어 해제" href="javascript:;">내 검색어 해제</a><a href="javascript:;">@txt@</a></li></ul>
<div class="info_words _myNone" style="display:none">설정된 내 검색어가 없습니다.<br />최근검색어에서 <span class="star">내 검색어 등록</span>를 선택하여 자주 찾는 검색어를<br />내 검색어로 저장해 보세요.</div>
<p class="msg _offMsg" style="display:none">검색어 저장 기능이 꺼져 있습니다.</p>
</div>
<p class="noti _noti" style="display:none">공용 PC에서는 개인정보 보호를 위하여 반드시 로그아웃을 해 주세요.</p>
<p class="func _recentBtnGroup"><span class="fl"><a class="_delMode" href="javascript:;">기록 삭제</a></span><span><a class="_keywordOff" href="javascript:;">검색어저장 끄기</a> | <a class="_acOff" href="javascript:;">자동완성 끄기</a></span></p>
<p class="func _recentDelBtnGroup" style="display:none"><span class="fl"><a class="_delAll" href="javascript:;" title="최근 검색어 기록을 모두 삭제합니다.">기록 전체 삭제</a></span><span><a class="_delDone" href="javascript:;">완료</a></span></p>
<p class="func _myBtnGroup" style="display:none"><span class="fl"><a class="_delAll" href="javascript:;" title="설정된 내 검색어를 모두 삭제합니다.">기록 전체 삭제</a></span><span><a class="_keywordOff" href="javascript:;">검색어저장 끄기</a> | <a class="_acOff" href="javascript:;">자동완성 끄기</a></span></p>
<span class="help2 _help2" style="display:none">기능을 다시 켤 때는 펼치기 버튼을 클릭하세요</span>
<div class="ly_noti _maxLayer" style="display:none">
<span class="mask"></span>
<p><span class="ico"></span>내 검색어는 최대 <em>10</em>개 까지 저장할 수 있습니다.<br />추가하시려면 기존 내 검색어를 지워주세요. <a href="javascript:;" class="btn_clse _close">닫기</a></p>
</div>
</div>
</div>
<iframe vspace="0" hspace="0" border="0" style="display:none;display:block\9;display:block\0/;position:absolute;left:0;top:0;width:100%;height:100%;z-index:-1;" title="빈 프레임"></iframe>
</div>
<script type="text/template" id="_atcmp_answer_0">
<div class="add_opt _item" data-sm="@2@" data-keyword="@1@" data-template_id="@0@" data-acir="@rank@" data-os="@8@" data-bid="@9@" data-eid="@3@" data-pkid="@10@" data-mra="@11@" >
<a href="#" class="opt_dsc">
<span class="dsc_thmb" style="@style7@">@image7@</span>
<span class="dsc_group">
<span class="dsc_cate">@6@</span>
<strong class="dsc_word">@1@</strong>
<span class="dsc_sub" style="@style12@">@12@</span>
</span>
</a>
</div>
</script>
<script type="text/template" id="_atcmp_answer_2">
<div class="add_opt _item" data-sm="@2@" data-keyword="@1@" data-template_id="@0@" data-acir="@rank@">
<a href="javascript:;" class="opt_localnum">
<span class="opt_local">@5@</span>
<span class="opt_num">@6@</span>
</a>
</div>
</script>
<script type="text/template" id="_atcmp_answer_3">
<div class="add_opt _item" data-sm="@2@" data-keyword="@1@" data-template_id="@0@" data-acir="@rank@">
<a href="javascript:;" class="opt_lotto">
<span class="lotto_num_area">
<span class="spat lotto_num lotto_num@6@">@6@</span><span class="spat lotto_num lotto_num@7@">@7@</span><span class="spat lotto_num lotto_num@8@">@8@</span><span class="spat lotto_num lotto_num@9@">@9@</span><span class="spat lotto_num lotto_num@10@">@10@</span><span class="spat lotto_num lotto_num@11@">@11@</span><span class="spat lotto_bonus">+</span><span class="spat lotto_num lotto_num@12@">@12@</span>
</span>
<span class="lotto_sub">@5@회차 (@13@)</span>
</a>
</div>
</script>
<script type="text/template" id="_atcmp_answer_9">
<div class="add_opt _item" data-sm="@2@" data-keyword="@1@" data-template_id="@0@" data-acir="@rank@">
<a href="javascript:;" class="opt_exchange opt_exchange_up">
<span class="opt_nation">
<img src="http://sstatic.naver.net/keypage/lifesrch/exchange/ico_@12@1.gif" alt="" />
<span class="tx_nation">@5@</span>
</span>
<span class="opt_amount">
<span class="amount"><strong>@6@</strong>원</span><span class="changes">@10@ @8@ (@9@%)</span>
</span>
</a>
</div>
</script>
<script type="text/template" id="_atcmp_answer_10">
<div class="add_opt _item" data-sm="@2@" data-keyword="@1@" data-template_id="@0@" data-acir="@rank@">
<a href="#" class="opt_weather">
<span class="opt_weather_thmb">
<img src="http://static.naver.net/m/weather/2011/im/wt170_@5@.png" alt="@8@" width="50" height="40" />
</span>
<span class="opt_weather_group">
<span class="opt_weather_state localname">@6@</span>
<span class="opt_weather_state">@8@</span>
<span class="opt_weather_state"><em>@9@</em><span class="opt_unit">℃</span><span class="opt_part">/</span><em class="opt_deg">@10@</em><span class="opt_unit">℃</span></span>
</span>
</a>
</div>
</script>
<script type="text/template" id="_atcmp_answer_11">
<div class="add_opt _item" data-sm="@2@" data-keyword="@1@" data-template_id="@0@" data-acir="@rank@">
<a href="javascript:;" class="opt_weather">
<span class="opt_weather_thmb">
<img src="http://static.naver.net/m/weather/2011/im/wt170_@6@.png" width="50" height="40" alt="@7@">
</span>
<span class="opt_weather_group">
<span class="opt_weather_state">@7@</span>
<span class="opt_weather_state">기온 <em class="opt_deg">@8@</em><span class="opt_unit">℃</span></span>
<span class="opt_weather_state">@9@ <em>@10@</em><span class="opt_unit">@11@</span></span>
</span>
</a>
</div>
</script>
<script type="text/template" id="_atcmp_answer_17">
<div class="add_opt _item" data-sm="@2@" data-keyword="@1@" data-template_id="@0@" data-acir="@rank@">
<a href="http://@5@" target="_blank" class="opt_shortcut">
<span class="opt_url">@5@</span>
<span class="opt_txt">사이트로 바로 이동</span>
</a>
</div>
</script>
<script type="text/template" id="_atcmp_answer_18">
<div class="add_opt _item" data-sm="@2@" data-keyword="@1@" data-template_id="@0@" data-acir="@rank@">
<a href="#" class="opt_happysearch">
<span class="opt_happy_tit"><span class="spat"></span>행복검색</span>
<span class="opt_happy_word">@1@</span>
</a>
</div>
</script>
<script type="text/template" id="_atcmp_result_item_tpl">
<li class="_item @url_class@" data-acr="@rank@">
<a href="#" class="atcmp_keyword" onclick="return false;" title=""><span class="atcmp_keyword_txt">@txt@<span class="spat ic_expand"></span></span></a>
<a href="@url@" target="_blank" class="mquick">바로이동</a>
<span style="display:none">@in_txt@</span>
</li>
</script>
<div id="search_link" class="search_link">
<h3 class="sl_ico"><span class="blind">질문형 검색어</span></h3>
<div id="qu_txt" class="qu_txt">
<script type="text/javascript">var qst_idx=0; var qst_size=4;</script>
<span><a href="http://search.naver.com/search.naver?sm=top_txt&amp;where=nexearch&amp;ie=utf8&amp;query=%EC%84%B8%EA%B3%84%203%EB%8C%80%20%EC%A7%84%EB%AF%B8" onclick="clickcr(this, 'txt.search','78002101_0000000C990F', '', event, 1);"  title="세계 3대 진미">세계 3대 진미</a></span>
<span class="e"><a href="http://search.naver.com/search.naver?sm=top_txt&amp;where=nexearch&amp;ie=utf8&amp;query=%EC%8C%88%EB%94%94%20%EB%A0%88%EC%9D%B4%EB%94%94%20%EC%A0%9C%EC%9D%B8%20%ED%86%B5%ED%99%94" onclick="clickcr(this, 'txt.search','78002101_0000000C9910', '', event, 1);"  title="쌈디 레이디 제인 통화">쌈디 레이디 제인 통화</a></span>
<span class="e"><a href="http://search.naver.com/search.naver?sm=top_txt&amp;where=nexearch&amp;ie=utf8&amp;query=%EC%88%98%EB%AA%A9%EB%93%9C%EB%9D%BC%EB%A7%88%20%EC%8B%9C%EC%B2%AD%EB%A5%A0" onclick="clickcr(this, 'txt.search','78002101_0000000C9911', '', event, 1);"  title="수목드라마 시청률">수목드라마 시청률</a></span>

</div>
<div class="page">
<span class="slkpage_num"></span>
<a id="qst_prev" href="#" title="이전 검색어" class="pre"><span class="blind">이전 검색어</span></a>
<a id="qst_next" href="#" title="다음 검색어" class="next"><span class="blind">다음 검색어</span></a>
</div>
</div>
<!--NONE-->
</div>
<hr />
<div id="s_menu" class="s_menu">
<dl id="naver_menu" class="nmenu">
<dt class="blind">네이버 메뉴</dt>
<dd class="f"><a href="http://mail.naver.com/" id="svc.mail" class="mn_mail"><span></span>메일</a></dd>
<dd><a href="http://cafe.naver.com/" id="svc.cafe" class="mn_cafe"><span></span>카페</a></dd>
<dd><a href="http://section.blog.naver.com/" id="svc.blog" class="mn_blog"><span></span>블로그</a></dd>
<dd><a href="http://kin.naver.com/" id="svc.kin" class="mn_kin"><span></span>지식iN</a></dd>
<dd><a href="http://shopping.naver.com/" id="svc.shopping" class="mn_shopping"><span></span>쇼핑</a></dd>
</dl>
<dl class="fmenu" id="fmenu">
<dt class="blind">자주 쓰는 메뉴</dt>
<dd class="f"><a href="http://dic.naver.com" onclick="clickcr(this,'svc.defaultservice','dic','',event);" title="사전" class="mn_dic"><span></span>사전</a></dd>
<dd><a href="http://news.naver.com" onclick="clickcr(this,'svc.defaultservice','news','',event);" title="뉴스" class="mn_news"><span></span>뉴스</a></dd>
<dd><a href="http://stock.naver.com" onclick="clickcr(this,'svc.defaultservice','stock','',event);" title="증권" class="mn_stock"><span></span>증권</a></dd>
<dd><a href="http://land.naver.com" onclick="clickcr(this,'svc.defaultservice','land','',event);" title="부동산" class="mn_land"><span></span>부동산</a></dd>
<dd><a href="http://map.naver.com" onclick="clickcr(this,'svc.defaultservice','map','',event);" title="지도" class="mn_map"><span></span>지도</a></dd>
<dd><a href="http://movie.naver.com" onclick="clickcr(this,'svc.defaultservice','movie','',event);" title="영화" class="mn_movie"><span></span>영화</a></dd>
<dd><a href="http://music.naver.com" onclick="clickcr(this,'svc.defaultservice','music','',event);" title="뮤직" class="mn_music"><span></span>뮤직</a></dd>
<dd><a href="http://book.naver.com" onclick="clickcr(this,'svc.defaultservice','book','',event);" title="책" class="mn_book"><span></span>책</a></dd>
<dd><a href="http://comic.naver.com" onclick="clickcr(this,'svc.defaultservice','comic','',event);" title="웹툰" class="mn_comic"><span></span>웹툰</a></dd>

</dl>
<div id="hmenu" class="hmenu">
<div id="new_service" class="hmenu_w">
<dl style="margin-top:0px">
<dt class="blind">신규 서비스</dt>
<dd><img src="http://img.naver.net/static/w9/blank.gif" alt="" width="16" height="16" class="post" /><a href="http://post.naver.com/" class="mn_post" title="포스트" onclick="clickcr(this,'svc.new','post','',event);"><span></span>포스트</a></dd>
<dd><img src="http://img.naver.net/static/w9/blank.gif" alt="" width="16" height="16" class="dodol" /><a href="http://dodol.naver.com:10080/recommendtheme/get.camp" class="mn_dodol" title="도돌런처" onclick="clickcr(this,'svc.new','dodol','',event);"><span></span>도돌런처</a></dd>
<dd><img src="http://img.naver.net/static/w9/blank.gif" alt="" width="16" height="16" class="band" /><a href="http://band.naver.com/" class="mn_band" title="밴드" onclick="clickcr(this,'svc.new','band','',event);"><span></span>밴드</a></dd>
<dd><img src="http://img.naver.net/static/w9/blank.gif" alt="" width="16" height="16" class="line" /><a href="http://line.naver.jp/ko/" class="mn_line" title="라인" onclick="clickcr(this,'svc.new','line','',event);"><span></span>라인</a></dd>
<dd><img src="http://img.naver.net/static/w9/blank.gif" alt="포스트" width="16" height="16" class="post" /><a href="http://post.naver.com/" class="mn_post" title="포스트" onclick="clickcr(this,'svc.new','post','',event);"><span></span>포스트</a></dd>
</dl>
</div>
<a href="#" id="svcmore_h" title="주요서비스 더보기" class="svcm"><span></span>더보기</a>
</div>
</div>
<div class="rankup">
<dl id="ranklist" class="ranklist">
<dt id="rankTitle">실시간 급상승 검색어</dt>
<dd>
<ol style="margin-top:0px;" id="realrank">
<li  value="1" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EB%B0%B0%EC%8A%AC%EA%B8%B0&amp;sm=top_lve&amp;ie=utf8" title="배슬기">배슬기<span class="tx">상승</span><span class="ic"></span><span class="rk">300</span></a></li>
<li  value="2" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%B2%AD%EC%B6%98%ED%95%99%EB%8B%B9&amp;sm=top_lve&amp;ie=utf8" title="청춘학당">청춘학당<span class="tx">상승</span><span class="ic"></span><span class="rk">441</span></a></li>
<li  value="3" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EB%A5%98%EC%8A%B9%EC%A3%BC&amp;sm=top_lve&amp;ie=utf8" title="류승주">류승주<span class="tx">상승</span><span class="ic"></span><span class="rk">810</span></a></li>
<li  value="4" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%A7%80%EC%BD%94&amp;sm=top_lve&amp;ie=utf8" title="지코">지코<span class="tx">상승</span><span class="ic"></span><span class="rk">141</span></a></li>
<li  value="5" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EB%A0%88%EC%9D%B4%EB%94%94%EC%A0%9C%EC%9D%B8&amp;sm=top_lve&amp;ie=utf8" title="레이디제인">레이디제인<span class="tx">상승</span><span class="ic"></span><span class="rk">225</span></a></li>
<li  value="6" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%ED%97%88%EC%A7%80%EC%9B%85&amp;sm=top_lve&amp;ie=utf8" title="허지웅">허지웅<span class="tx">상승</span><span class="ic"></span><span class="rk">102</span></a></li>
<li  value="7" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EB%82%98%EB%8A%94+%EB%82%A8%EC%9E%90%EB%8B%A4&amp;sm=top_lve&amp;ie=utf8" title="나는 남자다">나는 남자다<span class="tx">상승</span><span class="ic"></span><span class="rk">150</span></a></li>
<li  value="8" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EB%8D%98%ED%8C%8C%EC%A1%B0%EC%84%A0&amp;sm=top_lve&amp;ie=utf8" title="던파조선">던파조선<span class="tx">상승</span><span class="ic"></span><span class="rk">54</span></a></li>
<li  value="9" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=sm&amp;sm=top_lve&amp;ie=utf8" title="sm">sm<span class="tx">상승</span><span class="ic"></span><span class="rk">144</span></a></li>
<li  value="10" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%8C%88%EB%94%94&amp;sm=top_lve&amp;ie=utf8" title="쌈디">쌈디<span class="tx">상승</span><span class="ic"></span><span class="rk">231</span></a></li>
<li id="lastrank" value="1" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EB%B0%B0%EC%8A%AC%EA%B8%B0&amp;sm=top_lve&amp;ie=utf8" title="배슬기">배슬기<span class="tx">상승</span><span class="ic"></span><span class="rk">300</span></a></li>
</ol>
<noscript>
<form action="http://search.naver.com/search.naver">
<input type="hidden" name="where" value="nexearch" />
<select name="query">
<option value="배슬기">1위: 배슬기</option>
<option value="청춘학당">2위: 청춘학당</option>
<option value="류승주">3위: 류승주</option>
<option value="지코">4위: 지코</option>
<option value="레이디제인">5위: 레이디제인</option>
<option value="허지웅">6위: 허지웅</option>
<option value="나는 남자다">7위: 나는 남자다</option>
<option value="던파조선">8위: 던파조선</option>
<option value="sm">9위: sm</option>
<option value="쌈디">10위: 쌈디</option>
</select>
<input type="hidden" name="ie" value="utf8" />
<input type="submit" value="검색" />
</form>
</noscript>
</dd>
</dl>
</div>
</div>
</div>
<hr />
<div id="container">
<div id="column_left">
<div id="ad_top"><iframe id="f595100" name="f595100" src="http://nv1.ad.naver.com/adshow?unit=002AG&nrefreshx=0" title="광고" width="595" height="100" marginheight="0" marginwidth="0" scrolling="no" frameborder="0">광고 : <a href="http://nv1.ad.naver.com/adshow?unit=002AG&nrefreshx=0">http://nv1.ad.naver.com/adshow?unit=002AG&nrefreshx=0</a></iframe></div>
<div id="news_cast2" class="cast2">
<div class="newscast_top">
	<div class="cast_flash">
		<h3><a href="http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y">연합뉴스</a></h3>
		<div id="flash_news" class="cast_atc2">
			<ul>
<li><a href="http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006816401">이통3사 "불법보조금 중단"…출고가인하 추진</a></li>
			</ul>
		</div>
	</div>
	<ul class="cast_link">
<li><a href="http://news.naver.com/" onclick="clickcr(this, 'ncy.newshome', '', '', event)" style="color:#339900"><strong>네이버뉴스</strong></a></li><li>|<a href="http://news.naver.com/main/main.nhn?mode=LSD&amp;mid=shm&amp;sid1=106" onclick="clickcr(this, 'ncy.entertainment', '', '', event)">연예</a></li><li>|<a href="http://sports.news.naver.com/sports/new/main/index.nhn" onclick="clickcr(this, 'ncy.sports', '', '', event)">스포츠</a></li><li>|<a href="http://news.naver.com/main/main.nhn?mode=LSD&amp;mid=shm&amp;sid1=101" onclick="clickcr(this, 'ncy.economy', '', '', event)">경제</a></li><li>|<a href="http://newspaper.naver.com/home/index.nhn" onclick="clickcr(this, 'ncy.special2', '', '', event)"><strong>오늘의신문</strong></a></li>
	</ul>
</div>










<div class="cast_cnt">
		<div class="cast_cnt_top">
			<h2><a id="news_h" name="news_h" class="h_news" href="http://newsstand.naver.com/" target="_blank" onclick="clickcr(this,'nsd.title','','',event);"><span class="ir">뉴스스탠드</span></a></h2>
			<a href="http://newsstand.naver.com/config.html" class="newss_set" target="_blank" onclick="clickcr(this,'nsd.set','','',event);"><span class="ir">설정</span></a>

			<div class="newss_sort">
				<a href="#" class="on" onclick="clickcr(this,'nsd.all','','',event); return false;">전체언론사</a>
				<span class="bar">|</span>
				<a href="#"  onclick="clickcr(this,'nsd.my','','',event);return false;">MY뉴스</a>
			</div>

			<div class="cast_type2">

			

			
				<div class="nctg" data-mode="press" >
					<a href="#" class="btn_nctg" onclick="return false;">주요언론사</a>
					<ul class="cpress_lst hide">
						<li class="on"><a href="#ct1">주요언론사</a></li>
						<li><a href="#ct2">종합/경제</a></li>
						<li><a href="#ct3">방송/통신</a></li>
						<li><a href="#ct4">IT</a></li>
						<li><a href="#ct5">영자지</a></li>
						<li><a href="#ct6">스포츠/연예</a></li>
						<li><a href="#ct7">매거진/전문지</a></li>
						<li><a href="#ct8">지역</a></li>
					</ul>
				</div>
			</div>
			<div class="news_rectype" data-mode="my"  style="display:none">
				<h3><a href="#" onclick="return false;">구독목록</a></h3>
				<div class="ly_rectype" style="display:none">
					<div id="scroll9">
						<div class="scrollbar-box">
							<div class="scrollbar-content">
								<ul class="rectype_lst">
								</ul>
							</div>
						</div>
						<div class="scrollbar-v scrollbar-show">
							<div class="scrollbar-button-up rollover"></div>
							<div class="scrollbar-track" style="height:118px">
								<div class="scrollbar-thumb rollover" style="top:0;height:50px"><img src="http://static.naver.net/w9/blank.gif" width="1" height="1" alt="" class="scrollbar-thumb-body" style="height:48px"></div>
							</div>
							<div class="scrollbar-button-down rollover"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="cast2_article ">
		<div id="news_contents">
		
            <h3 class="blind">전체언론사</h3>
            <div class="newss_lst">
                <!-- [D] : 이동시 left값 -552px 씩 증가 -->
                <div class="newss" style="left:0">
                    <ul>
	            
<li id="NS_076"><a href="http://newsstand.naver.com/076" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2012/1116/nsd184717404.gif" width="77" height="77" alt="스포츠조선" /></a>
</li>
<li id="NS_008"><a href="http://newsstand.naver.com/008" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2013/0124/nsd113754824.gif" width="77" height="77" alt="머니투데이" /></a>
<a href="http://newspaper.naver.com/viewer/index.nhn?pressCode=0008" class="today" title="오늘의 신문 보기" target="_blank">오늘의 신문 보기</a></li>
<li id="NS_011"><a href="http://newsstand.naver.com/011" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2014/0227/nsd11417995.gif" width="77" height="77" alt="서울경제" /></a>
<a href="http://newspaper.naver.com/viewer/index.nhn?pressCode=0011" class="today" title="오늘의 신문 보기" target="_blank">오늘의 신문 보기</a></li>
<li id="NS_314"><a href="http://newsstand.naver.com/314" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2013/0409/nsd16247594.gif" width="77" height="77" alt="스포츠동아" /></a>
</li>
<li id="NS_241"><a href="http://newsstand.naver.com/241" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2012/1205/nsd113052387.gif" width="77" height="77" alt="일간스포츠" /></a>
</li>
<li id="NS_022"><a href="http://newsstand.naver.com/022" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2013/1105/nsd7532429.gif" width="77" height="77" alt="세계일보" /></a>
<a href="http://newspaper.naver.com/viewer/index.nhn?pressCode=0022" class="today" title="오늘의 신문 보기" target="_blank">오늘의 신문 보기</a></li>
<li id="NS_032"><a href="http://newsstand.naver.com/032" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2014/0214/nsd11532521.gif" width="77" height="77" alt="경향신문" /></a>
</li>
<li id="NS_038"><a href="http://newsstand.naver.com/038" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2014/0220/nsd16422362.gif" width="77" height="77" alt="한국일보" /></a>
<a href="http://newspaper.naver.com/viewer/index.nhn?pressCode=0038" class="today" title="오늘의 신문 보기" target="_blank">오늘의 신문 보기</a></li>
<li id="NS_005"><a href="http://newsstand.naver.com/005" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2012/1119/nsd113224489.gif" width="77" height="77" alt="국민일보" /></a>
<a href="http://newspaper.naver.com/viewer/index.nhn?pressCode=0005" class="today" title="오늘의 신문 보기" target="_blank">오늘의 신문 보기</a></li>
<li id="NS_214"><a href="http://newsstand.naver.com/214" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2013/0531/nsd104440562.gif" width="77" height="77" alt="MBC" /></a>
</li>
<li id="NS_139"><a href="http://newsstand.naver.com/139" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2012/1118/nsd16579942.gif" width="77" height="77" alt="스포탈코리아" /></a>
</li>
<li id="NS_117"><a href="http://newsstand.naver.com/117" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2012/1119/nsd113852954.gif" width="77" height="77" alt="마이데일리" /></a>
</li>

                    </ul>
                </div>
            </div>
        
		</div>

        
            <a href="http://news.naver.com/nboard2/read/1000003472/10000000000029751472" target="_blank" class="mm_noti">[공지] MY뉴스 설정하고 네이버 홈에서 기사를 바로 확인하세요</a>
        			
			
			<div class="cpg nss_pg" data-mode="press" >
				<span>
				<span></span>
				</span>
				<a href="#ns_prev" class="pre" title="이전페이지" onclick="return false;">이전페이지</a><a href="#ns_next" class="next" title="다음페이지">다음페이지</a>
			</div>

			<div class="cpg nss_pg" data-mode="my"  style="display:none">
				<span>
				<span></span>
				</span>
				<a href="#ns_prev" class="pre" title="이전페이지" onclick="return false;">이전페이지</a><a href="#ns_next" class="next" title="다음페이지">다음페이지</a>
			</div>

		</div>
	</div>
</div>

<!-- EMPTY TEMPLATE -->
<!--ERROR in nvrandom : cannot read the file : center_banner.html.09-->
<!--NONE-->
<div id="open_cast" class="opcast">
<div class="opcast_cnt">
<h2><a href="http://opencast.naver.com/" id="open_h" name="open_h" class="h_open"><span class="ir">오픈캐스트</span></a></h2>
<!-- Opencast Type -->
<ul class="opcast_type">
<li class="on"><a href="#S1">종합</a></li>
<li><a href="#S10">라이프/취미</a></li>
<li><a href="#S20">문화/엔터</a></li>
<li><a href="#S30">IT/비즈/학습</a></li>
<li><a href="#S40">여행</a></li>
<li><a href="#S50">요리</a></li>
<li>
<a href="#S99">MY캐스트</a>
<div class="ly_oc" style="display:none"></div>
</li>
</ul>
<!-- //Opencast Type -->
<!-- Opencast Recommand Type -->
<!-- [D] : 열렸을경우 opcast_rectype_open 추가 -->
<div class="opcast_rectype">
<!-- [D] : span에 상단에서 선택한 분류 삽입 -->
<h3>
<a href="#" id="op_list_on"><span class="blind">전체</span> 캐스트목록</a>
<span class="no_type" style="display:none" id="op_list_off"><span class="blind">전체</span> 캐스트목록<span class="blind">이 없습니다.</span></span>
</h3>
<!-- [D] : display:none,block 으로 제어 -->
<div class="ly_rectype" style="display:none">
<!-- Jindo Scroll : scroll7 -->
<div id="scroll7" class="">
<div class="scrollbar-box">
<div class="scrollbar-content" style="top: 0px;">
<ul class="rectype_lst">
</ul>
</div>
</div>
<div class="scrollbar-v scrollbar-show">
<div class="scrollbar-button-up rollover"></div>
<div class="scrollbar-track rollover" style="height:118px">
<div class="scrollbar-thumb rollover" style="top: 0px; height: 50px;"><img src="http://img.naver.net/static/w9/blank.gif" width="1" height="1" alt="" class="scrollbar-thumb-body" style="height:48px" /></div>
</div>
<div class="scrollbar-button-down rollover"></div>
</div>
</div>
<!-- //Jindo Scroll : scroll7 -->
</div>
</div>
<!-- //Opencast Recommand Type -->
<div id="opencast_contents">
<!-- Opencast Article -->

<div class="opcast_article">
<h4><a href="http://opencast.naver.com/CU399/1975"><span class="blind">감성지수 36.5 -</span> 감수성을 쌓고 싶은 그대에게 <em>No.1975</em></a></h4>
<div class="opatc_cnt">
<p class="th">
<a href="http://photo.naver.com/view/2014031819013028916" class="th_a" target="_blank">
<img src="http://img.naver.net/thumb.opencast/opencast01/n/a/naver_story/20140319/17155288710791.jpg?type=f10060" width="100" height="60" alt="[포토] 사랑의 큐피트" title="[포토] 사랑의 큐피트" />
<span class="th_tit">[포토] 사랑의 큐피트</span>
</a>
</p>
<ul class="txt_lst">
<li><a href="http://music.naver.com/promotion/specialContent.nhn?articleId=4684" target="_blank">인어공주로 변신! 발랄한 그룹 '오렌지캬라멜' MV 촬영장</a></li>
<li><a href="http://movie.naver.com/movie/mzine/cstory.nhn?nid=1977" target="_blank">10주차 북미 박스오피스 1위 데뷔 영화 '300 : 제국의 부활'</a></li>
<li><a href="http://navercast.naver.com/magazine_contents.nhn?rid=1439&attrId=&contents_id=51043&leafId=1082" target="_blank">전통의 현대화, 디자이너 '카를 라거펠트'의 오페라 의상</a></li>
<li><a href="http://newslibrary.naver.com/viewer/index.nhn?articleId=1999021100289115006&editNo=5&printCount=1&publishDate=1999-02-11&officeId=00028&pageNo=15&printNo=3424&publishType=00010" target="_blank">1999년, 어머니를 노래하던 신인 힙합그룹 '지오디' 첫 앨범</a></li>
</ul>
</div>
<div class="opcast_alert opcast_alert2" style="display:none"></div>
</div>
<div class="opcast_set">
<h3 class="blind">구독설정</h3>
<p class="os_tit">
<a href="http://opencast.naver.com/CU399"><strong title="감성지수 36.5">감성지수 36.5</strong><br /><em>88,352</em>명 구독</a>
</p>
<div class="os_act">
<a href="http://opencast.naver.com/CU399?action=subscribe&from=nhome" title="구독하기" class="btn_subs" onclick="clickcr(this,'occ.subscribe','','',event,1);return OpenCast.subscribe('CU399')">구독하기</a>
</div>
<div class="ly_subs" style="display:none"></div>
</div>

<!-- //Opencast Article -->
<!-- Opencast Paging -->
<div class="cpg opcast_pg">
<span></span>
<a href="#" class="pre" title="이전 오프캐스트">이전 오픈캐스트</a><a href="#" class="next" title="다음 오픈캐스트">다음 오픈캐스트</a>
</div>
<!-- //Opencast Paging -->
</div>
<div class="opcast_alert" style="display:none"></div>
</div>
</div>
<div id="themecast" class="cast3">
<h2 class="blind">주제형캐스트</h2>
<div id="themecast_cate" class="s_cate">
 <span class="tcb_lif"><a href="#tcb_lif"><span class="ir">라이프</span></a></span> <span class="tcb_spo"><a href="#tcb_spo"><span class="ir">스포츠</span></a></span> <span class="tcb_ecn"><a href="#tcb_ecn"><span class="ir">경제</span></a></span> <span class="tcb_msc"><a href="#tcb_msc"><span class="ir">뮤직</span></a></span> <span class="tcb_mov"><a href="#tcb_mov"><span class="ir">영화</span></a></span> <span class="tcb_cmc"><a href="#tcb_cmc"><span class="ir">웹툰</span></a></span> <span class="tcb_fun"><a href="#tcb_fun" class="on"><span class="ir">FUN</span></a></span> <span class="tcb_bok"><a href="#tcb_bok"><span class="ir">책</span></a></span> <span class="tcb_ncs"><a href="#tcb_ncs"><span class="ir">네이버캐스트</span></a></span> <span class="tcb_ato"><a href="#tcb_ato"><span class="ir">자동차/테크</span></a></span> <span class="tcb_gam"><a href="#tcb_gam"><span class="ir">게임</span></a></span> <span class="tcb_pub"><a href="#tcb_pub"><span class="ir">공익/나눔</span></a></span> 
<span class="tcb_end"></span>
</div>
<div id="rolling" class="rolling">

<div class="s_article">
<h3 class="blind">fun</h3>

<div class="cast_cnts headline fl">
<ul class="tc_photo">
<li>
<a href="http://tvcast.naver.com/v/134938" onclick="clickcr(this,'tcb_fun.content','7802D801_000000020E41','', event);">
<img src="http://img.naver.net/static/www/up/2014/0319/mat_132913940t.jpg" width="255" height="174" alt="손승연" class="thmb" />
<strong>&#039;렛잇고&#039; 커버  대회, 1R 통과
</strong>
<span class="cont">&#039;보코&#039; 우승자 &#039;손승연&#039;, 해외에서 TOP 20
</span>
<span class="mask"></span>
<span class="mask_bd"></span>
</a>
</li>
</ul>
</div>

<div class="cast_cnts fr">
<ul class="tc_theme tc_theme2">
<li class="p">
<a href="http://tvcast.naver.com/v/134926" onclick="clickcr(this,'tcb_fun.content','7802D801_000000020D9E','', event);">
<img src="http://img.naver.net/static/www/up/2014/0319/mat_151326873t.jpg" width="120" height="80" alt="GOT7" />
<strong>GOT7. 팀워크 미션 중
<br />&#039;종이 놓치면 큰일나&#039;
</strong>
<span class="cont">[JYPnation]
</span>
<span class="mask_bd"></span>
</a>
</li>
<li class="p">
<a href="http://tvcast.naver.com/v/131624" onclick="clickcr(this,'tcb_fun.content','7802D801_000000020D9F','', event);">
<img src="http://img.naver.net/static/www/up/2014/0317/mat_183410569t.jpg" width="120" height="80" alt="딩동댕" />
<strong>내 노래 알아줄 사람?
<br />&#039;딩동댕&#039;에서 찾아요
</strong>
<span class="cont">[땡 아니면 딩동댕]
</span>
<span class="mask_bd"></span>
</a>
</li>
</ul>
</div>

<div class="cast_cnts fl">
<h4>
<a href="http://tvcast.naver.com/familytalk" onclick="clickcr(this,'tcb_fun.title','','',event)">
<img src="http://img.naver.net/static/www/up/2014/0319/mat_17543711.gif" height="12" alt="유자식 상팔자" />
</a>
</h4>
<ul class="tc_thmb">
<li class="f">
<p>
<a href="http://tvcast.naver.com/v/135022" onclick="clickcr(this,'tcb_fun.content','7802D801_000000020E13','', event);">
<img src="http://img.naver.net/static/www/up/2014/0319/mat_171614972t.jpg" width="120" height="80" alt="유자식상팔자1" />
<strong>&#039;전 재산을 다 날려도
<br />사랑할 수 있는거지?&#039;
</strong>
<span class="cont">&#039;경실&#039;의 집요한 질문 세례
</span>
<span class="mask_bd"></span>
</a>
</p>
</li>
<li >
<p>
<a href="http://tvcast.naver.com/v/135024" onclick="clickcr(this,'tcb_fun.content','7802D801_000000020E14','', event);">
<img src="http://img.naver.net/static/www/up/2014/0319/mat_172946164t.jpg" width="120" height="80" alt="유자식상팔자2" />
<strong>집에서 심심할 때?
<br />아빠랑 단둘이 있을 때
</strong>
<span class="cont">아빠의 장난이 이제 귀찮아
</span>
<span class="mask_bd"></span>
</a>
</p>
</li>
</ul>
</div>

<div class="cast_cnts fr">
<h4>
<a href="http://tvcast.naver.com/coolkidz" onclick="clickcr(this,'tcb_fun.title','','',event)">
<img src="http://img.naver.net/static/www/up/2014/0304/mat_17531811.gif" height="12" alt="우리동네 예체능" />
</a>
</h4>
<ul class="tc_thmb">
<li class="f">
<p>
<a href="http://tvcast.naver.com/v/134942" onclick="clickcr(this,'tcb_fun.content','7802D801_000000020E29','', event);">
<img src="http://img.naver.net/static/www/up/2014/0319/mat_173738742t.jpg" width="120" height="80" alt="예체능" />
<strong>8살 &#039;현제&#039;의 첫 시합
<br />&#039;사나이는 울지 않아&#039;
</strong>
<span class="cont">귀여운 꼬마들의 시합
</span>
<span class="mask_bd"></span>
</a>
</p>
</li>
<li >
<p>
<a href="http://tvcast.naver.com/v/134943" onclick="clickcr(this,'tcb_fun.content','7802D801_000000020E2A','', event);">
<img src="http://img.naver.net/static/www/up/2014/0319/mat_114812687t.jpg" width="120" height="80" alt="예체능" />
<strong>&#039;금메달리스트&#039;가 왔다
<br />과연 &#039;호동&#039;의 운명은?
</strong>
<span class="cont">시작하자마자 뒷걸음질
</span>
<span class="mask_bd"></span>
</a>
</p>
</li>
</ul>
</div>

<div class="go_svc" >
<dl >
<dt>
<img src="http://img.naver.net/static/www/cast_moreview.png" width="62" height="13" alt="주제별 더보기" />
</dt>
<dd class="f">
<a href="http://tvcast.naver.com/" onclick="clickcr(this,'tcb_fun.link','tvcast','',event)">TV캐스트 홈 </a>
</dd>
<dd >
<a href="http://search.naver.com/search.naver?sm=tab_hty.top&amp;where=nexearch&amp;ie=utf8&amp;query=TV+%ED%8E%B8%EC%84%B1%ED%91%9C&amp;x=0&amp;y=0" onclick="clickcr(this,'tcb_fun.link','tv table','',event)">TV 편성표</a>
</dd>
<dd >
<a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%8B%9C%EC%B2%AD%EB%A5%A0&amp;sm=top_hty&amp;fbm=0&amp;ie=utf8" onclick="clickcr(this,'tcb_fun.link','tv raking ','',event)">시청률 순위</a>
</dd>
<dd >
<a href="http://news.naver.com/main/list.nhn?mode=LS2D&amp;mid=shm&amp;sid1=106&amp;sid2=225" onclick="clickcr(this,'tcb_fun.link','drama','',event)">드라마 뉴스 </a>
</dd>
<dd >
<a href="http://news.naver.com/main/list.nhn?mode=LS2D&amp;mid=shm&amp;sid1=106&amp;sid2=224" onclick="clickcr(this,'tcb_fun.link','tv','',event)">방송 TV 뉴스 </a>
</dd>
<dd >
<a href="http://nstore.naver.com/home/tvstore.nhn?serviceTypeCode=BROAD" onclick="clickcr(this,'tcb_fun.link','tv download','',event)">방송 다운로드 </a>
</dd>
</dl>
</div>
</div>

</div>
<div class="cast_set_btn"><a href="#" title="선호주제설정"><span></span>선호주제설정</a></div>
<div class="cast_set" style="display:none"></div>
<div id="themecast_page" class="cpg nv_pg">
<span></span>
<a href="#" class="pre" title="이전 주제형캐스트">이전 주제형캐스트</a><a href="#" class="next" title="다음 주제형캐스트">다음 주제형캐스트</a>
</div>
</div>
<div id="svcmore" class="svcmore hide"></div>
</div>
<div id="column_right">

<div id="account">
<h2 class="blind"><a href="#account_h" id="account_h" name="account_h">로그인</a></h2>
<div class="login">
<iframe id="loginframe" name="loginframe" tabindex="4" src="http://static.nid.naver.com/login.nhn?svc=me&amp;url=http%3A%2F%2Fwww.naver.com&amp;t=20120425" title="로그인" width="280" height="99" marginheight="0" marginwidth="0" scrolling="no" frameborder="0">로그인: <a href="http://static.nid.naver.com/loginbox.nhn">http://static.nid.naver.com/loginbox.nhn</a></iframe>
</div>

</div>


<div id="ie55" style="display:none;"></div>
<div id="ad_branding_hide"></div>
<div id="time_square">
<h2 class="blind"><a href="#time_h" id="time_h" name="time_h">타임스퀘어</a></h2>

<div class="tsq">
<h3 class="tsq_h">투데이</h3>
<div class="tsq_status">
<a href="http://calendar.naver.com" class="date" onclick="clickcr(this,'squ.date','','',event);" title="캘린더이동"><em>03.20.</em>(목)</a>
<span class="bar">|</span>
<a href="#" id="ts_region" class="qdown">
<span class="blind">현재 위치</span>
<strong>국내<span class="dep2"> &gt; </span>서울</strong>
<span class="blind">지역설정 레이어 열기</span>
</a>
</div>
<div id="ws_tsq" class="tsq_slide">
<h4 class="blind">생활</h4>
<div class="tsq_life_wrap">
<div class="tsq_weather">
<a data-name="서울"  onclick="clickcr(this,'squ.sweather','','',event)" href="http://weather.naver.com/rgn/townWetr.nhn?naverRgnCd=09140104" class="tw_a" title="날씨페이지로 이동">
<span class="to">
<span class="tw_box">
<strong class="tw_tit">현재</strong>
<span class="deg"><em>9.0</em>℃</span>
<span class="tsq_wtb tsq_wtb2" title="구름조금">구름조금</span>
</span>
</span>
<span class="ym">
<span class="tw_box">
<strong class="tw_tit">내일오전</strong>
<span class="deg"><em>1.0</em>℃</span>
<span class="tsq_wtb tsq_wtb2" title="구름조금">구름조금</span>
</span>
</span>
<span class="ya">
<span class="tw_box">
<strong class="tw_tit">내일오후</strong>
<span class="deg"><em>12.0</em>℃</span>
<span class="tsq_wtb tsq_wtb1" title="맑음">맑음</span>
</span>
</span>
</a>
<a data-name="춘천" style="display:none" onclick="clickcr(this,'squ.sweather','','',event)" href="http://weather.naver.com/rgn/townWetr.nhn?naverRgnCd=01110675" class="tw_a" title="날씨페이지로 이동">
<span class="to">
<span class="tw_box">
<strong class="tw_tit">현재</strong>
<span class="deg"><em>9.2</em>℃</span>
<span class="tsq_wtb tsq_wtb3" title="흐림">흐림</span>
</span>
</span>
<span class="ym">
<span class="tw_box">
<strong class="tw_tit">내일오전</strong>
<span class="deg"><em>-2.0</em>℃</span>
<span class="tsq_wtb tsq_wtb2" title="구름조금">구름조금</span>
</span>
</span>
<span class="ya">
<span class="tw_box">
<strong class="tw_tit">내일오후</strong>
<span class="deg"><em>10.0</em>℃</span>
<span class="tsq_wtb tsq_wtb1" title="맑음">맑음</span>
</span>
</span>
</a>
<a data-name="강릉" style="display:none" onclick="clickcr(this,'squ.sweather','','',event)" href="http://weather.naver.com/rgn/townWetr.nhn?naverRgnCd=01150615" class="tw_a" title="날씨페이지로 이동">
<span class="to">
<span class="tw_box">
<strong class="tw_tit">현재</strong>
<span class="deg"><em>4.4</em>℃</span>
<span class="tsq_wtb tsq_wtb4" title="비">비</span>
</span>
</span>
<span class="ym">
<span class="tw_box">
<strong class="tw_tit">내일오전</strong>
<span class="deg"><em>1.0</em>℃</span>
<span class="tsq_wtb tsq_wtb21" title="구름많음">구름많음</span>
</span>
</span>
<span class="ya">
<span class="tw_box">
<strong class="tw_tit">내일오후</strong>
<span class="deg"><em>9.0</em>℃</span>
<span class="tsq_wtb tsq_wtb2" title="구름조금">구름조금</span>
</span>
</span>
</a>
<a data-name="청주" style="display:none" onclick="clickcr(this,'squ.sweather','','',event)" href="http://weather.naver.com/rgn/townWetr.nhn?naverRgnCd=16111120" class="tw_a" title="날씨페이지로 이동">
<span class="to">
<span class="tw_box">
<strong class="tw_tit">현재</strong>
<span class="deg"><em>7.5</em>℃</span>
<span class="tsq_wtb tsq_wtb4" title="비">비</span>
</span>
</span>
<span class="ym">
<span class="tw_box">
<strong class="tw_tit">내일오전</strong>
<span class="deg"><em>2.0</em>℃</span>
<span class="tsq_wtb tsq_wtb2" title="구름조금">구름조금</span>
</span>
</span>
<span class="ya">
<span class="tw_box">
<strong class="tw_tit">내일오후</strong>
<span class="deg"><em>12.0</em>℃</span>
<span class="tsq_wtb tsq_wtb1" title="맑음">맑음</span>
</span>
</span>
</a>
<a data-name="대전" style="display:none" onclick="clickcr(this,'squ.sweather','','',event)" href="http://weather.naver.com/rgn/townWetr.nhn?naverRgnCd=07110101" class="tw_a" title="날씨페이지로 이동">
<span class="to">
<span class="tw_box">
<strong class="tw_tit">현재</strong>
<span class="deg"><em>6.3</em>℃</span>
<span class="tsq_wtb tsq_wtb21" title="구름많음">구름많음</span>
</span>
</span>
<span class="ym">
<span class="tw_box">
<strong class="tw_tit">내일오전</strong>
<span class="deg"><em>1.0</em>℃</span>
<span class="tsq_wtb tsq_wtb2" title="구름조금">구름조금</span>
</span>
</span>
<span class="ya">
<span class="tw_box">
<strong class="tw_tit">내일오후</strong>
<span class="deg"><em>12.0</em>℃</span>
<span class="tsq_wtb tsq_wtb1" title="맑음">맑음</span>
</span>
</span>
</a>
<a data-name="대구" style="display:none" onclick="clickcr(this,'squ.sweather','','',event)" href="http://weather.naver.com/rgn/townWetr.nhn?naverRgnCd=06110101" class="tw_a" title="날씨페이지로 이동">
<span class="to">
<span class="tw_box">
<strong class="tw_tit">현재</strong>
<span class="deg"><em>8.1</em>℃</span>
<span class="tsq_wtb tsq_wtb3" title="흐림">흐림</span>
</span>
</span>
<span class="ym">
<span class="tw_box">
<strong class="tw_tit">내일오전</strong>
<span class="deg"><em>3.0</em>℃</span>
<span class="tsq_wtb tsq_wtb2" title="구름조금">구름조금</span>
</span>
</span>
<span class="ya">
<span class="tw_box">
<strong class="tw_tit">내일오후</strong>
<span class="deg"><em>14.0</em>℃</span>
<span class="tsq_wtb tsq_wtb1" title="맑음">맑음</span>
</span>
</span>
</a>
<a data-name="부산" style="display:none" onclick="clickcr(this,'squ.sweather','','',event)" href="http://weather.naver.com/rgn/townWetr.nhn?naverRgnCd=08110580" class="tw_a" title="날씨페이지로 이동">
<span class="to">
<span class="tw_box">
<strong class="tw_tit">현재</strong>
<span class="deg"><em>7.4</em>℃</span>
<span class="tsq_wtb tsq_wtb3" title="흐림">흐림</span>
</span>
</span>
<span class="ym">
<span class="tw_box">
<strong class="tw_tit">내일오전</strong>
<span class="deg"><em>4.0</em>℃</span>
<span class="tsq_wtb tsq_wtb2" title="구름조금">구름조금</span>
</span>
</span>
<span class="ya">
<span class="tw_box">
<strong class="tw_tit">내일오후</strong>
<span class="deg"><em>13.0</em>℃</span>
<span class="tsq_wtb tsq_wtb2" title="구름조금">구름조금</span>
</span>
</span>
</a>
<a data-name="전주" style="display:none" onclick="clickcr(this,'squ.sweather','','',event)" href="http://weather.naver.com/rgn/townWetr.nhn?naverRgnCd=13113135" class="tw_a" title="날씨페이지로 이동">
<span class="to">
<span class="tw_box">
<strong class="tw_tit">현재</strong>
<span class="deg"><em>7.3</em>℃</span>
<span class="tsq_wtb tsq_wtb3" title="흐림">흐림</span>
</span>
</span>
<span class="ym">
<span class="tw_box">
<strong class="tw_tit">내일오전</strong>
<span class="deg"><em>2.0</em>℃</span>
<span class="tsq_wtb tsq_wtb1" title="맑음">맑음</span>
</span>
</span>
<span class="ya">
<span class="tw_box">
<strong class="tw_tit">내일오후</strong>
<span class="deg"><em>12.0</em>℃</span>
<span class="tsq_wtb tsq_wtb1" title="맑음">맑음</span>
</span>
</span>
</a>
<a data-name="광주" style="display:none" onclick="clickcr(this,'squ.sweather','','',event)" href="http://weather.naver.com/rgn/townWetr.nhn?naverRgnCd=05110101" class="tw_a" title="날씨페이지로 이동">
<span class="to">
<span class="tw_box">
<strong class="tw_tit">현재</strong>
<span class="deg"><em>9.1</em>℃</span>
<span class="tsq_wtb tsq_wtb21" title="구름많음">구름많음</span>
</span>
</span>
<span class="ym">
<span class="tw_box">
<strong class="tw_tit">내일오전</strong>
<span class="deg"><em>3.0</em>℃</span>
<span class="tsq_wtb tsq_wtb1" title="맑음">맑음</span>
</span>
</span>
<span class="ya">
<span class="tw_box">
<strong class="tw_tit">내일오후</strong>
<span class="deg"><em>11.0</em>℃</span>
<span class="tsq_wtb tsq_wtb1" title="맑음">맑음</span>
</span>
</span>
</a>
<a data-name="제주" style="display:none" onclick="clickcr(this,'squ.sweather','','',event)" href="http://weather.naver.com/rgn/townWetr.nhn?naverRgnCd=14130116" class="tw_a" title="날씨페이지로 이동">
<span class="to">
<span class="tw_box">
<strong class="tw_tit">현재</strong>
<span class="deg"><em>12.6</em>℃</span>
<span class="tsq_wtb tsq_wtb21" title="구름많음">구름많음</span>
</span>
</span>
<span class="ym">
<span class="tw_box">
<strong class="tw_tit">내일오전</strong>
<span class="deg"><em>5.0</em>℃</span>
<span class="tsq_wtb tsq_wtb1" title="맑음">맑음</span>
</span>
</span>
<span class="ya">
<span class="tw_box">
<strong class="tw_tit">내일오후</strong>
<span class="deg"><em>13.0</em>℃</span>
<span class="tsq_wtb tsq_wtb1" title="맑음">맑음</span>
</span>
</span>
</a>
<a data-name="백령" style="display:none" onclick="clickcr(this,'squ.sweather','','',event)" href="http://weather.naver.com/rgn/townWetr.nhn?naverRgnCd=11720330" class="tw_a" title="날씨페이지로 이동">
<span class="to">
<span class="tw_box">
<strong class="tw_tit">현재</strong>
<span class="deg"><em>5.4</em>℃</span>
<span class="tsq_wtb tsq_wtb1" title="맑음">맑음</span>
</span>
</span>
<span class="ym">
<span class="tw_box">
<strong class="tw_tit">내일오전</strong>
<span class="deg"><em>2.0</em>℃</span>
<span class="tsq_wtb tsq_wtb1" title="맑음">맑음</span>
</span>
</span>
<span class="ya">
<span class="tw_box">
<strong class="tw_tit">내일오후</strong>
<span class="deg"><em>8.0</em>℃</span>
<span class="tsq_wtb tsq_wtb1" title="맑음">맑음</span>
</span>
</span>
</a>
<a data-name="울릉/독도" style="display:none" onclick="clickcr(this,'squ.sweather','','',event)" href="http://weather.naver.com/rgn/townWetr.nhn?naverRgnCd=04940320" class="tw_a" title="날씨페이지로 이동">
<span class="to">
<span class="tw_box">
<strong class="tw_tit">현재</strong>
<span class="deg"><em>5.8</em>℃</span>
<span class="tsq_wtb tsq_wtb4" title="비">비</span>
</span>
</span>
<span class="ym">
<span class="tw_box">
<strong class="tw_tit">내일오전</strong>
<span class="deg"><em>2.0</em>℃</span>
<span class="tsq_wtb tsq_wtb6" title="흐리고 한때 비/눈 곳">흐리고 한때 비/눈 곳</span>
</span>
</span>
<span class="ya">
<span class="tw_box">
<strong class="tw_tit">내일오후</strong>
<span class="deg"><em>5.0</em>℃</span>
<span class="tsq_wtb tsq_wtb2" title="구름조금">구름조금</span>
</span>
</span>
</a>
</div>
<ul class="tsq_list">
<li>
<a href="http://weather.naver.com/" onclick="clickcr(this, 'squ.theme','78005501_0000000C9890', '', event)"  class="tit">날씨</a>
<a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%98%A4%EB%8A%98%EB%82%A0%EC%94%A8&amp;sm=top_tsi" onclick="clickcr(this, 'squ.text','78005501_0000000C988F', '', event)"  title="곳곳 비바람···강원 대설">곳곳 비바람···강원 대설</a>
<span class="bar">|</span>
<a href="http://weather.naver.com/period/weeklyFcast.nhn" onclick="clickcr(this, 'squ.text','78005501_0000000C9891', '', event)"  title="주간 예보">주간 예보</a>
</li>
<li>
<a href="http://search.naver.com/search.naver?sm=top_tsi&amp;where=nexearch&amp;ie=utf8&amp;query=%ED%96%89%EC%82%AC" onclick="clickcr(this, 'squ.theme','78005501_0000000C9893', '', event)"  class="tit">행사</a>
<a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%C7%F6%C0%E7%BB%F3%BF%B5%BF%B5%C8%AD&amp;sm=top_tsi" onclick="clickcr(this, 'squ.text','78005501_0000000C9892', '', event)"  title="현재 상영 영화">현재 상영 영화</a>
<span class="bar">|</span>
<a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%8A%A4%ED%8F%AC%EC%B8%A0+%EA%B2%BD%EA%B8%B0%EC%9D%BC%EC%A0%95&amp;sm=top_tsi" onclick="clickcr(this, 'squ.text','78005501_0000000C9894', '', event)"  title="스포츠 주요 경기 일정">스포츠 주요 경기 일정</a>
</li></ul>
</div>
</div>
<div class="cpg timesquare_pg">
<span><strong>2</strong>/3</span>
<a href="#" class="pre" title="이전 타임스퀘어">이전 타임스퀘어</a><a href="#" class="next" title="다음 타임스퀘어">다음 타임스퀘어</a>
</div>
<div class="tsq_wg">
<a href="#" class="tsq_wg_open" onclick="clickcr(this,'tsw.open','','',event);TimeSquare.Wiget.open();return false;">생활위젯 레이어 열기</a>
<div class="ly_tsq_wg" style="display:none"></div>
</div>
</div>
</div>
<div id="ad_branding">
<iframe id="f280150" name="f280150" src="http://nv2.ad.naver.com/adshow?unit=002AK&nrefreshx=0" title="광고" width="280" height="150" marginheight="0" marginwidth="0" scrolling="no" frameborder="0">광고 : <a href="http://nv2.ad.naver.com/adshow?unit=002AK&nrefreshx=0">http://nv2.ad.naver.com/adshow?unit=002AK&nrefreshx=0</a></iframe>
</div>





<iframe src="http://castbox.shopping.naver.com/index.nhn" id="shop_cast" class="shop_cast" title="쇼핑캐스트" width="280" height="483" marginheight="0" marginwidth="0" scrolling="no" frameborder="0">쇼핑캐스트 : <a href="(none)">(none)</a></iframe>

<div id="marketing_v2">
<h2 class="blind"><a href="#marketing_h" id="marketing_h" name="marketing_h">마케팅 센터</a></h2>
<ul>
<li><a href="http://camera.line.me/ko" onclick="clickcr(this, 'mob*i.bigbanner','78030F01_0000000C98FB', '', event)" target="_blank"><img src="http://img.naver.net/static/www/u/2014/0319/nmms_193338673.png" width="280" height="197" alt="여러장을 한 장에! 어마무시 9장까지?! 라인 카메라" /></a></li>
</ul>
</div>
</div>
</div>
<hr />
<div id="footer">
<dl class="notice">
<dt><a href="/NOTICE" class="h_notice"><span class="ir">공지사항</span></a></dt>

<dd><a href="http://www.naver.com/NOTICE/read/1100001014/10000000000029772847" onclick="clickcr(this, 'ntc.notice','78011B01_0000000C8801', '', event)" >네이버 윙버스 서비스 종료 안내</a></dd>

</dl>
<p class="svc_all">
<a href="more.html" id="ntc.svcmap" class="h_site"><span class="ir">서비스 전체보기</span></a>
</p>
<dl class="policy">
<dt class="blind">네이버 정책 및 약관</dt>
<dd class="f"><a href="http://www.navercorp.com/" target="_blank" id="plc.intronhn">회사소개</a></dd>
<dd><a href="http://mktg.naver.com/marketing_center.html" id="plc.adinfo">광고</a></dd>
<dd><a href="https://submit.naver.com/" id="plc.search">검색등록</a></dd>
<dd><a href="https://www.navercorp.com/ko/company/proposalGuide.nhn" target="_blank" id="plc.contact">제휴제안</a></dd>
<dd><a href="rules/service.html" id="plc.service">이용약관</a></dd>
<dd><a href="rules/privacy.html" id="plc.privacy"><strong>개인정보취급방침</strong></a></dd>
<dd><a href="rules/youthpolicy.html" id="plc.youth">청소년보호정책</a></dd>
<dd><a href="rules/spamcheck.html" id="plc.policy">네이버 정책</a></dd>
<dd><a href="https://help.naver.com/" id="plc.helpcenter">네이버도움말</a></dd>
</dl>
<address>&copy; <strong><a href="http://www.navercorp.com/" target="_blank">NAVER Corp.</a></strong></address>
</div>
</div>
<div id="dim" style="display:none;"></div>
<script type="text/javascript">
//<![CDATA[
function stripOutCommentBlock(str) {
return str.replace(/\/\*/, '').replace(/\*\//, '').replace(/var(.+)=/gi , '$1=');
}
function loadModule(id) {
var codeElement = document.getElementById(id),
code = codeElement.innerHTML;
eval(stripOutCommentBlock(code));
}
var isOnload = false;
var ntop1 = "/js/c/ntop1_20140306.min.js";
var ntop2 = "/js/c/ntop2_20140313.min.js";
var ntop3 = "/js/c/ntop3_20140206.min.js";
DLScript.loadWS("/js/c/jindo.all.2013030601.min.js");
DLScript.loadWS(ntop1); DLScript.loadWS(ntop2); DLScript.loadWS(ntop3);
function loadJS() {
if(!isOnload) {
isOnload = true;
ready1();
ready2();
ready3();
}
}
function dlerr(msg,id) {
if(id){var q=DLScript.quSXI[id];var s=(q)?q.response:"";var l=s.length;var msg="data : "+s.substring(l-30)+"("+l+")";}
JEagleEyeClient.sendError("[DL] "+msg+" retry",{message: msg});
}
function ready1() {
if(typeof CommonFn == 'undefined') {
DLScript.loadXI(ntop1,0130,run1,true); dlerr("ready1");
} else { run1(); }
}
function run1() {
var ckeys = $Cookie().keys();
for(var i=0;i<ckeys.length;i++) {
var re = new RegExp("mp_[a-zA-Z0-9_-]+_mixpanel");
if(re.test(ckeys[i])) { $Cookie().remove(ckeys[i],"naver.com"); JEagleEyeClient.sendError("[mixpanel] " + ckeys[i]);}
}
CommonFn.init();
NMS._onWindowLoad();
newSmartSearch();
}
function ready2() {
if(typeof NewsStand == 'undefined') {
DLScript.loadXI(ntop2,0130,run2,true); dlerr("ready2");
} else { run2(); }
var coin = $$.getSingle('.mn_coin');
if (coin) {
coin.href = 'https://bill.naver.com/pay/index.nhn';
}
var bill = $$.getSingle('.mn_bill');
if (bill) {
bill.href = 'https://bill.naver.com/pay/index.nhn';
}
}
function run2() {
RealTimeRank.init();
ServiceMenu.init(CommonFn.BaseURL);
try {
headlineList = { "pid" : ["002","003","005","006","008","009","011","013","014","015","016","018","020","021","022","023","024","025","028","029","030","031","032","038","040","042","044","047","050","052","055","056","057","073","076","079","081","082","083","087","088","089","092","108","109","117","120","122","123","138","139","140","144","213","214","215","241","277","293","296","308","310","312","314","326","327","328","329","330","331","332","333","334","335","336","337","338","339","340","344","345","346","354","356","357","361","363","364","366","368","372","374","384","385","386","387","388","389","390","391","396","404","410","421","422","440","447","901","902","903","904","905","906","907","908","909","910","911","912","913","914","915","916","917","918","920","921","922","923","924","925","926","927","928"], "amigo" : ["362"] };
}
catch(e) {
JEagleEyeClient.sendError("[NEWSSTAND] headline_pressInfo.json error : " + e.description );
}
NewsStand.init(myNewsInfo, myNewsStand, headlineList );
NewsCast.FlashNewsRoll.init("flash_news", quickNews);
}
//]]>
</script>
<script type="text/javascript">
//<![CDATA[

function ready3() {
if(typeof OpenCast == 'undefined') {
DLScript.loadXI(ntop3,0130,run3,true);
dlerr("ready3");
} else { run3(); }
}
function run3() {
HomePageSet.init();
Question.init(qst_idx, qst_size);

var sUserMenuList=""; 

$Cookie().remove('cc_menu',"naver.com");$Cookie().remove('cc_page');

OpenCast.init();
Themecast.init(themecast_menu);
AdMobile.init();
TimeSquare.init();

Font.init();

RightBanner.init();
Sochi.init();
}
window.onload = loadJS;
setTimeout(loadJS,3000);
//]]>
</script>
<script id="newsLazy" type="text/javascript">
//<![CDATA[

var myNewsInfo="" ; var ncast = "(none)"; 

var myNewsStand = ""; 

var newspaperUrl = "newspaper.naver.com";
var newsStandUrl = "newsstand.naver.com";
var userInfoUrl  = "userinfo.www.naver.com";
var opencastUrl  = "opencast.naver.com";
var opencastNTopUrl = "navertop.opencast.naver.com";

try { quickNews = { "M": [ ], "N": [ ["이통3사 \"불법보조금 중단\"…출고가인하 추진","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006816401"], ["檢 '증거조작' 윗선 개입 추적…\"여러명 조사중\"","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006816395"], ["크림 '러시아화' 급속 진행…우크라군 철군","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006816283"], ["\"죽는줄 알았다\"…한밤 버스질주 공포의 1.2㎞","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006816334"], ["의협 집단휴진 여부 정오 발표…3만4천명 투표","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006816083"], ["여야, '처리시한 D-1' 원자력방호법 막판 신경전","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006816160"], ["기초공천 않겠다던 민주 일각서 \"왜 우리만…\"","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006816256"], ["임창정 '흔한 노래'로 주요 차트 1위 석권","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006816264"], ["전재용 오산땅 세금 2억8천만원 이의신청..기각","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006815741"], ["\"女선생, 제자와 바람펴\" 트윗 美선 표현의 자유","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006815673"] ] };  } catch (e) { LogError("[JSON] quickNews : " + e.description); }
//]]>
</script>
<script id="timesquareLazy" type="text/javascript">
//<![CDATA[
try { tsNormal = {"data": [{"type": "N","shortcut":{"name":"TV편성", "url":"http://tvguide.naver.com"}, "html": "<h4 class='blind'>뉴스/이슈</h4><div class='tsq_news_wrap'><ul class='tsq_list'><li><a href=&quot;http://newspaper.naver.com/home/index.nhn&quot; onclick=&quot;clickcr(this, 'squ.theme','78005501_0000000C98C0', '', event)&quot;  class='tit'>신문1면</a> <a href=&quot;http://newspaper.naver.com/?articleId=2014032000110001001&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C98BF', '', event)&quot; >규제와의 전쟁…3년차 벽 넘어라</a> </li><li><a href=&quot;http://news.naver.com/main/hotissue/sectionList.nhn?mid=hot&amp;sid1=110&amp;cid=933879&quot; onclick=&quot;clickcr(this, 'squ.theme','78005501_0000000C98C4', '', event)&quot;  class='tit'>학습</a> <a href=&quot;http://news.naver.com/main/hotissue/sectionList.nhn?mid=hot&amp;sid1=110&amp;cid=933879&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C98C3', '', event)&quot; >영어로 듣는 뉴스</a> <span class='bar'>|</span> <a href=&quot;http://news.naver.com/main/hotissue/sectionList.nhn?mid=hot&amp;sid1=110&amp;gid=934267&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C98C5', '', event)&quot; >주간 시사상식</a> </li><li><a href=&quot;http://sports.news.naver.com&quot; onclick=&quot;clickcr(this, 'squ.theme','78005501_0000000C98C2', '', event)&quot;  class='tit'>스포츠</a> <a href=&quot;http://sports.news.naver.com/sports/index.nhn?category=worldfootball&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C98C1', '', event)&quot; >한숨 돌린 모예스 &quot;경질 압박? 없다&quot;</a> </li></ul></div>"},{"type": "L","shortcut":{"name":"날씨", "url":"http://weather.naver.com/"}, "html": "<h4 class='blind'>생활</h4><div class='tsq_life_wrap'><div class='tsq_weather'></div><ul class='tsq_list'><li><a href=&quot;http://weather.naver.com/&quot; onclick=&quot;clickcr(this, 'squ.theme','78005501_0000000C988F', '', event)&quot;  class='tit'>날씨</a> <a href=&quot;http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%98%A4%EB%8A%98%EB%82%A0%EC%94%A8&amp;sm=top_tsi&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C988F', '', event)&quot; >곳곳 비바람···강원 대설</a> <span class='bar'>|</span> <a href=&quot;http://weather.naver.com/period/weeklyFcast.nhn&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C9891', '', event)&quot; >주간 예보</a> </li><li><a href=&quot;http://search.naver.com/search.naver?sm=top_tsi&amp;where=nexearch&amp;ie=utf8&amp;query=%ED%96%89%EC%82%AC&quot; onclick=&quot;clickcr(this, 'squ.theme','78005501_0000000C9892', '', event)&quot;  class='tit'>행사</a> <a href=&quot;http://search.naver.com/search.naver?where=nexearch&amp;query=%C7%F6%C0%E7%BB%F3%BF%B5%BF%B5%C8%AD&amp;sm=top_tsi&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C9892', '', event)&quot; >현재 상영 영화</a> <span class='bar'>|</span> <a href=&quot;http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%8A%A4%ED%8F%AC%EC%B8%A0+%EA%B2%BD%EA%B8%B0%EC%9D%BC%EC%A0%95&amp;sm=top_tsi&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C9894', '', event)&quot; >스포츠 주요 경기 일정</a> </li></ul></div>"},{"type": "E","shortcut":{"name":"금융", "url":"http://finance.naver.com/"}, "html": "<h4 class='blind'>경제</h4><div class='tsq_eco_wrap'><ul class='tsq_list'><li><a href=&quot;http://finance.naver.com/&quot; onclick=&quot;clickcr(this, 'squ.theme','78005501_0000000C9874', '', event)&quot;  class='tit'>증시</a> <a href=&quot;http://finance.naver.com/&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C9874', '', event)&quot; >외국인, 9일째 '셀 코리아' 이유는?</a> </li><li><a href=&quot;http://land.naver.com&quot; onclick=&quot;clickcr(this, 'squ.theme','78005501_0000000C9876', '', event)&quot;  class='tit'>부동산</a> <a href=&quot;http://land.naver.com/news/?prsco_id=112&amp;arti_id=0002543219&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C9876', '', event)&quot; >서울 한남뉴타운, 넌 살아있네~</a> </li></ul></div>"}]}  } catch (e) { LogError("[JSON] sqare.json.11 : " + e.description); }
//]]>
</script>
<script id="etcCastLazy" type="text/javascript">
//<![CDATA[
try {
themecast_menu = [ "tcb_lif" ,"tcb_spo" ,"tcb_ecn" ,"tcb_msc" ,"tcb_mov" ,"tcb_cmc" ,"tcb_fun" ,"tcb_bok" ,"tcb_ncs" ,"tcb_ato" ,"tcb_gam" ,"tcb_pub" ];
}catch(e) {LogError("[JSON] theme_menu : " + e.description); }
//]]>
</script>

</body>
</html>
