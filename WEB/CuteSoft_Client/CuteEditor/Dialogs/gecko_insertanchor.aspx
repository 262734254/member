<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<html>
	<head>
		<title>[[InsertAnchor]] 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</title>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel=stylesheet href='gecko_style.css' >
		<script src=Gecko_dialog.js></script><script src=../_shared.js></script>
		<script language="JavaScript">
			var OxOa524=["availWidth","availHeight","dialogArguments","editor","window","document","name","value","anchor_name","[[ValidName]]","returnValue","allanchors","options","length","A","","OPTION","text"]; window.resizeTo(0x140,0x96) ; window.moveTo((screen[OxOa524[0x0]]-0x140)/0x2,(screen[OxOa524[0x1]]-0xfa)/0x2) ;var obj=top[OxOa524[0x2]];var editor=obj[OxOa524[0x3]];var editwin=obj[OxOa524[0x4]];var editdoc=obj[OxOa524[0x5]];var name=obj[OxOa524[0x6]]; function insert_link(){var Ox534=document.getElementById(OxOa524[0x8])[OxOa524[0x7]];var Ox535=/[^a-z\d]/i;if(Ox535.test(Ox534)){ alert(OxOa524[0x9]) ;} else { top[OxOa524[0xa]]=Ox534 ; top.close() ;} ;}  ; function Init(){if(name){ document.getElementById(OxOa524[0x8])[OxOa524[0x7]]=name ;} ; updateList() ;}  ; function updateList(){var allanchors=document.getElementById(OxOa524[0xb]);while(allanchors[OxOa524[0xc]][OxOa524[0xd]]!=0x0){ allanchors[OxOa524[0xc]][0x0]=null ;} ;var Ox538=editdoc.getElementsByTagName(OxOa524[0xe]);for(var i=0x0;i<Ox538[OxOa524[0xd]];i++){if(Ox538[i][OxOa524[0x6]]!=OxOa524[0xf]){var Ox539=document.createElement(OxOa524[0x10]); Ox539[OxOa524[0x11]]=Ox538[i][OxOa524[0x6]] ; Ox539[OxOa524[0x7]]=Ox538[i][OxOa524[0x6]] ; allanchors[OxOa524[0xc]][allanchors[OxOa524[0xc]][OxOa524[0xd]]]=Ox539 ;} ;} ;}  ; function selectAnchor(Ox53b){var allanchors=document.getElementById(OxOa524[0xb]); editor.FocusDocument() ;var Ox538=editdoc.getElementsByName(Ox53b);if(Ox538[OxOa524[0xd]]>0x0){var Ox175=editdoc.createRange(); Ox175.selectNode(Ox538[0x0]) ; oSel=editwin.getSelection() ; oSel.removeAllRanges() ; oSel.addRange(Ox175) ;} ; document.getElementById(OxOa524[0x8])[OxOa524[0x7]]=Ox53b ;}  ;
		</script>
		<style>
		.btn {border: 1px solid buttonface;padding: 1px;width:14px;height: 12px;vertical-align: middle;}
		select,input,td {font-family: MS Sans Serif; font-size: 9pt; vertical-align: top; cursor: pointer;}
		</style>
	</head>
	<body onload="Init();" style="margin:0px;border-width:0px;padding:4px;">
		<table border="0" cellspacing="2" cellpadding="5" width="100%" align="center">
			<tr>
				<td nowrap>
					<div>
						<fieldset style="padding:2px" align="center"><legend>[[InsertAnchor]]</legend>
							<table border="0" cellpadding="5" cellspacing="0" style="display:none">
								<tr>
									<td width="100%">
										<select size="5" name="allanchors" style="width: 255" id="allanchors" onchange="selectAnchor(this.value);"></select>
										<br><br>
										</td>
									<td>
									</td>
								</tr>
							</table
							<table border="0" cellpadding="5" cellspacing="0">
								<tr>
									<td style='vertical-align:middle'>[[Name]]:</td>
									<td style='vertical-align:middle'><input type="text" id="anchor_name" style="width:210"></td>
								</tr>
							</table>
						</fieldset>
					</div>
					<div style="margin-top:8px;width:90%; text-align:center">
						<input class="inputbuttoninsert" type="button" value="[[Insert]]" style="width:80px" onclick="insert_link()">&nbsp;&nbsp;
						<input class="inputbuttoncancel" type="button" value="[[Cancel]]" style="width:80px" onclick="top.close()">
					</div>
				</td>
			</tr>
		</table>
	</body>
</html>
