<%@ Page Language="C#" Inherits="CuteEditor.Dialogs.FileBrowserPage" %>
<HTML>
	<HEAD>
		<title>[[InsertImage]] 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</title>		
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)">
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)">
		<link rel="stylesheet" href='Safari_style.css'>
		<script src=Safari_dialog.js></script>
		<script src="sorttable.js"></script>
		<script language="JavaScript">
		var OxOb65a=["disabled","target","[[Disabled]]","[[SpecifyNewFolderName]]","","value","hiddenActionData","[[CopyMoveto]]","/","[[AreyouSureDelete]]","parentNode","text","isdir",".","[[SpecifyNewFileName]]","hiddenAction","rename","path","True","False",":","cancelBubble","backgroundColor","style","#eeeeee","tagName","INPUT","changedir","hiddenFile","url","TargetUrl"]; function CreateDir_click(){if(event[OxOb65a[0x1]][OxOb65a[0x0]]){ alert(OxOb65a[0x2]) ;return false;} ;var Ox2fb=window.prompt(OxOb65a[0x3],OxOb65a[0x4]);if(Ox2fb){ document.getElementById(OxOb65a[0x6])[OxOb65a[0x5]]=Ox2fb ;return true;} else {return false;} ;}  ; function Move_click(){if(event[OxOb65a[0x1]][OxOb65a[0x0]]){ alert(OxOb65a[0x2]) ;return false;} ;var Ox2fb=window.prompt(OxOb65a[0x7],OxOb65a[0x8]);if(Ox2fb){ document.getElementById(OxOb65a[0x6])[OxOb65a[0x5]]=Ox2fb ;return true;} else {return false;} ;}  ; function Copy_click(){if(event[OxOb65a[0x1]][OxOb65a[0x0]]){ alert(OxOb65a[0x2]) ;return false;} ;var Ox2fb=window.prompt(OxOb65a[0x7],OxOb65a[0x8]);if(Ox2fb){ document.getElementById(OxOb65a[0x6])[OxOb65a[0x5]]=Ox2fb ;return true;} else {return false;} ;}  ; function Delete_click(){if(event[OxOb65a[0x1]][OxOb65a[0x0]]){ alert(OxOb65a[0x2]) ;return false;} ;var Ox5a1=confirm(OxOb65a[0x9]);if(Ox5a1){ ResetFields() ;return true;} else {return false;} ;}  ; function EditImg_click(Oxb9){if(Oxb9[OxOb65a[0x0]]){ alert(OxOb65a[0x2]) ;return false;} ; row=Oxb9[OxOb65a[0xa]][OxOb65a[0xa]] ;var Ox550=row[OxOb65a[0xb]];var name;if(row[OxOb65a[0xc]]){ name=prompt(OxOb65a[0x3],Ox550) ;} else {var i=Ox550.lastIndexOf(OxOb65a[0xd]);var Ox551=Ox550.substr(i);var Ox20=Ox550.substr(0x0,Ox550.lastIndexOf(OxOb65a[0xd])); name=prompt(OxOb65a[0xe],Ox20) ;if(name){ name=name+Ox551 ;} ;} ;if(name&&name!=row[OxOb65a[0xb]]){ document.getElementById(OxOb65a[0xf])[OxOb65a[0x5]]=OxOb65a[0x10] ; document.getElementById(OxOb65a[0x6])[OxOb65a[0x5]]=(row[OxOb65a[0xc]]?OxOb65a[0x12]:OxOb65a[0x13])+OxOb65a[0x14]+row[OxOb65a[0x11]]+OxOb65a[0x14]+name ; postback() ;} ; event[OxOb65a[0x15]]=true ;}  ; function row_over(Oxc3){ Oxc3[OxOb65a[0x17]][OxOb65a[0x16]]=OxOb65a[0x18] ;}  ; function row_out(Oxc3){ Oxc3[OxOb65a[0x17]][OxOb65a[0x16]]=OxOb65a[0x4] ;}  ; function row_click(Oxc3){if(Oxc3[OxOb65a[0xc]]){if(event[OxOb65a[0x1]][OxOb65a[0x19]]==OxOb65a[0x1a]){return ;} ; document.getElementById(OxOb65a[0xf])[OxOb65a[0x5]]=OxOb65a[0x1b] ; document.getElementById(OxOb65a[0x6])[OxOb65a[0x5]]=Oxc3.getAttribute(OxOb65a[0x11]) ; postback() ;} else {var Ox4f4=Oxc3.getAttribute(OxOb65a[0x11]); document.getElementById(OxOb65a[0x1c])[OxOb65a[0x5]]=Ox4f4 ;var Oxba=Oxc3.getAttribute(OxOb65a[0x1d]); document.getElementById(OxOb65a[0x1e])[OxOb65a[0x5]]=Oxba ; Actualsize() ;} ;}  ; function postback(){ <%=Page.ClientScript.GetPostBackEventReference(hiddenAction,"")%> ;}  ;
		
		</script>
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
	<body>
		<form runat="server" enctype="multipart/form-data" id="Form1">
			<!-- start hidden -->
			<script>
        var OxO8218=["onload","value","hiddenAlert","","hiddenAction","hiddenActionData"]; window[OxO8218[0x0]]=reset_hiddens ; function reset_hiddens(){if(document.getElementById(OxO8218[0x2])[OxO8218[0x1]]){ alert(document.getElementById(OxO8218[0x2]).value) ;} ; document.getElementById(OxO8218[0x2])[OxO8218[0x1]]=OxO8218[0x3] ; document.getElementById(OxO8218[0x4])[OxO8218[0x1]]=OxO8218[0x3] ; document.getElementById(OxO8218[0x5])[OxO8218[0x1]]=OxO8218[0x3] ;}  ;
			</script>
			<input type="hidden" runat="server" id="hiddenDirectory" NAME="hiddenDirectory"> <input type="hidden" runat="server" id="hiddenFile" NAME="hiddenFile">
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAlert" NAME="hiddenAlert"> <input type="hidden" runat="server" enableviewstate="false" id="hiddenAction" onserverchange="hiddenAction_ServerChange" NAME="hiddenAction">
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenActionData" NAME="hiddenActionData">
			<!-- end hidden -->
				<table border="0" cellspacing="2" cellpadding="0" width="100%" align="center">
				<tr>
					<td width="20">
						<asp:Image ID="Image1" Runat="server" ImageUrl="../images/openfolder.gif"></asp:Image>
					</td>
					<td width="240" class="normal">
						<asp:Label Runat="server" ID="FolderDescription"></asp:Label>
					</td>
					<td>
						<asp:ImageButton ID="CreateDir" Runat="server" AlternateText="[[Createdirectory]]" ImageUrl="../images/newfolder.gif"
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)" Visible="true"
							OnClick="CreateDir_Click" />
						<asp:ImageButton ID="Copy" Runat="server" AlternateText="[[Copyfiles]]" ImageUrl="../images/Copy.gif"
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)" Visible="true"
							OnClick="Copy_Click" />
						<asp:ImageButton ID="Move" Runat="server" AlternateText="[[Movefiles]]" ImageUrl="../images/move.gif"
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)" Visible="true"
							OnClick="Move_Click" /><IMG src="../images/Actualsize.gif" onclick="Actualsize();" Alt="[[ActualSize]]" class="dialogButton"
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)">
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
				<tr>
					<td valign="top" nowrap width="270">
						<div style="BORDER: 1.5pt inset;  VERTICAL-ALIGN: middle; OVERFLOW: auto; WIDTH: 270px; HEIGHT: 250px; Padding: 0 0 0 0; BACKGROUND-COLOR: white">
							<asp:Table ID="FoldersAndFiles" Runat="server" CellSpacing="1" CellPadding="1" Width="100%" CssClass="sortable">
								<asp:TableRow BackColor="#f0f0f0">
									<asp:TableHeaderCell Width="16px" >
						<asp:ImageButton ID="Delete" Runat="server" AlternateText="[[Deletefiles]]"
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)" ImageUrl="../images/s_cut.gif"
							Visible="true" OnClick="Delete_Click" />
									</asp:TableHeaderCell>
									<asp:TableHeaderCell Width="16px" >
						<asp:ImageButton ID="DoRefresh" Runat="server" AlternateText="[[Refresh]]" ImageUrl="../images/s_refresh.gif"
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)" Visible="true"
							OnClick="DoRefresh_Click" />
									</asp:TableHeaderCell>
									<asp:TableHeaderCell ID="name_Cell" Width="146px" CssClass="filelistHeadCol" Font-Bold="False">[[Name]]</asp:TableHeaderCell>
									<asp:TableHeaderCell ID="size_Cell" Width="62px" CssClass="filelistHeadCol" Font-Bold="False">[[Count]]/[[Size]]</asp:TableHeaderCell>
									<asp:TableHeaderCell ID="op_Cell"  Width="16px">&nbsp;</asp:TableHeaderCell>
								</asp:TableRow>
							</asp:Table>
						</div>
					</td>
					<td width="10">&nbsp;
					</td>
					<td width="10" nowrap>&nbsp;
					</td>
					<td valign="top">
						<div style="Height:240px; WIDTH: 320px; BORDER: 1.0pt inset; PADDING: 5px;VERTICAL-ALIGN: top; OVERFLOW: auto;BACKGROUND-COLOR: white; TEXT-ALIGN: center">
							<div id="divpreview" style="BACKGROUND-COLOR: white" style="width:100%">
								<img id="img_demo" src="../images/1x1.gif">
							</div>
						</div>
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="2" cellpadding="0" width="630" align="center">
				<tr>
					<td valign="top" width="225px">
						<fieldset>
							<legend>
								[[Layout]]</legend>
							<table border="0" cellpadding="5" cellspacing="0" width="220px">
								<tr>
									<td>
										<table border="0" cellpadding="2" cellspacing="0" class="normal" width="220">
											<tr>
												<td width="100">[[Alignment]]:</td>
												<td>
													<select name="ImgAlign" style="WIDTH : 80px" ID="Align" onchange="do_preview()" onpropertychange="do_preview()"
														runat="server">
														<OPTION id="optNotSet" value="">[[Notset]]</OPTION>
														<OPTION id="optLeft" value="left">[[Left]]</OPTION>
														<OPTION id="optRight" value="right">[[Right]]</OPTION>
														<OPTION id="optTexttop" value="textTop">[[Texttop]]</OPTION>
														<OPTION id="optAbsMiddle" value="absMiddle">[[Absmiddle]]</OPTION>
														<OPTION id="optBaseline" value="baseline" selected>[[Baseline]]</OPTION>
														<OPTION id="optAbsBottom" value="absBottom">[[Absbottom]]</OPTION>
														<OPTION id="optBottom" value="bottom">[[Bottom]]</OPTION>
														<OPTION id="optMiddle" value="middle">[[Middle]]</OPTION>
														<OPTION id="optTop" value="top">[[Top]]</OPTION>
													</select>
												</td>
											</tr>
											<tr>
												<td nowrap>[[Bordersize]]:</td>
												<td>
													<INPUT type="text" SIZE="2" name="Border" onchange="do_preview()" style="WIDTH : 80px" ID="Border">
												</td>
											</tr>
											<tr>
												<td nowrap>[[Bordercolor]]:</td>
												<td>
													<input type="text" id="bordercolor" name="bordercolor" size="7" style="WIDTH:57px">	
													<img id="s_bordercolor" src="../images/colorpicker.gif" onclick="SelectColor('bordercolor','s_bordercolor');" align="absMiddle">
												</td>
											</tr>
											<tr>
												<td colspan="2">
													<table border="0" cellpadding="0" cellspacing="0" class="normal">
														<tr>
															<td width="100" nowrap>[[Width]]:</td>
															<td>
																<INPUT type="text" SIZE="2" onkeyup="checkConstrains('width');" style="WIDTH : 80px" id="inp_width">
															</td>
															<td rowspan="2" align="right" valign="middle"><img src="../images/locked.gif" id="imgLock" width="25" height="32" alt="Constrained Proportions" /></td>
														</tr>
														<tr>
															<td nowrap>[[Height]]:</td>
															<td>
																<INPUT type="text" SIZE="2" onkeyup="checkConstrains('height');" style="WIDTH : 80px" id="inp_height">
															</td>
														</tr>
														<tr>
															<td colspan="2">
																<input type="checkbox" id="constrain_prop" checked onclick="javascript:toggleConstrains();" />
																Constrain Proportions</td>
														</tr>
													</table>
												</td>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
						<fieldset><legend>[[Spacing]]</legend>
							<table border="0" cellpadding="5" cellspacing="0">
								<tr>
									<td>
										<table border="0" cellpadding="2" cellspacing="0" class="normal">
											<tr>
												<td valign="middle" width="100">[[Horizontal]]:</td>
												<td><INPUT type="text" SIZE="2" name="HSpace" value="" onchange="do_preview()" style="WIDTH:80px" id="HSpace">
												</td>
											</tr>
											<tr>
												<td valign="middle">[[Vertical]]:</td>
												<td><INPUT type="text" SIZE="2" name="VSpace" value="" onchange="do_preview()" style="WIDTH:80px" id="VSpace"></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
					</td>
					<td width="10">
					</td>
					<td valign="top"  width="330px">
						<fieldset style="width:315px">
							<legend>
								[[Insert]]</legend>
							<table border="0" cellpadding="4" cellspacing="0" width="280px">
								<tr>
									<td>
										<table border="0" cellpadding="1" cellspacing="0" class="normal">
											<tr>
												<td valign="middle">
													URL:</td>
												<td colspan="3">
													<input type="text" id="TargetUrl" onpropertychange="do_preview()" size="42" name="TargetUrl"
														runat="server"></td>
												<td></td>
											</tr>
											<tr>
												<td valign="middle">[[Alternate]]:</td>
												<td valign="middle"><input type="text" id="AlternateText" size="20" NAME="AlternateText"></td>
												<td valign="middle" nowrap>[[ID]]:</td>
												<td><input type="text" id="inp_id" size="14"></td>
												<td></td>
											</tr>
											<tr>
												<td valign="middle" nowrap>[[longDesc]]:</td>
												<td valign="middle" colspan="3"><input type="text" id="longDesc" size="42" NAME="longDesc"></td>
												<td><img src="../images/Accessibility.gif" align="absMiddle" hspace="5"></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
						<fieldset style="width:315px" align="center" id="fieldsetUpload">
							<legend>
								[[Upload]] (Max file size allowed
								<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxImageSize * 1024)%>
								)</legend>
							<table border="0" cellspacing="2" cellpadding="0"  width="280px" class="normal" align="center">
								<tr>
									<td valign="top" style="FONT-SIZE: 8pt; VERTICAL-ALIGN: middle; FONT-FAMILY: MS Sans Serif">
										<asp:Label ID="Label_PictureUpload" Runat="server"></asp:Label>
										<input id="InputFile" size="45" type="file" runat="server" style="HEIGHT:20px" name="InputFile">&nbsp; <br>
										<asp:Button ID="uploadButton" Text="[[Upload]]" Runat="server" OnClick="uploadButton_Click" />&nbsp;
									</td>
								</tr>
								<tr>
									<td height="5">
									</td>
								</tr>
								<tr>
									<td>
										<% if(secset.RestrictUploadedImageDimension) {%>
										<li>
											Max image dimension is
											<%= secset.MaxImageWidth%>
											x
											<%= secset.MaxImageHeight%>
											pixels.
										</li>
										<li>
											Auto resize uploaded images function is
											<%= secset.AutoResizeUploadedImages? "on":"off" %>
											.</li>
										<%}%>
										<li>
											<table cellpadding="0" cellspacing="0" border="0" style="display:inline">
												<tr>
													<td>
														<nobr>
															Max Upload folder size is : <%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxImageFolderSize * 1024)%>.
															Used: <%= CuteEditor.Impl.FileStorage.FormatSize(fs.GetDirectorySize(fs.VirtualRoot)) %>&nbsp;&nbsp;
														</nobr>
													</td>
													<td>
														<div style="background-color:green;height:3px;width:40;font-size:3px">
															<div style="background-color:red;height:3px;width:<%= GetUsedSpaceBarWidth() %>px;font-size:3px"></div>
														</div>
													</td>
												</tr>
											</table>
											
										</li>
									</td>
								</tr>
							</table>
						</fieldset>
						<p align="center">
							<input class="inputbuttoninsert" type="button" value="[[Insert]]" onclick="do_insert()"
								id="Button1">&nbsp;&nbsp;&nbsp; <input class="inputbuttoncancel" type="button" value="[[Cancel]]" onclick="do_cancel()"
								id="Button2">
						</p>
					</td>
				</tr>
			</table>
		</form>
		<script runat="server">
			protected override void InitOfType()
			{
				fs.VirtualRoot=CuteEditor.EditorUtility.ProcessWebPath(Context,null,secset.ImageGalleryPath).TrimEnd('/')+"/";
			}
			protected override void GetFiles(ArrayList files)
			{
				foreach (string ext in secset.ImageFilters)
				{
					if (ext == null || ext.Length == 0) continue;

					files.AddRange(fs.GetFileItems(CurrentDirectory, secset.FileNamePrefix + "*" + ext));
				}
			}
			protected override bool AllowFileName(string filename)
			{
				filename = filename.ToLower();
				foreach (string ext in secset.ImageFilters)
				{
					if (ext == null || ext.Length == 0) continue;
					if(filename.EndsWith(ext.ToLower()))
						return true;
				}
				return false;
			}
		    
			protected int GetUsedSpaceBarWidth()
			{
			int w = Convert.ToInt32(40*fs.GetDirectorySize(fs.VirtualRoot)/(secset.MaxImageFolderSize * 1024));
			if(w<1)
				w=1;
				
			if(w>40)
				w=40;
				
			return w;      
			}
		    
			protected override string CheckUploadData(ref byte[] data)
			{     
			if (fs.GetDirectorySize(fs.VirtualRoot) >= secset.MaxImageFolderSize * 1024)
				return "Image folder size exceeds the limit: "+ CuteEditor.Impl.FileStorage.FormatSize(secset.MaxImageFolderSize * 1024);
		       
				System.Drawing.Image img;
				try
				{
					img = System.Drawing.Image.FromStream(new System.IO.MemoryStream(data));
				}
				catch
				{
					return "Image is in the wrong format.";
				}

				//let base class to implement
				/*
		        
				if (data.Length >= secset.MaxImageSize * 1024)
				return "Image size exceeds "+CuteEditor.Impl.FileStorage.FormatSize(secset.MaxImageSize * 1024)+" limit: "+ CuteEditor.Impl.FileStorage.FormatSize(data.Length);


				if(secset.RestrictUploadedImageDimension)
				{
					if(secset.AutoResizeUploadedImages)
					{
						return null;//let base class implement the secset.AutoResizeUploadedImages
					}
					else
					{
						if ((img.Width > secset.MaxImageWidth) || ((img.Height > secset.MaxImageHeight)))
							return String.Format("Image dimension ({0} x {1} pixels) exceeding limits.", img.Width, img.Height);
					}	
				}
				*/
				
				return null;
			}
		</script>
		<script src="addvars.js"></script>
		<script>		
			
			var OxOd283=["availWidth","availHeight","dialogArguments","opener","editor","editdoc","img","inp_width","inp_height","inp_id","VSpace","HSpace","Border","bordercolor","bordercolor_Preview","AlternateText","longDesc","Align","TargetUrl","frameloaded","src","value","width","height","id","vspace","hspace","border","borderColor","style","backgroundColor","align","alt","","file","../images/1x1.gif","\x3Cimg id=preview_image onmousewheel=\x22return Picture(this);\x22","border-color=","/\x3E","innerHTML","IMG","[[ValidID]]","Please choose an image to insert","DIV","Delete"," ","=\x22","\x22","length","imgLock","constrain_prop","checked","../images/locked.gif","preview_image","specified","nodeName"]; window.resizeTo(0x280,0x249) ; window.moveTo((screen[OxOd283[0x0]]-0x258)/0x2,(screen[OxOd283[0x1]]-0x190)/0x2) ;var dialogArguments=window[OxOd283[0x3]][OxOd283[0x2]];var obj=window[OxOd283[0x3]][OxOd283[0x2]];var editor=obj[OxOd283[0x4]];var editdoc=obj[OxOd283[0x5]];var oControl=obj[OxOd283[0x6]]; window.focus() ;var inp_width=document.getElementById(OxOd283[0x7]);var inp_height=document.getElementById(OxOd283[0x8]);var inp_id=document.getElementById(OxOd283[0x9]);var VSpace=document.getElementById(OxOd283[0xa]);var HSpace=document.getElementById(OxOd283[0xb]);var Border=document.getElementById(OxOd283[0xc]);var bordercolor=document.getElementById(OxOd283[0xd]);var bordercolor_Preview=document.getElementById(OxOd283[0xe]);var AlternateText=document.getElementById(OxOd283[0xf]);var longDesc=document.getElementById(OxOd283[0x10]);var Align=document.getElementById(OxOd283[0x11]);var Border=document.getElementById(OxOd283[0xc]);var TargetUrl=document.getElementById(OxOd283[0x12]);if(!top[OxOd283[0x13]]){ top[OxOd283[0x13]]=true ;if(oControl){if(oControl[OxOd283[0x14]]){ TargetUrl[OxOd283[0x15]]=oControl.getAttribute(OxOd283[0x14]) ;} ;if(oControl[OxOd283[0x16]]>0x0){ inp_width[OxOd283[0x15]]=oControl[OxOd283[0x16]] ;} ;if(oControl[OxOd283[0x17]]>0x0){ inp_height[OxOd283[0x15]]=oControl[OxOd283[0x17]] ;} ;if(oControl[OxOd283[0x18]]){ inp_id[OxOd283[0x15]]=oControl[OxOd283[0x18]] ;} ;if(oControl[OxOd283[0x19]]&&oControl[OxOd283[0x19]]>=0x0){ VSpace[OxOd283[0x15]]=oControl[OxOd283[0x19]] ;} ;if(oControl[OxOd283[0x1a]]&&oControl[OxOd283[0x1a]]>=0x0){ HSpace[OxOd283[0x15]]=oControl[OxOd283[0x1a]] ;} ;if(oControl[OxOd283[0x1b]]){ Border[OxOd283[0x15]]=oControl[OxOd283[0x1b]] ;} ;if(oControl[OxOd283[0x1d]][OxOd283[0x1c]]||GetAttribute(oControl,OxOd283[0xd])){ bordercolor[OxOd283[0x15]]=oControl[OxOd283[0x1d]][OxOd283[0x1c]]||GetAttribute(oControl,OxOd283[0xd]) ;} ;if(bordercolor[OxOd283[0x15]]){ bordercolor[OxOd283[0x1d]][OxOd283[0x1e]]=bordercolor[OxOd283[0x15]] ;} ;if(oControl[OxOd283[0x1f]]){ Align[OxOd283[0x15]]=oControl[OxOd283[0x1f]] ;} ;if(oControl[OxOd283[0x20]]){ AlternateText[OxOd283[0x15]]=oControl[OxOd283[0x20]] ;} ;if(oControl[OxOd283[0x10]]){ longDesc[OxOd283[0x15]]=oControl[OxOd283[0x10]] ;} ;} ;} ; function Actualsize(){try{var Oxb9= new Image(); Oxb9[OxOd283[0x14]]=TargetUrl[OxOd283[0x15]] ;if(Oxb9[OxOd283[0x16]]){ inp_width[OxOd283[0x15]]=Oxb9[OxOd283[0x16]] ;} ;if(Oxb9[OxOd283[0x17]]){ inp_height[OxOd283[0x15]]=Oxb9[OxOd283[0x17]] ;} ;} catch(er){} ; do_preview() ;}  ; function ResetFields(){ TargetUrl[OxOd283[0x15]]=OxOd283[0x21] ; inp_width[OxOd283[0x15]]=OxOd283[0x21] ; inp_height[OxOd283[0x15]]=OxOd283[0x21] ; inp_id[OxOd283[0x15]]=OxOd283[0x21] ; VSpace[OxOd283[0x15]]=OxOd283[0x21] ; HSpace[OxOd283[0x15]]=OxOd283[0x21] ; Border[OxOd283[0x15]]=OxOd283[0x21] ; bordercolor[OxOd283[0x15]]=OxOd283[0x21] ; bordercolor[OxOd283[0x1d]][OxOd283[0x1e]]=OxOd283[0x21] ; Align[OxOd283[0x15]]=OxOd283[0x21] ; AlternateText[OxOd283[0x15]]=OxOd283[0x21] ; longDesc[OxOd283[0x15]]=OxOd283[0x21] ;}  ;var sCheckFlag=OxOd283[0x22]; do_preview() ; function do_preview(){var Ox5af=TargetUrl[OxOd283[0x15]];if(Ox5af==OxOd283[0x21]){ Ox5af=OxOd283[0x23] ;} ;var Ox17f=OxOd283[0x24]+attr(OxOd283[0x14],Ox5af)+attr(OxOd283[0x20],AlternateText.value)+attr(OxOd283[0x1f],Align.value)+((inp_width[OxOd283[0x15]])?attr(OxOd283[0x16],inp_width.value):OxOd283[0x21])+((inp_height[OxOd283[0x15]])?attr(OxOd283[0x17],inp_height.value):OxOd283[0x21])+((VSpace[OxOd283[0x15]])?attr(OxOd283[0x19],VSpace.value):OxOd283[0x21])+((HSpace[OxOd283[0x15]])?attr(OxOd283[0x1a],HSpace.value):OxOd283[0x21])+((Border[OxOd283[0x15]])?attr(OxOd283[0x1b],Border.value):attr(OxOd283[0x1b],0x0))+(((bordercolor[OxOd283[0x15]])&&(Border[OxOd283[0x15]]>0x0))?attr(OxOd283[0x1d],OxOd283[0x25]+bordercolor.value):OxOd283[0x21])+OxOd283[0x26]; divpreview[OxOd283[0x27]]=Ox17f ;}  ; function do_insert(){if(oControl){var Oxb9=oControl;} else {var Oxb9=document.createElement(OxOd283[0x28]);} ; Oxb9[OxOd283[0x14]]=TargetUrl[OxOd283[0x15]] ; Oxb9[OxOd283[0x18]]=inp_id[OxOd283[0x15]] ;var Ox535=/[^a-z\d]/i;if(Ox535.test(inp_id.value)){ alert(OxOd283[0x29]) ;return ;} ;if(inp_width[OxOd283[0x15]]!=OxOd283[0x21]){ Oxb9[OxOd283[0x16]]=inp_width[OxOd283[0x15]] ;} ;if(inp_height[OxOd283[0x15]]!=OxOd283[0x21]){ Oxb9[OxOd283[0x17]]=inp_height[OxOd283[0x15]] ;} ; Oxb9[OxOd283[0x19]]=VSpace[OxOd283[0x15]] ; Oxb9[OxOd283[0x1a]]=HSpace[OxOd283[0x15]] ; Oxb9[OxOd283[0x1b]]=Border[OxOd283[0x15]] ;try{ Oxb9[OxOd283[0x1d]][OxOd283[0x1c]]=bordercolor[OxOd283[0x15]] ;} catch(er){} ; Oxb9[OxOd283[0x1f]]=Align[OxOd283[0x15]] ; Oxb9[OxOd283[0x20]]=AlternateText[OxOd283[0x15]] ; Oxb9[OxOd283[0x10]]=longDesc[OxOd283[0x15]] ;if(TargetUrl[OxOd283[0x15]]==OxOd283[0x21]){ alert(OxOd283[0x2a]) ;return false;} ;if(!oControl){var div=document.createElement(OxOd283[0x2b]); div.appendChild(Oxb9) ; editdoc.execCommand(OxOd283[0x2c],false,OxOd283[0x21]) ; editor.PasteHTML(div.innerHTML) ;} ; top.close() ;}  ; function attr(name,Ox223){if(!Ox223||Ox223==OxOd283[0x21]){return OxOd283[0x21];} ;return OxOd283[0x2d]+name+OxOd283[0x2e]+Ox223+OxOd283[0x2f];}  ; function do_cancel(){ top.close() ;}  ; function GetPreviewedImage(){var Ox355=divpreview.getElementsByTagName(OxOd283[0x28]);if(Ox355&&Ox355[OxOd283[0x30]]>0x0){return Ox355.item(0x0);} else {return null;} ;}  ; function toggleConstrains(){var Ox5b2=document.getElementById(OxOd283[0x31]);var Ox5b3=document.getElementById(OxOd283[0x32]);if(Ox5b3[OxOd283[0x33]]){ Ox5b2[OxOd283[0x14]]=OxOd283[0x34] ; checkConstrains(OxOd283[0x16]) ;} else { Ox5b2[OxOd283[0x14]]=OxOd283[0x23] ;} ;}  ;var checkingConstrains=false; function checkConstrains(Ox197){if(checkingConstrains){return ;} ; checkingConstrains=true ;try{var Ox5b3=document.getElementById(OxOd283[0x32]);if(Ox5b3[OxOd283[0x33]]){var Ox69a=document.getElementById(OxOd283[0x35]);var Ox5b6= new Image(); Ox5b6[OxOd283[0x14]]=TargetUrl[OxOd283[0x15]] ; original_width=Ox5b6[OxOd283[0x16]] ; original_height=Ox5b6[OxOd283[0x17]] ;if(original_width>0x0&&original_height>0x0){ width=inp_width[OxOd283[0x15]] ; height=inp_height[OxOd283[0x15]] ;if(Ox197==OxOd283[0x16]){if(width[OxOd283[0x30]]==0x0||isNaN(width)){ inp_width[OxOd283[0x15]]=OxOd283[0x21] ; inp_height[OxOd283[0x15]]=OxOd283[0x21] ;return ;} else { height=parseInt(width*original_height/original_width) ; inp_height[OxOd283[0x15]]=height ;} ;} ;if(Ox197==OxOd283[0x17]){if(height[OxOd283[0x30]]==0x0||isNaN(height)){ inp_width[OxOd283[0x15]]=OxOd283[0x21] ; inp_height[OxOd283[0x15]]=OxOd283[0x21] ;return ;} else { width=parseInt(height*original_width/original_height) ; inp_width[OxOd283[0x15]]=width ;} ;} ;} ;} ; do_preview() ;} finally{ checkingConstrains=false ;} ;}  ; function GetAttribute(Ox2fc,Ox512){if(Ox2fc){var attr=Ox2fc.getAttributeNode(Ox512);if(attr&&attr[OxOd283[0x36]]){return Ox2fc[attr[OxOd283[0x37]]];} ;return OxOd283[0x21];} else {return OxOd283[0x21];} ;}  ; function SelectColor(Ox683,Ox19a){var Ox3b6= new ColorPicker(Ox19a,Ox683); Ox3b6.showPopup() ;}  ;

	</script>
	</body>
</HTML>
