var OxO8133=["Your security settings to not allow you to use this command.  Please visit http://www.mozilla.org/editor/midasdemo/securityprefs.html for more information.","Cut","Copy","Paste","tempid","A","ResourceDir","/Dialogs/Gecko_InsertDocument.aspx?settinghash=[[_setting_]]","\x26[[GetDNNArg]]","returnValue","IMG","/Dialogs/Gecko_InsertGallery.aspx?settinghash=[[_setting_]]","src","/Dialogs/Gecko_InsertImage.aspx?settinghash=[[_setting_]]","/Dialogs/Gecko_InsertMedia.aspx?settinghash=[[_setting_]]","h","w","ShowControls","AutoStart","medianame","\x3Cembed name=\x22MediaPlayer1\x22 src=\x22","\x22 autostart=\x22","\x22 showcontrols=\x22","\x22  width=\x22","\x22 height=\x22","\x22 type=\x22application/x-mplayer2\x22 pluginspage=\x22http://www.microsoft.com/Windows/MediaPlayer\x22 \x3E\x3C/embed\x3E\x0A","/Dialogs/Gecko_InsertFlash.aspx?settinghash=[[_setting_]]","bg","qu","swf","\x3Cembed src=\x22","\x22 quality=\x22","\x22 bgcolor=\x22","\x22 type=\x22application/x-shockwave-flash\x22 pluginspage=\x22http://www.macromedia.com/go/getflashplayer\x22\x3E\x3C/embed\x3E\x0A","body","ExecCommand_Insert "," not implemented","flash","media","image","gallery","document","","FIELDSET","innerHTML","\x3Clegend\x3E","Title","\x3C/legend\x3E[[TypeTextHere]]...","FullPage","resize","FullPageActived","compatMode","CSS1Compat","documentElement","FullPageScrollTop","FullPageScrollLeft","width","style","FullPageSrcWidth","height","FullPageSrcHeight","position","absolute","zIndex","left","0px","top","clientWidth","px","clientHeight","scrollTop","scrollLeft","static","designMode","On","div","firstChild","title","Control","*","length","tagName","BODY","relative","head","/Dialogs/Gecko_Page.aspx?settinghash=[[_setting_]]","_mtd_p.","+","=_mtd_v","None","SPAN","className","cssText","attributes","specified","parentNode","Upper","ToggleBorder","TABLE","FORM","border","1px dashed #7F7C75","rows","cells","1px dotted #FF0000"];var ccperrmsg=OxO8133[0x0]; function ExecCommand_Cut(Ox9f,Ox5b){try{ editor.execCommand(OxO8133[0x1],false,null) ;} catch(e){ alert(ccperrmsg) ;} ;}  ; function ExecCommand_Copy(Ox9f,Ox5b){try{ editor.execCommand(OxO8133[0x2],false,null) ;} catch(e){} ;}  ; function ExecCommand_Paste(Ox9f,Ox5b){try{ editor.execCommand(OxO8133[0x3],false,null) ;} catch(e){ alert(ccperrmsg) ;} ;}  ; function ExecCommand_Insert(Oxb6){var Oxa7=GetSavePoint();var Oxb7=OxO8133[0x4]+ new Date().getTime();switch((OxO8133[0x2a]+Oxb6).toLowerCase()){case OxO8133[0x29]:var Oxa7=GetSavePoint();var Oxb8=editor.SearchSelectionElement(OxO8133[0x5]);if(Oxb8==null){var sel=editwin.getSelection();var r=sel.getRangeAt(0x0);var Ox2e3=r.cloneRange();var Oxf0=Range_GetSelectionType(r);var Ox2e4=r.extractContents(); Oxb8=editdoc.createElement(OxO8133[0x5]) ;if(Ox2e4){ Oxb8.appendChild(Ox2e4) ; r.insertNode(Oxb8) ;} ;} ; showModalDialog(editor.getAttribute(OxO8133[0x6])+OxO8133[0x7]+OxO8133[0x8],Oxb8,_documentDialogFeature,function (Ox2dc,Ox18d){var Ox74=Ox18d[OxO8133[0x9]];if(Ox74){} else { RestoreSavePoint(Oxa7) ;} ;} ) ;break ;case OxO8133[0x28]:var Oxb9=editor.SearchSelectionElement(OxO8133[0xa]); showModalDialog(editor.getAttribute(OxO8133[0x6])+OxO8133[0xb]+OxO8133[0x8],Oxb9,_galleryDialogFeature,function (Ox2dc,Ox18d){var Oxba=Ox18d[OxO8133[0x9]];if(Oxba){if(Oxb9){ Oxb9[OxO8133[0xc]]=Oxba ;} else { Oxb9=editdoc.createElement(OxO8133[0xa]) ; Oxb9[OxO8133[0xc]]=Oxba ;} ; editor.InsertElement(Oxb9) ;} ;} ) ;break ;case OxO8133[0x27]:var Oxb9=editor.SearchSelectionElement(OxO8133[0xa])||editdoc.createElement(OxO8133[0xa]); showModalDialog(editor.getAttribute(OxO8133[0x6])+OxO8133[0xd]+OxO8133[0x8],Oxb9,_imageDialogFeature,function (Ox2dc,Ox18d){var Oxbb=Ox18d[OxO8133[0x9]];if(Oxbb){ editor.InsertElement(Oxbb,Oxb9) ;} ;} ) ;break ;case OxO8133[0x26]: showModalDialog(editor.getAttribute(OxO8133[0x6])+OxO8133[0xe]+OxO8133[0x8],window,_mediaDialogFeature,function (Ox2dc,Ox18d){var parameters=Ox18d[OxO8133[0x9]];if(parameters){var Oxbd=OxO8133[0x14]+parameters[OxO8133[0x13]]+OxO8133[0x15]+parameters[OxO8133[0x12]]+OxO8133[0x16]+parameters[OxO8133[0x11]]+OxO8133[0x17]+parameters[OxO8133[0x10]]+OxO8133[0x18]+parameters[OxO8133[0xf]]+OxO8133[0x19]; ExecCommand_PasteHTML(false,Oxbd) ;} ;} ) ;break ;case OxO8133[0x25]: showModalDialog(editor.getAttribute(OxO8133[0x6])+OxO8133[0x1a]+OxO8133[0x8],window,_flashDialogFeature,function (Ox2dc,Ox18d){var parameters=Ox18d[OxO8133[0x9]];if(parameters){var Oxbe=OxO8133[0x1e]+parameters[OxO8133[0x1d]]+OxO8133[0x1f]+parameters[OxO8133[0x1c]]+OxO8133[0x20]+parameters[OxO8133[0x1b]]+OxO8133[0x17]+parameters[OxO8133[0x10]]+OxO8133[0x18]+parameters[OxO8133[0xf]]+OxO8133[0x21]; alert(Oxbe) ; ExecCommand_PasteHTML(false,Oxbe) ; alert(editdoc[OxO8133[0x22]].innerHTML) ;} ;} ) ;break ;default: alert(OxO8133[0x23]+Oxb6+OxO8133[0x24]) ;;;;;;;} ;}  ; function ExecCommand_InsertFieldSet(Oxb1){var Oxb2=editdoc.createElement(OxO8133[0x2b]); Oxb2[OxO8133[0x2c]]=OxO8133[0x2d]+(Oxb1||OxO8133[0x2e])+OxO8133[0x2f] ; editor.InsertElement(Oxb2) ;}  ; function ExecCommand_FullPage(Ox9c){if(Ox9c){ SetState(OxO8133[0x30],!ToBoolean(GetState(OxO8133[0x30]))) ;} ; window.removeEventListener(OxO8133[0x31],ExecCommand_FullPage_Handle_Window_Resize,true) ; editor.LogSavePoint() ;var Oxa7=GetSavePoint();if(GetState(OxO8133[0x30],false)){if(GetData(OxO8133[0x32])){return ;} ;var Oxa5=window[OxO8133[0x29]][OxO8133[0x22]];if(window[OxO8133[0x29]][OxO8133[0x33]]==OxO8133[0x34]){ Oxa5=window[OxO8133[0x29]][OxO8133[0x35]] ;} ; SetData(OxO8133[0x32],true) ; SetData(OxO8133[0x36],Oxa5.scrollTop) ; SetData(OxO8133[0x37],Oxa5.scrollLeft) ; SetData(OxO8133[0x3a],editor[OxO8133[0x39]][OxO8133[0x38]]||editor.offsetWidth) ; SetData(OxO8133[0x3c],editor[OxO8133[0x39]][OxO8133[0x3b]]||editor.offsetHeight) ; editor[OxO8133[0x39]][OxO8133[0x3d]]=OxO8133[0x3e] ; editor[OxO8133[0x39]][OxO8133[0x3f]]=0x76adf1 ; editor[OxO8133[0x39]][OxO8133[0x40]]=OxO8133[0x41] ; editor[OxO8133[0x39]][OxO8133[0x42]]=OxO8133[0x41] ; editor[OxO8133[0x39]][OxO8133[0x38]]=Oxa5[OxO8133[0x43]]+OxO8133[0x44] ; editor[OxO8133[0x39]][OxO8133[0x3b]]=Oxa5[OxO8133[0x45]]+OxO8133[0x44] ; Oxa5[OxO8133[0x46]]=0x0 ; Oxa5[OxO8133[0x47]]=0x0 ; window.addEventListener(OxO8133[0x31],ExecCommand_FullPage_Handle_Window_Resize,true) ;} else {if(GetData(OxO8133[0x32])){ SetData(OxO8133[0x32],false) ;var Ox304=window[OxO8133[0x29]][OxO8133[0x22]];var Oxa5=Ox304;if(window[OxO8133[0x29]][OxO8133[0x33]]==OxO8133[0x34]){ Oxa5=window[OxO8133[0x29]][OxO8133[0x35]] ;} ; editor[OxO8133[0x39]][OxO8133[0x38]]=GetData(OxO8133[0x3a]) ; editor[OxO8133[0x39]][OxO8133[0x3b]]=GetData(OxO8133[0x3c]) ; editor[OxO8133[0x39]][OxO8133[0x3d]]=OxO8133[0x48] ; Oxa5[OxO8133[0x46]]=SetData(OxO8133[0x36]) ; Oxa5[OxO8133[0x47]]=SetData(OxO8133[0x37]) ;} ;} ; editdoc[OxO8133[0x49]]=OxO8133[0x4a] ; setTimeout(function Oxa8(){ editor.FocusDocument() ; RestoreSavePoint(Oxa7) ;} ,0x1) ;}  ; function ExecCommand_FullPage_Handle_Window_Resize(){if(GetState(OxO8133[0x30],false)){var Oxa5=window[OxO8133[0x29]][OxO8133[0x22]];if(window[OxO8133[0x29]][OxO8133[0x33]]==OxO8133[0x34]){ Oxa5=window[OxO8133[0x29]][OxO8133[0x35]] ;} ; editor[OxO8133[0x39]][OxO8133[0x38]]=Oxa5[OxO8133[0x43]]+OxO8133[0x44] ; editor[OxO8133[0x39]][OxO8133[0x3b]]=Oxa5[OxO8133[0x45]]+OxO8133[0x44] ;} ;}  ; function ExecCommand_PasteHTML(Ox9f,Ox5b,Oxe7){var Ox175=editwin.getSelection().getRangeAt(0x0);var div=editdoc.createElement(OxO8133[0x4b]); div[OxO8133[0x2c]]=Ox5b ;if(Oxe7){ div[OxO8133[0x2c]]=Oxe7(div.innerHTML) ;} ;var sel=editwin.getSelection();var r=sel.getRangeAt(0x0); r.deleteContents() ; sel.removeAllRanges() ;while(div[OxO8133[0x4c]]){var Ox27e=div[OxO8133[0x4c]]; r.insertNode(Ox27e) ; r.selectNode(Ox27e) ; r.collapse(false) ;} ; sel.addRange(r) ;}  ; function ExecCommand_PasteText(Ox9f,Ox5b){}  ; function ExecCommand_PasteWord(Ox9f,Ox5b){}  ; function ExecCommand_BringZIndex(Oxf8){ editor.FocusDocument() ;var sel=editwin.getSelection();var r=sel.getRangeAt(0x0);var Ox2e3=r.cloneRange();var Oxf0=Range_GetSelectionType(r); document[OxO8133[0x4d]]=(Oxf0) ;if(Oxf0!=OxO8133[0x4e]){return ;} ;var Oxf9=editdoc.getElementsByTagName(OxO8133[0x4f]);var Ox18=0x0;var Ox17=0x0;for(var i=0x0;i<Oxf9[OxO8133[0x50]];i++){var e=Oxf9[i];var Ox29=parseInt(e[OxO8133[0x39]].zIndex);if(Ox29){ Ox18=Math.min(Ox18,Ox29) ; Ox17=Math.max(Ox17,Ox29) ;} ;} ;if(Oxf8>0x0){ Oxf8+=Ox17 ;} else { Oxf8+=Ox18 ;} ;var Oxfa=Range_GetParentElement(r);if(Oxfa[OxO8133[0x51]].toUpperCase()!=OxO8133[0x52]){ Oxfa[OxO8133[0x39]][OxO8133[0x3f]]=Oxf8 ;if(Oxfa[OxO8133[0x39]][OxO8133[0x3d]]!=OxO8133[0x3e]){ Oxfa[OxO8133[0x39]][OxO8133[0x3d]]=OxO8133[0x53] ;} ;} ;}  ; function ExecCommand_DocumentPropertyPage(){var head=editdoc.getElementsByTagName(OxO8133[0x54])[0x0];var obj={editor:editor,DOCTYPE:DOCTYPE,window:editwin,document:editdoc,head:head}; showModalDialog(editor.getAttribute(OxO8133[0x6])+OxO8133[0x55]+OxO8133[0x8],obj,_pageDialogFeature,function (Ox2dc,Ox18d){var Ox74=Ox18d[OxO8133[0x9]];if(Ox74){ DOCTYPE=Ox74 ;} else { DOCTYPE=OxO8133[0x2a] ;} ;} ) ;}  ; function ExecCommand_CtrlAttr(Oxee,Ox9f,Ox5b,Oxef){ editor.FocusDocument() ;var sel=editwin.getSelection();var r=sel.getRangeAt(0x0);var Ox2e3=r.cloneRange();var Oxf0=Range_GetSelectionType(r); document[OxO8133[0x4d]]=(Oxf0) ;if(Oxf0==OxO8133[0x4e]){var _mtd_p=Range_GetParentElement(r);var _mtd_v=Ox5b; eval(OxO8133[0x56]+Oxee+(Oxef?OxO8133[0x57]:OxO8133[0x2a])+OxO8133[0x58]) ;return ;} ; document[OxO8133[0x4d]]+=r.toString() ;var Ox2f=Range_GetParentElement(r);if(Oxf0==OxO8133[0x59]){ r.selectNode(Ox2f) ;} ;if(false){var _mtd_p=Ox2f;var _mtd_v=Ox5b; eval(OxO8133[0x56]+Oxee+(Oxef?OxO8133[0x57]:OxO8133[0x2a])+OxO8133[0x58]) ;return ;} ;if(Ox2f[OxO8133[0x51]]!=OxO8133[0x5a]&&Ox2f[OxO8133[0x51]]!=OxO8133[0x5]){var Ox2e4=r.extractContents();var Ox19b=editdoc.createElement(OxO8133[0x5a]);if(Ox2e4){ Ox19b.appendChild(Ox2e4) ; r.insertNode(Ox19b) ;} ; r.selectNode(Ox19b) ; Ox2f=Ox19b ;} ;var _mtd_p=Ox2f;var _mtd_v=Ox5b; eval(OxO8133[0x56]+Oxee+(Oxef?OxO8133[0x57]:OxO8133[0x2a])+OxO8133[0x58]) ;if(Ox2f[OxO8133[0x51]]==OxO8133[0x5a]){if(!(Ox2f[OxO8133[0x39]][OxO8133[0x5c]]||Ox2f[OxO8133[0x5b]])){var Oxf6=false;for(var i=0x0;i<Ox2f[OxO8133[0x5d]][OxO8133[0x50]];i++){if(Ox2f[OxO8133[0x5d]][i][OxO8133[0x5e]]){ Oxf6=true ;break ;} ;} ;if(!Oxf6){ Ox2f[OxO8133[0x5f]].removeChild(Ox2f) ;} ;} ;} ; sel.removeAllRanges() ; sel.addRange(Ox2e3) ;}  ; function ExecCommand_Case(Ox30a){ editor.FocusDocument() ;var sel=editwin.getSelection();var r=sel.getRangeAt(0x0);if(Ox30a==OxO8133[0x60]){ ExecCommand_PasteHTML(false,r.toString().toUpperCase()) ;} else { ExecCommand_PasteHTML(false,r.toString().toLowerCase()) ;} ;}  ; function ExecCommand_ToggleBorder(Ox9c){if(Ox9c){ SetState(OxO8133[0x61],!ToBoolean(GetState(OxO8133[0x61]))) ;} ;if(!isready){return ;} ;var Ox30b=editdoc.getElementsByTagName(OxO8133[0x62]);var Ox30c=editdoc.getElementsByTagName(OxO8133[0x63]);var ijOx30d;var Ox81;var Ox2e2;var Ox30e;var Ox30f;for( i=0x0 ;i<Ox30b[OxO8133[0x50]];i++){if(GetState(OxO8133[0x61],true)){ Ox30b[i][OxO8133[0x39]][OxO8133[0x64]]=OxO8133[0x65] ;} else { Ox81=Ox30b[i][OxO8133[0x39]][OxO8133[0x38]] ; Ox2e2=Ox30b[i][OxO8133[0x39]][OxO8133[0x3b]] ; Ox30b[i].removeAttribute(OxO8133[0x39]) ;if(Ox81){ Ox30b[i][OxO8133[0x39]][OxO8133[0x38]]=Ox81 ;} ;if(Ox2e2){ Ox30b[i][OxO8133[0x39]][OxO8133[0x3b]]=Ox2e2 ;} ;} ; Ox30e=Ox30b[i][OxO8133[0x66]] ;for( j=0x0 ;j<Ox30e[OxO8133[0x50]];j++){ Ox30f=Ox30e[j][OxO8133[0x67]] ;for( Ox30d=0x0 ;Ox30d<Ox30f[OxO8133[0x50]];Ox30d++){if(GetState(OxO8133[0x61],true)){ Ox30f[Ox30d][OxO8133[0x39]][OxO8133[0x64]]=OxO8133[0x65] ;} else { Ox30f[Ox30d].removeAttribute(OxO8133[0x39]) ;} ;} ;} ;} ;for( i=0x0 ;i<Ox30c[OxO8133[0x50]];i++){if(GetState(OxO8133[0x61],true)){ Ox30c[i][OxO8133[0x39]][OxO8133[0x64]]=OxO8133[0x68] ;} else { Ox30c[i].removeAttribute(OxO8133[0x39]) ;} ;} ;}  ;