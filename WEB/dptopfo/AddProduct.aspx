﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="admin_AddProduct"
    ValidateRequest="false" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>修改产业优势</title>
   <%--<link rel="stylesheet" type="text/css" href="http://dp.topfo.com/css/common.css" />
    <link rel="stylesheet" type="text/css" href="http://dp.topfo.com/css/css.css" />--%>
    <link href="../css/CRM.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../jwysiwyg/jquery.wysiwyg.css" type="text/css" />

    <script type="text/javascript" src="../jwysiwyg/jquery-1.3.2.js"></script>

    <script type="text/javascript" src="../jwysiwyg/jquery.wysiwyg.js"></script>

    <script type="text/javascript">
  $(function()
  {
      $('#txtChina').wysiwyg();
      $('#txtEnglish').wysiwyg();
      
  });
  </script>
    <style type="text/css">
#uploadPic{
	width:200px;
	border:1px solid maroon;
}
#uploadPic1{
	width:0px;
	border:0px solid green;
	
}
</style>

    <script language="javascript" type="text/javascript">
//    function GetMessageLength(str)
//    {
//        var oEditor = FCKeditorAPI.GetInstance(str) ;
//        var oDOM = oEditor.EditorDocument ;
//        var iLength ;
//        if (document.all)        // If Internet Explorer.
//        {
//            iLength = oDOM.body.innerText.length ;
//        }
//        else                    // If Gecko.
//        {
//            var r = oDOM.createRange() ;
//            r.selectNodeContents( oDOM.body ) ;
//            iLength = r.toString().length ;
//        }
//    //oEditor.InsertHtml('')
//    return iLength
//    }  
function a(){
var e=document.getElementById("<%=ddlName.ClientID %>").value;
   if(e=="")
    {
        alert('请选择产业名称');return false;
    }
    if(document.getElementById("<%=txtChina.ClientID %>")=='0')
    {
        alert('中文介绍不能为空');return false;
    }
//    if(GetMessageLength("<%=txtEnglish.ClientID %>")=='0')
//    {
//        alert('英文介绍不能为空');return false;
//    }
}
function ConAudit()
{
document.getElementById("<%=textId.ClientID %>").focus();return false;
}
//取fck内容
function GetMessageContent(str)
{
     var oEditor = FCKeditorAPI.GetInstance(str) ;
     return oEditor.GetXHTML();
} 
function upPicture(file){ 
  var ImageFileExtend = ".gif,.png,.jpg,.bmp"; 
      if(file.value.length>0)   
       {
　　        //判断后缀        
　　        var fileExtend=file.value.substring(file.value.lastIndexOf('.')).toLowerCase();
　　        if(ImageFileExtend.indexOf(fileExtend)>-1)      
　　        {   
　　            //显示预览 
                return true;      
　　        }  
　　         else       
　　        {          
                alert("请上传" + ImageFileExtend + "格式的图片");  
                return false;    
　　        }  
　　　 }
 }
function  aa(){ 
    try{
        document.form2.file.click();
         //document.form2.submit();
       }catch(e)
        { }
       } 
function cheakall(ithis)
    {
    var items = document.getElementsByTagName("input");     
     for(i=0; i<items.length;i++)
     {       
       if(items[i].type=="checkbox")
       {
            items[i].checked =ithis.checked;
       }
     }
    }
    function showCheck()
    {
            if(document.getElementById("imgLoding").style.display=="none")
            {
            document.getElementById("imgLoding").style.display="block";
            }else
            {
            document.getElementById("imgLoding").style.display="none";
            }
    }
    </script>

</head>
<body>
    <form id="form2" runat="server">
        <input type="hidden" id="flag" runat="server" />
      
            <div class="title">
                <h2>
                    <p>
                        <span><b>
                           修改产业优势
                        </b></span>
                    </p>
                </h2>
            </div>
            <table border="0" cellpadding="0" cellspacing="0" class="one_table" style="width: 100%;">
                <tr>
                    <td style="width: 13%" align="center">
                        产业名称：</td>
                    <td>
                        <div style="text-align: left;">
                            <asp:DropDownList ID="ddlName" runat="server" AppendDataBoundItems="true">
                                <asp:ListItem Value="">--请选择名称--</asp:ListItem>
                            </asp:DropDownList><input type="text" style="width: 0px; border: 0px solod;" id="textId"
                                runat="server" /><span style="color: Red;"><asp:Label ID="lblMessage" runat="server"></asp:Label></span>
                        </div>
                        <%--<asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>--%>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        中文介绍：</td>
                    <td align="left" valign="middle">
                     <asp:TextBox ID="txtChina" runat="server" TextMode="MultiLine" Height="183px" Width="98%"></asp:TextBox>
                        
                      <%-- <FCKeditorV2:FCKeditor ID="txtChina" runat="server" Width="99%" Height="300px" BasePath="~/Vfckeditor/">
                        </FCKeditorV2:FCKeditor>--%>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        英文介绍：</td>
                    <td align="left" valign="middle">
                     <asp:TextBox ID="txtEnglish" runat="server" TextMode="MultiLine" Height="183px" Width="98%"></asp:TextBox>
                        
                    <%--<FCKeditorV2:FCKeditor ID="txtEnglish" Width="99%" Height="300px" runat="server" BasePath="~/Vfckeditor/">
                        </FCKeditorV2:FCKeditor>--%>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        上传图片：</td>
                    <td>
                        <div style="text-align: left;">
                            <asp:FileUpload ID="uploadPic" Height="24px" onchange="upPicture(this)" runat="server" />
                            <asp:Button ID="btnUpImage" Height="24px" runat="server" OnClientClick="return showCheck()"
                                CssClass="btn" Text="上 传" OnClick="btnUpImage_Click" Width="67px" />
                            <span style="color: #666666;">(图片须为.gif,.png,.jpg,.bmp格式，大小不超过500K )</span>
                            <div id="imgLoding" style="display: none;" >
                                <img src="http://www.topfo.com/Web13/images/down.gif" alt="Loading" />图片上传中
                            </div>
                        </div>
                    </td>
                </tr>
                <tr style="display: none;" id="photo" runat="server">
                    <td align="center">
                        图片：</td>
                    <td>
                        <asp:DataList ID="DataList1" runat="server" CaptionAlign="Bottom" 
                            RepeatColumns="4" RepeatDirection="Vertical">
                            <HeaderTemplate>
                                <div style="text-align: left; display: inline;">
                                    <input type="checkbox" onclick="cheakall(this)" />全选/反选</div>
                                <asp:Button ID="btnDelete" Height="24px" runat="server" CssClass="button2" Text="删除图片"
                                    OnClick="btnDelete_Click" />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <table style="width: 100%;">
                                    <tr>
                                        <td>
                                            <img alt='<%# Eval("imgName") %>' src='<%#GetType(Convert.ToString(Eval("imgName")))%>'
                                                height="75px" width="100px" /><br />
                                            <asp:CheckBox ID="chckimage" runat="server" CausesValidation="true" />
                                            <asp:HiddenField ID="HiddenField1" Value='<%# Eval("imgName") %>' runat="server" />
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div style="text-align: center">
                            <asp:Button ID="Button1" Height="24px" runat="server" CssClass="btn" OnClick="Button1_Click"
                                OnClientClick="return a()" Text="添加" Width="68px" />
                            <asp:Button ID="btnUpdate" Height="23px" runat="server" CssClass="btn" OnClick="btnUpdate_Click"
                                OnClientClick="return a()" Text="修改" Visible="False" Width="72px" />
                            <input type="button" id="Button3" style="height: 24px; width: 66px;" onclick="history.back();"
                                value="返回" class="btn" />
                        </div>
                    </td>
                </tr>
            </table>
       
    </form>
</body>
</html>
