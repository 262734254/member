<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<%
	string QUERY_STRING=Request.ServerVariables["QUERY_STRING"];
%>
<HTML>
	<HEAD>
		<title>[[ImageMap]] 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</title>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)">
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)">
		<link rel="stylesheet" href='Safari_style.css'>
		<script src=gecko_dialog.js></script><script src=../_shared.js></script>		
		<style>
		.row { HEIGHT: 22px }
		.cb { VERTICAL-ALIGN: middle }
		.itemimg { VERTICAL-ALIGN: middle }
		.editimg { VERTICAL-ALIGN: middle }
		.cell1 { VERTICAL-ALIGN: middle }
		.cell2 { VERTICAL-ALIGN: middle }
		.cell3 { PADDING-RIGHT: 4px; VERTICAL-ALIGN: middle; TEXT-ALIGN: right }
		.cb { }
		</style>
	</HEAD>
	<body unselectable="on">
		<table border="0" cellspacing="0" cellpadding="5" width="100%" align="center"  unselectable="on">
			<tr>
				<td style="padding:4px 0 1px 4px">						
						&nbsp;&nbsp;&nbsp;
						<IMG src="../images/ImageMap.gif" onclick="newMap();" Alt="[[AddHotSpot]]" class="dialogButton"
						onMouseOver="Check(this,1)" onMouseOut="Check(this,0)">
						<IMG src="../images/link.gif" onclick="Addlink(this);" Alt="[[insertlink]]" class="dialogButton"
						onMouseOver="Check(this,1)" onMouseOut="Check(this,0)">								
				</td>
			</tr>
			<tr>
				<td valign="top" height="280">
					<iframe id="iframe" MARGINHEIGHT="1" MARGINWIDTH="1" width="100%" src="../template.aspx"  scrolling="yes" height="100%"></iframe>
				</td>
			</tr>
			<tr>
				<td class="dialogFooter" vAlign="top" align="right" style="PADDING-RIGHT: 13px; PADDING-LEFT: 13px; PADDING-BOTTOM: 7px; PADDING-TOP: 7px">
					<table cellSpacing="0" cellPadding="1">
						<tbody>
							<tr>
								<td>
									<input type="button" value="[[Update]]" onclick="do_update()">&nbsp;&nbsp;
									<input type="button" value="[[Cancel]]" onclick="do_cancel()">&nbsp;
								</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</table>			
		

<script src="addvars.js"></script>
<script>

var OxO80ca=["dialogArguments","editor","window","document","img","contentWindow","iframe","onload","designMode","on","contentEditable","body","fontFamily","style","Tahoma","fontSize","11px","color","black","background","white","padding","10px","unselectable","innerHTML","useMap","","MAP","length","name","#","areas","href","target","alt","coords",",","\x3Cimg id=\x27myIMAGE","\x27 border=1 src=\x27../images/space.gif\x27 alt=\x27[[AddLinktoImageMap]]\x27 style=\x27position:absolute;left:","px;top:","px;width:","px;height:","px;zIndex:","\x27\x3E","parentNode","tagName","startOffset","endOffset","startContainer","endContainer","nodeType","childNodes","IMG","myIMAGE","id","width=350,height=212,resizable=0,toolbars=0,menubar=0,status=0","returnValue","frameloaded","keyCode","\x27  border=1 src=\x27../images/space.gif\x27 alt=\x27[[AddLinktoImageMap]]\x27 style=\x27position:absolute;zIndex:",";width:40;height:40;left:10;top:10\x27\x3E","\x3Carea shape=\x27rect\x27 coords=\x27","\x27","href=\x27","\x27 ","target=\x27","alt=\x27","\x3E","\x3Cmap name=\x27","\x3C/map\x3E","off","AutoMap","nodeName","\x3C","attributes","nodeValue"," ","=\x22","\x22","\x3C![CDATA[","]]\x3E","\x26",";","\x3C!--","--\x3E","HR","BR","INPUT"];var obj=top[OxO80ca[0x0]];var editor=obj[OxO80ca[0x1]];var editwin=obj[OxO80ca[0x2]];var editdoc=obj[OxO80ca[0x3]];var oImg=obj[OxO80ca[0x4]];var oMap=null;var aMapName= new Array();var aLeft= new Array();var aTop= new Array();var aWidth= new Array();var aHeight= new Array();var aHref= new Array();var aTarget= new Array();var aTitle= new Array();var aCoords= new Array();var iframe=document.getElementById(OxO80ca[0x6])[OxO80ca[0x5]]; window[OxO80ca[0x7]]=function (){ iframe[OxO80ca[0x3]][OxO80ca[0x8]]=OxO80ca[0x9] ; iframe[OxO80ca[0x3]][OxO80ca[0xb]][OxO80ca[0xa]]=true ; iframe[OxO80ca[0x3]][OxO80ca[0xb]][OxO80ca[0xd]][OxO80ca[0xc]]=OxO80ca[0xe] ; iframe[OxO80ca[0x3]][OxO80ca[0xb]][OxO80ca[0xd]][OxO80ca[0xf]]=OxO80ca[0x10] ; iframe[OxO80ca[0x3]][OxO80ca[0xb]][OxO80ca[0xd]][OxO80ca[0x11]]=OxO80ca[0x12] ; iframe[OxO80ca[0x3]][OxO80ca[0xb]][OxO80ca[0xd]][OxO80ca[0x13]]=OxO80ca[0x14] ; iframe[OxO80ca[0x3]][OxO80ca[0xb]][OxO80ca[0xd]][OxO80ca[0x15]]=OxO80ca[0x16] ; oImg[OxO80ca[0x17]]=OxO80ca[0x9] ; iframe.focus() ; iframe[OxO80ca[0x3]][OxO80ca[0xb]][OxO80ca[0x18]]=getOuterHTML(oImg) ;var Ox523=oImg[OxO80ca[0x19]];if(Ox523!=OxO80ca[0x1a]){ Ox523=Ox523.toUpperCase() ;var Ox524=editdoc[OxO80ca[0xb]].getElementsByTagName(OxO80ca[0x1b]);for(var i=0x0;i<Ox524[OxO80ca[0x1c]];i++){ aMapName[i]=Ox524[i][OxO80ca[0x1d]].toUpperCase() ;if((OxO80ca[0x1e]+aMapName[i])==Ox523){ oMap=Ox524[i] ;} ;} ;} ;if(oMap){for(var i=0x0;i<oMap[OxO80ca[0x1f]][OxO80ca[0x1c]];i++){ aHref[i]=oMap[OxO80ca[0x1f]][i][OxO80ca[0x20]] ; aTarget[i]=oMap[OxO80ca[0x1f]][i][OxO80ca[0x21]] ; aTitle[i]=oMap[OxO80ca[0x1f]][i][OxO80ca[0x22]] ; aCoords[i]=oMap[OxO80ca[0x1f]][i][OxO80ca[0x23]] ;var Ox146=aCoords[i].split(OxO80ca[0x24]); aLeft[i]=parseInt(Ox146[0x0]) ; aTop[i]=parseInt(Ox146[0x1]) ; aWidth[i]=parseInt(Ox146[0x2])-aLeft[i] ; aHeight[i]=parseInt(Ox146[0x3])-aTop[i] ; iframe[OxO80ca[0x3]][OxO80ca[0xb]][OxO80ca[0x18]]+=OxO80ca[0x25]+i+OxO80ca[0x26]+aLeft[i]+OxO80ca[0x27]+aTop[i]+OxO80ca[0x28]+aWidth[i]+OxO80ca[0x29]+aHeight[i]+OxO80ca[0x2a]+(i+0x1)+OxO80ca[0x2b] ;} ;} ;}  ; function SearchSelectionElement(Ox130){var sel=iframe.getSelection();var r=sel.getRangeAt(0x0);var Ox2f=Range_GetParentElement(r);for(var e=Ox2f;e!=null&&e!=iframe[OxO80ca[0x3]][OxO80ca[0xb]];e=e[OxO80ca[0x2c]]){if(e[OxO80ca[0x2d]]==Ox130){return e;} ;} ;return null;}  ; function Range_GetParentElement(Ox175){var Ox32e=Ox175[OxO80ca[0x2e]];var Ox32f=Ox175[OxO80ca[0x2f]];var Ox330=Ox175[OxO80ca[0x30]];var Ox331=Ox175[OxO80ca[0x31]];if(Ox32e==Ox32f&&Ox330==Ox331){if(Ox330[OxO80ca[0x32]]==0x3){return Ox330[OxO80ca[0x2c]];} ;return Ox330;} ;if(Ox32f-Ox32e==0x1&&Ox330==Ox331){return Ox330[OxO80ca[0x33]][Ox32e];} ;var Ox334=[];for(var Ox335=Ox330;Ox335!=null;Ox335=Ox335[OxO80ca[0x2c]]){ Ox334[Ox334[OxO80ca[0x1c]]]=Ox335 ;} ; Ox334.reverse() ;var Ox336=[];for(var Ox335=Ox330;Ox335!=null;Ox335=Ox335[OxO80ca[0x2c]]){ Ox336[Ox336[OxO80ca[0x1c]]]=Ox335 ;} ; Ox336.reverse() ;var Ox337=null;var Ox194=Math.min(Ox334[OxO80ca[0x1c]],Ox336.length);for(var i=0x0;i<Ox194;i++){if(Ox334[i]==Ox336[i]){ Ox337=Ox334[i] ;} else {break ;} ;} ;if(Ox337[OxO80ca[0x32]]==0x3){ Ox337=Ox337[OxO80ca[0x2c]] ;} ;return Ox337;}  ; function Addlink(){var Oxb9=SearchSelectionElement(OxO80ca[0x34]);if(Oxb9){if((Oxb9[OxO80ca[0x36]]).indexOf(OxO80ca[0x35])==-0x1){return ;} ;var Ox527=Oxb9[OxO80ca[0x36]];var Ox528=parseInt(Ox527.substr(0x7));var obj={href:aHref[Ox528],target:aTarget[Ox528],title:aTitle[Ox528]}; showModalDialog('Gecko_ mapLink.aspx?<%= QUERY_STRING %>',obj,OxO80ca[0x37],function (Ox2dc,Ox18d){if(Ox18d[OxO80ca[0x38]]){var arr=Ox18d[OxO80ca[0x38]];if(arr){ aHref[Ox528]=arr[0x0] ; aTarget[Ox528]=arr[0x1] ; aTitle[Ox528]=arr[0x2] ;} ;} ;} ) ;} ;return false;}  ;if(!top[OxO80ca[0x39]]){ top[OxO80ca[0x39]]=true ;} ; function do_cancel(){ top[OxO80ca[0x38]]=null ; top.close() ;}  ; function IsDigit(){return ((event[OxO80ca[0x3a]]>=0x30)&&(event[OxO80ca[0x3a]]<=0x39));}  ; function newMap(){var n=aHref[OxO80ca[0x1c]]; aHref[n]=OxO80ca[0x1a] ; aTarget[n]=OxO80ca[0x1a] ; aTitle[n]=OxO80ca[0x1a] ; iframe[OxO80ca[0x3]][OxO80ca[0xb]][OxO80ca[0x18]]+=OxO80ca[0x25]+n+OxO80ca[0x3b]+(n+0x1)+OxO80ca[0x3c] ; iframe.scrollBy(0x0,0x0) ; iframe.focus() ;}  ; function do_update(){var b=false;for(var i=0x0;i<aHref[OxO80ca[0x1c]];i++){var obj=iframe[OxO80ca[0x3]].getElementById(OxO80ca[0x35]+i);if(obj){ b=true ;} ;} ;if(b){var Oxaf=OxO80ca[0x1a];for(var i=0x0;i<aHref[OxO80ca[0x1c]];i++){var obj=iframe[OxO80ca[0x3]].getElementById(OxO80ca[0x35]+i);if(obj){var Ox52a=parseInt(obj[OxO80ca[0xd]].left);var Ox52b=parseInt(obj[OxO80ca[0xd]].top);var Ox52c=parseInt(obj[OxO80ca[0xd]].width);var Ox52d=parseInt(obj[OxO80ca[0xd]].height);var Ox52e=Ox52a+Ox52c;var Ox52f=Ox52b+Ox52d; Oxaf+=OxO80ca[0x3d]+Ox52a+OxO80ca[0x24]+Ox52b+OxO80ca[0x24]+Ox52e+OxO80ca[0x24]+Ox52f+OxO80ca[0x3e] ;if(aHref[i]!=OxO80ca[0x1a]){ Oxaf+=OxO80ca[0x3f]+aHref[i]+OxO80ca[0x40] ;} ;if(aTarget[i]!=OxO80ca[0x1a]&&aTarget[i]){ Oxaf+=OxO80ca[0x41]+aTarget[i]+OxO80ca[0x40] ;} ;if(aTitle[i]!=OxO80ca[0x1a]){ Oxaf+=OxO80ca[0x42]+aTitle[i]+OxO80ca[0x40] ;} ; Oxaf+=OxO80ca[0x43] ;} ;} ;if(oMap){ oMap[OxO80ca[0x18]]=Oxaf ;} else { sUseMap=getAutoMapName() ; oImg[OxO80ca[0x19]]=OxO80ca[0x1e]+sUseMap ; editor.PasteHTML(OxO80ca[0x44]+sUseMap+OxO80ca[0x2b]+Oxaf+OxO80ca[0x45]) ;} ;} else {if(oMap){} ; oImg[OxO80ca[0x19]]=OxO80ca[0x1a] ;} ; oImg[OxO80ca[0x17]]=OxO80ca[0x46] ; oImg.removeAttribute(OxO80ca[0x17]) ; window[OxO80ca[0x38]]=oImg ; window.close() ; top.close() ;}  ; function getAutoMapName(){var b=true;var n=0x0;var Ox25=OxO80ca[0x1a];while(b){ n++ ; Ox25=OxO80ca[0x47]+n ;if(isValidMapName(Ox25)){ b=false ;} ;} ;return Ox25;}  ; function isValidMapName(Ox1f){ Ox1f=Ox1f.toUpperCase() ;for(var i=0x0;i<aMapName[OxO80ca[0x1c]];i++){if(aMapName[i]==Ox1f){return false;} ;} ;return true;}  ; function do_cancel(){ oImg.removeAttribute(OxO80ca[0x17]) ; top[OxO80ca[0x38]]=null ; top.close() ;}  ; function getOuterHTML(Ox27e){var Ox1f=OxO80ca[0x1a];switch(Ox27e[OxO80ca[0x32]]){case 0x1: Ox1f+=OxO80ca[0x49]+Ox27e[OxO80ca[0x48]] ;for(var i=0x0;i<Ox27e[OxO80ca[0x4a]][OxO80ca[0x1c]];i++){if(Ox27e[OxO80ca[0x4a]].item(i)[OxO80ca[0x4b]]!=null){ Ox1f+=OxO80ca[0x4c] ; Ox1f+=Ox27e[OxO80ca[0x4a]].item(i)[OxO80ca[0x48]] ; Ox1f+=OxO80ca[0x4d] ; Ox1f+=Ox27e[OxO80ca[0x4a]].item(i)[OxO80ca[0x4b]] ; Ox1f+=OxO80ca[0x4e] ;} ;} ;if(Ox27e[OxO80ca[0x33]][OxO80ca[0x1c]]==0x0&&leafElems[Ox27e[OxO80ca[0x48]]]){ Ox1f+=OxO80ca[0x43] ;} else { Ox1f+=OxO80ca[0x43] ; Ox1f+=getInnerHTML(Ox27e) ; Ox1f+=OxO80ca[0x49]+Ox27e[OxO80ca[0x48]]+OxO80ca[0x43] ;} ;break ;case 0x3: Ox1f+=Ox27e[OxO80ca[0x4b]] ;break ;case 0x4: Ox1f+=OxO80ca[0x4f]+Ox27e[OxO80ca[0x4b]]+OxO80ca[0x50] ;break ;case 0x5: Ox1f+=OxO80ca[0x51]+Ox27e[OxO80ca[0x48]]+OxO80ca[0x52] ;break ;case 0x8: Ox1f+=OxO80ca[0x53]+Ox27e[OxO80ca[0x4b]]+OxO80ca[0x54] ;break ;;;;;;} ;return Ox1f;}  ;var _leafElems=[OxO80ca[0x34],OxO80ca[0x55],OxO80ca[0x56],OxO80ca[0x57]];var leafElems={};for(var i=0x0;i<_leafElems[OxO80ca[0x1c]];i++){ leafElems[_leafElems[i]]=true ;} ;
</script>
	</body>
</HTML>
