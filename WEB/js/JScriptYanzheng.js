﻿// JScript 文件
    function changFocus()
   {
	 if(event.keyCode==13&&event.srcElement.type!='button'
	 &&event.srcElement.type!='submit'
	 &&event.srcElement.type!='textarea'
	 &&event.srcElement.type!='')
	 { 
	   event.keyCode=9;
	 } 
   }
    document.onkeydown=changFocus;

  
    //只能请输入数字或英文字母或下划线
    //验证用户名的输入
     function checkinputloginname(ithis,counts,divid)
    {
     var val;   
    if (!e)   
    {   
        var e = window.event;   
    }   
  
   if (e.keyCode)   
    {   
        val = e.keyCode;   
    }   
    else if(e.which)    
    {   
        val = e.which;   
   }   


     if(val==13){}
     else
     {
      if(val!=8)
      {
                if(ithis.value.length >counts-1)
                {
                  return false;
                }
                if(ithis.value.length <counts-1)
                {
                     if(val>=48&&val<=57||val>=96&&val<=105||val>=65&&val<=90||val==189)
                     {
                     document .getElementById (divid).style.display ="none";
                     return true;
                     }
                     else
                     {
                     document.getElementById (divid).innerHTML="请输入数字或英文字母或下划线";
                     document .getElementById (divid).style.display ="inline";
                     return false ;
                     }
                }
                if(ithis.value.length==counts-1)
                {
                     if(val>=48&&val<=57||val>=96&&val<=105||val>=65&&val<=90||val==189)
                     {
                     document .getElementById (divid).style.display ="none";
                     return true;
                     }
                     else
                     {
                     document.getElementById (divid).innerHTML="请输入数字或英文字母或下划线";
                     document .getElementById (divid).style.display ="inline";
                     return false ;
                     }
                }
        
       }
      else if(val==8)
       {
          document .getElementById (divid).style.display ="none";
          return true ;
       }
    }
  }
  
  //只能输入数字或者英文字母的密码有长度限制
  //验证密码的输入
  function checkinputpass(ithis,counts,divid)
    {
     var s=event.keyCode;
     if(s==13){}
     else
     {
      if(s!=8)
      {
                if(ithis.value.length >counts-1)
                {
                  return false;
                }
                if(ithis.value.length <counts-1)
                {
                     if(s>=48&&s<=57||s>=96&&s<=105||s>=65&&s<=90)
                     {
                     document .getElementById (divid).style.display ="none";
                     return true;
                     }
                     else
                     {
                     document.getElementById (divid).innerHTML="请输入数字或英文字母";
                     document .getElementById (divid).style.display ="inline";
                     return false ;
                     }
                }
                if(ithis.value.length==counts-1)
                {
                     if(s>=48&&s<=57||s>=96&&s<=105||s>=65&&s<=90)
                     {
                     document .getElementById (divid).style.display ="none";
                     return true;
                     }
                     else
                     {
                     document.getElementById (divid).innerHTML="请输入数字或英文字母";
                     document .getElementById (divid).style.display ="inline";
                     return false ;
                     }
                }
        
       }
      else if(s==8)
       {
          document .getElementById (divid).style.display ="none";
          return true ;
       }
    }
  }
  
    //验证只能输入手机
    //手机号码的输入验证
    function checkinputphone(ithis,counts,divid)
    {
     var s=event.keyCode;
     if(s==13){}
     else
     {
      if(s!=8)
      {
                if(ithis.value.length >counts-1)
                {
                  return false;
                }
                if(ithis.value.length <counts-1)
                {
                     if(s>=48&&s<=57||s>=96&&s<=105)
                     {
                        if(ithis.value.length==1)
                        {
                          if(ithis.value!="1")
                          {
                           document.getElementById (divid).innerHTML="手机号码以1开头";
                           document .getElementById (divid).style.display ="inline";
                           return false;
                          }
                        }
                       else
                       {
                         document .getElementById (divid).style.display ="none";
                         return true;             
                       }

                     }
                     else
                     {
                     document.getElementById (divid).innerHTML="请输入数字";
                     document .getElementById (divid).style.display ="inline";
                     return false ;
                     }
                }
                if(ithis.value.length==counts-1)
                {
                     if(s>=48&&s<=57||s>=96&&s<=105)
                     {
                     document .getElementById (divid).style.display ="none";
                     return true;
                     }
                     else
                     {
                     document.getElementById (divid).innerHTML="请输入数字";
                     document .getElementById (divid).style.display ="inline";
                     return false ;
                     }
                }
        
       }
      else if(s==8)
       {
          document .getElementById (divid).style.display ="none";
          return true ;
       }
    }
  }
  
   //只能输入电话号码
   function checkinputTel(divid)
    {
     var s=event.keyCode;
     if(s==13){}
     else
     {
      if(s!=8)
      {

                     if(s>=48&&s<=57||s>=96&&s<=105||s==191||s==189)
                     {
                     document .getElementById (divid).style.display ="none";
                     return true;
                     }
                     else
                     {
                     document.getElementById (divid).innerHTML="请输入数字或'/'或下划线";
                     document .getElementById (divid).style.display ="inline";
                     return false ;
                     }
        
       }
      else if(s==8)
       {
          document .getElementById (divid).style.display ="none";
          return true ;
       }
    }
  }
  
   //验证邮编的输入
   function checkinputPostCode(ithis,divid)
    {
     var s=event.keyCode;
     if(s==13){}
     else
     {
      if(s!=8)
      {
                if(ithis.value.length >5)
                {
                  return false;
                }
                if(ithis.value.length <5)
                {
                     if(s>=48&&s<=57||s>=96&&s<=105)
                     {
                     document .getElementById (divid).style.display ="none";
                     return true;
                     }
                     else
                     {
                     document.getElementById (divid).innerHTML="请输入数字";
                     document .getElementById (divid).style.display ="inline";
                     return false ;
                     }
                }
                if(ithis.value.length==5)
                {
                     if(s>=48&&s<=57||s>=96&&s<=105)
                     {
                     document .getElementById (divid).style.display ="none";
                     return true;
                     }
                     else
                     {
                     document.getElementById (divid).innerHTML="请输入数字";
                     document .getElementById (divid).style.display ="inline";
                     return false ;
                     }
                }
        
       }
      else if(s==8)
       {
          document .getElementById (divid).style.display ="none";
          return true ;
       }
    }
  }
    //验证只能输入数字并且有长度限制
    function checkinputshuzi(ithis,counts,divid)
    {
     var s=event.keyCode;
     if(s==13){}
     else
     {
      if(s!=8)
      {
                if(ithis.value.length >counts-1)
                {
                  return false;
                }
                if(ithis.value.length <counts-1)
                {
                     if(s>=48&&s<=57||s>=96&&s<=105)
                     {
                     document .getElementById (divid).style.display ="none";
                     return true;
                     }
                     else
                     {
                     document.getElementById (divid).innerHTML="请输入数字";
                     document .getElementById (divid).style.display ="inline";
                     return false ;
                     }
                }
                if(ithis.value.length==counts-1)
                {
                     if(s>=48&&s<=57||s>=96&&s<=105)
                     {
                     document .getElementById (divid).style.display ="none";
                     return true;
                     }
                     else
                     {
                     document.getElementById (divid).innerHTML="请输入数字";
                     document .getElementById (divid).style.display ="inline";
                     return false ;
                     }
                }
        
       }
      else if(s==8)
       {
          document .getElementById (divid).style.display ="none";
          return true ;
       }
    }
  }
 
      
    //只能输入规定长度字符验证和及时提醒
    function checkinputzifu(dthis,counts,divid)
     {                  
                var i=dthis.value;
                var ids=dthis .value.length;
                if(ids >counts)
                {
                var dsaa=i.substring(0,counts);
                dthis .value=dsaa;
                }   
                var s=event.keyCode;
                if(s==13)
                {
                return false ;
                }
                else
                {
                        if(s!=8)
                        {
                            var leght=dthis .value.length+1;
                            var valueee=counts+1-leght ;
                            document.getElementById (divid).innerHTML =valueee;
                            if(valueee <=0)
                            {
                                document .getElementById (divid).innerHTML="0";
                                if(s!=8)
                                {
                                  return false ;
                                }
                            }
                        } 
                        else
                        {
                            var leght=dthis.value.length;
                           
                            var valueee=counts-leght ;
                            document .getElementById (divid).innerHTML =valueee;
                            if(valueee =0)
                            {
                                document .getElementById (divid).innerHTML="0";
                                if(s!=8)
                                {
                                  return false ;
                                }
                            }
                        }

                }
                
     }
     
     //验证数字大小及时提醒:mincounts最小值 maxcounts最大值
    function checkinputshuzidaxiao(dthis,divid,mincounts,maxcounts)
    {
               if(dthis.value.length>0)
               {
                 if(dthis.value<mincounts||dthis.value>maxcounts)
                 {
                     document.getElementById (divid).innerHTML="输入的数字不合理";
                     document .getElementById (divid).style.display ="inline";
                     return false ;
                  }
                 else
                 {
                     document .getElementById (divid).style.display ="none";
                     return true;
                 }
               }
               else
               {
               return true;
               }

    }
   function outpass(ithis,counts,divid)
   {
       if(ithis.value.length==0)
       {
        document.getElementById (divid).innerHTML="*";
        document.getElementById (divid).style .display ="inline";
        return false;
       }
        else if(ithis.value.length<counts&&ithis.value.length>0)
       {
        document.getElementById (divid).innerHTML="输入的字符不够长度";
        document.getElementById (divid).style .display ="inline";
        return false;
       }
       else
       {
       document.getElementById (divid).style .display ="none";
       return true;
       }

   }
    //ithis:密码的ID ithiss:确认密码的ID
     function outpasses(ithis,ithiss,divid)
   {
       var passvalue=document.getElementById(ithis).value;
       if(ithiss.value.length==0)
       {
        document.getElementById (divid).innerHTML="*";
        document.getElementById (divid).style .display ="inline";
        return false;
       }
        else if(passvalue!=ithiss.value)
       {
        document.getElementById (divid).innerHTML="输入的密码不一致";
        document.getElementById (divid).style .display ="inline";
        return false;
       }
       else
       {
       document.getElementById (divid).style .display ="none";
       return true;
       }

   }
    
   function outphone(ithis,divid)
   {
       if(ithis.value.length>0&&ithis.value.length<11)
      {

        document.getElementById (divid).innerHTML="手机号码填写不正确";
        document.getElementById (divid).style .display ="inline";
        return false;
       
      }
      else
      {
              document.getElementById (divid).style .display ="none";
              return true;
     
      }
   }
   
   function outTel(ithis,ithiss,divid)
   {
     var iphone=document.getElementById (ithis);
     if(iphone.value.length==0&&ithiss.value.length==0)
     {
       document.getElementById (divid).innerHTML="手机和电话至少填一个";
       document.getElementById (divid).style .display ="inline";
       return false;
     }
     else
     {
      document.getElementById (divid).style .display ="none";
      return true;
     }
   }
   
    //验证邮件
    function outemail(ithis,divid)
   {
	   if((ithis.value.charAt(0)=="@")||(ithis.value.charAt(0)=="."))
	   { 
	   	document.getElementById (divid).innerHTML="电子邮件的格式不能以@或者.开头!";
        document .getElementById (divid).style.display ="inline";
		return false;
	   }
	  else if(ithis.value.length==0)
         {
		 document.getElementById (divid).innerHTML="*";
          document .getElementById (divid).style.display ="inline";
		 return false;
		 }
	  else if(ithis.value.indexOf("@",0)==-1)
	     {
	      document.getElementById (divid).innerHTML="电子邮件格式不正确\n必须包含@符号!";
          document .getElementById (divid).style.display ="inline";
		  return false;
	     }
	  else if(ithis.value.indexOf(".",0)==-1)
	     {
		   document.getElementById (divid).innerHTML="电子邮件格式不正确\n必须包含.符号!";
           document .getElementById (divid).style.display ="inline";
		 return false;
	     }
	  else  if(escape(ithis.value).indexOf("%u")!=-1)
         {
           document.getElementById (divid).innerHTML="邮件中不能包含汉字";
           document .getElementById (divid).style.display ="inline";
           return false ;

         }
       else{document .getElementById (divid).style.display ="none";return true;}
 
   }
   
   
   function outpostcode(ithis,divid)
   {
     if(ithis.value.length==0)
     {
      document.getElementById (divid).innerHTML="*";
      document.getElementById (divid).style .display ="inline";
      return false;
     }
     else
     { 
      document.getElementById (divid).style .display ="none";
      return true;
     }
   }
   //贷款金额验证
   function outmoney(ithis,divid)
   {
      if(ithis.value.length==0)
   {
     document.getElementById (divid).innerHTML="*";
     document.getElementById (divid).style .display ="inline";
     return false;
   }
    if(ithis.value.substring(0,1)=="0"&&ithis.value.length>0)
   {
      document.getElementById (divid).innerHTML="无效的数据";
     document.getElementById (divid).style .display ="inline";
     return false;

   }
   else
   {
        document.getElementById (divid).style .display ="none";
     return true;
   }
   }
 //验证码验证
      var code ; //在全局 定义验证码   
     function createCode()   
     {    
       code = "";   
       var codeLength = 6;//验证码的长度   
       var checkCode = document.getElementById("checkCode");   
       var selectChar = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');//所有候选组成验证码的字符，当然也可以用中文的      
       for(var i=0;i<codeLength;i++)   
       {   
        var charIndex = Math.floor(Math.random()*36);   
        code +=selectChar[charIndex];   
       }    
       if(checkCode)   
       {   
         checkCode.className="code";   
         checkCode.value = code;
         checkCode.blur();   
       }        
     }     
   
 function chkPost()
{
       var s=document.getElementById("txtemail").value;
     if(document.getElementById ("txtloginName").value.length<4&&document.getElementById ("txtloginName").value.length>0)
   {
     document.getElementById ("showloginname").innerHTML="输入的字符不够长度";
     document.getElementById ("showloginname").style .display ="inline";
     document.getElementById ("txtloginName").focus();
     return false;
   }
   if(document.getElementById ("txtloginName").value.length==0)
   {
     document.getElementById ("showloginname").innerHTML="*";
     document.getElementById ("showloginname").style .display ="inline";
     document.getElementById ("txtloginName").focus();
     return false;
   }
    if(document.getElementById("showloginname").innerHTML=="用户名已经存在")
    {
     document.getElementById ("txtloginName").focus();
     return false;
    }
    if(document.getElementById ("txtpassword").value.length<6&&document.getElementById ("txtpassword").value.length>0)
   {
     document.getElementById ("showpass").innerHTML="输入的字符不够长度";
     document.getElementById ("showpass").style .display ="inline";
     document.getElementById ("txtpassword").focus();
     return false;
   }
    if(document.getElementById ("txtpassword").value.length==0)
   {
     document.getElementById ("showpass").innerHTML="*";
     document.getElementById ("showpass").style .display ="inline";
     document.getElementById ("txtpassword").focus();
     return false;
   }
   if(document.getElementById ("txtpassword").value!=document.getElementById ("txtpassWords").value)
   {
     document.getElementById ("showpasses").innerHTML="输入的密码不一致";
     document.getElementById ("showpasses").style .display ="inline";
     document.getElementById ("txtpassWords").focus();
     return false;
   }
   if(document.getElementById ("txtMoblie").value.length==0&&document.getElementById ("txtTel").value.length==0)
   {
     document.getElementById ("showTel").innerHTML="手机和电话至少填一个";
     document.getElementById ("showTel").style .display ="inline";
      document.getElementById ("txtMoblie").focus();
     return false;
   }
      if(document.getElementById ("txtMoblie").value.length>0&&document.getElementById ("txtMoblie").value.length<11)
   {
     document.getElementById ("showMoblie").innerHTML="手机号码填写不正确";
     document.getElementById ("showMoblie").style .display ="inline";
     document.getElementById ("txtMoblie").focus();
     return false;
   }



      
	   if((s.charAt(0)=="@")||(s.charAt(0)=="."))
	   { 
	   	document.getElementById ("showemail").innerHTML="电子邮件的格式不能以@或者.开头!";
        document .getElementById ("showemail").style.display ="inline";
        document.getElementById ("txtemail").focus();
		return false;
	   }
	  if(s.length==0)
         {
		 document.getElementById ("showemail").innerHTML="*";
          document .getElementById ("showemail").style.display ="inline";
          document.getElementById ("txtemail").focus();
		 return false;
		 }
	  if(s.indexOf("@",0)==-1)
	     {
	      document.getElementById ("showemail").innerHTML="电子邮件格式不正确\n必须包含@符号!";
          document .getElementById ("showemail").style.display ="inline";
          document.getElementById ("txtemail").focus();
		  return false;
	     }
	if(s.indexOf(".",0)==-1)
	  {
	  document.getElementById ("showemail").innerHTML="电子邮件格式不正确\n必须包含.符号!";
      document .getElementById ("showemail").style.display ="inline";
      document.getElementById ("txtemail").focus();
	  return false;
	  }
	if(escape(s).indexOf("%u")!=-1)
      {
      document.getElementById ("showemail").innerHTML="邮件中不能包含汉字";
      document .getElementById ("showemail").style.display ="inline";
      document.getElementById ("txtemail").focus();
      return false ;

    }
    if(document.getElementById ("txtyanzheng").value.length==0)
   {
     document.getElementById ("showyanzheng").style .display ="inline";
     document.getElementById ("txtyanzheng").focus();
     return false;
   }
      if(document.getElementById("txtyanzheng").value.toUpperCase()!=document.getElementById("checkCode").value)
     {
     document.getElementById ("showyanzheng").innerHTML ="验证码错误";
     document.getElementById ("showyanzheng").style .display ="inline";
     document.getElementById ("txtyanzheng").focus();
     createCode()  ;
     return false;
     }
   else{
    return true;
    }

   }
   
   function checkall()
   {
   if(document.getElementById ("txtCapitalTitle").value.length==0)
   {
     document.getElementById ("showtitle").innerHTML="*";
     document.getElementById ("showtitle").style .display ="inline";
     document.getElementById ("txtCapitalTitle").focus();
     return false;
   }
   if(document.getElementById ("txtCapitalMoney").value.length==0)
   {
     document.getElementById ("showmoney").innerHTML="*";
     document.getElementById ("showmoney").style .display ="inline";
     document.getElementById ("txtCapitalMoney").focus();
     return false;
   }
       if(document.getElementById ("txtCapitalMoney").value.substring(0,1)=="0"&&document.getElementById ("txtCapitalMoney").value.length>0)
   {
      document.getElementById ("showmoney").innerHTML="无效的数据";
     document.getElementById ("showmoney").style .display ="inline";
     document.getElementById ("txtCapitalMoney").focus();
     return false;

   }
      if(document.getElementById ("txtCapitalIntent").value.length==0)
   {
     document.getElementById ("showdescript").innerHTML="*";
     document.getElementById ("showdescript").style .display ="inline";
     document.getElementById ("txtCapitalIntent").focus();
     return false;
   }
   if(document.getElementById ("txtcontactsName").value.length==0)
   {
     document.getElementById ("showname").innerHTML="*";
     document.getElementById ("showname").style .display ="inline";
     document.getElementById ("txtcontactsName").focus();
     return false;
   }
   if(document.getElementById ("txtcontactsphone").value.length==0&&document.getElementById ("txtcontactsTel").value.length==0)
   {
     document.getElementById ("showtel").innerHTML="手机和电话至少填一个";
     document.getElementById ("showtel").style .display ="inline";
      document.getElementById ("txtcontactsTel").focus();
     return false;
   }
      if(document.getElementById ("txtcontactsphone").value.length>0&&document.getElementById ("txtcontactsphone").value.length<11)
   {
     document.getElementById ("showMoblie").innerHTML="手机号码填写不正确";
     document.getElementById ("showMoblie").style .display ="inline";
     document.getElementById ("txtcontactsphone").focus();
     return false;
   }

       var s=document.getElementById("txtcontactsemail").value;
      
	   if((s.charAt(0)=="@")||(s.charAt(0)=="."))
	   { 
	   	document.getElementById ("showemail").innerHTML="电子邮件的格式不能以@或者.开头!";
        document .getElementById ("showemail").style.display ="inline";
        document.getElementById ("txtcontactsemail").focus();
		return false;
	   }
	  if(s.length==0)
         {
		 document.getElementById ("showemail").innerHTML="*";
          document .getElementById ("showemail").style.display ="inline";
          document.getElementById ("txtcontactsemail").focus();
		 return false;
		 }
	  if(s.indexOf("@",0)==-1)
	     {
	      document.getElementById ("showemail").innerHTML="电子邮件格式不正确\n必须包含@符号!";
          document .getElementById ("showemail").style.display ="inline";
          document.getElementById ("txtcontactsemail").focus();
		  return false;
	     }
	if(s.indexOf(".",0)==-1)
	  {
	  document.getElementById ("showemail").innerHTML="电子邮件格式不正确\n必须包含.符号!";
      document .getElementById ("showemail").style.display ="inline";
      document.getElementById ("txtcontactsemail").focus();
	  return false;
	  }
	if(escape(s).indexOf("%u")!=-1)
      {
      document.getElementById ("showemail").innerHTML="邮件中不能包含汉字";
      document .getElementById ("showemail").style.display ="inline";
      document.getElementById ("txtcontactsemail").focus();
      return false ;

    }

    if(document.getElementById ("txtyanzheng").value.length==0)
   {
     document.getElementById ("showpostcode").style .display ="inline";
     document.getElementById ("txtyanzheng").focus();
     return false;
   }
      if(document.getElementById("txtyanzheng").value.toUpperCase()!=document.getElementById("checkCode").value)
     {
     document.getElementById ("showpostcode").innerHTML ="验证码错误";
     document.getElementById ("showpostcode").style .display ="inline";
     document.getElementById ("txtyanzheng").focus();
        createCode()  ;
     return false;
     }
   else{
    return true;
    }

   }
   
      
   function checkalls()
   {
   if(document.getElementById ("txtCapitalTitle").value.length==0)
   {
     document.getElementById ("showtitle").innerHTML="*";
     document.getElementById ("showtitle").style .display ="inline";
     document.getElementById ("txtCapitalTitle").focus();
     return false;
   }
   if(document.getElementById ("txtCapitalMoney").value.length==0)
   {
     document.getElementById ("showmoney").innerHTML="*";
     document.getElementById ("showmoney").style .display ="inline";
     document.getElementById ("txtCapitalMoney").focus();
     return false;
   }
       if(document.getElementById ("txtCapitalMoney").value.substring(0,1)=="0"&&document.getElementById ("txtCapitalMoney").value.length>0)
   {
      document.getElementById ("showmoney").innerHTML="无效的数据";
     document.getElementById ("showmoney").style .display ="inline";
     document.getElementById ("txtCapitalMoney").focus();
     return false;

   }
      if(document.getElementById ("txtCapitalIntent").value.length==0)
   {
     document.getElementById ("showdescript").innerHTML="*";
     document.getElementById ("showdescript").style .display ="inline";
     document.getElementById ("txtCapitalIntent").focus();
     return false;
   }
   if(document.getElementById ("txtenterpriseName").value.length==0)
   {
     document.getElementById ("showenterpriseName").innerHTML="*";
     document.getElementById ("showenterpriseName").style .display ="inline";
     document.getElementById ("txtenterpriseName").focus();
     return false;
   }
   if(document.getElementById ("txtcontactsName").value.length==0)
   {
     document.getElementById ("showname").innerHTML="*";
     document.getElementById ("showname").style .display ="inline";
     document.getElementById ("txtcontactsName").focus();
     return false;
   }
   if(document.getElementById ("txtcontactsphone").value.length==0&&document.getElementById ("txtcontactsTel").value.length==0)
   {
     document.getElementById ("showtel").innerHTML="手机和电话至少填一个";
     document.getElementById ("showtel").style .display ="inline";
      document.getElementById ("txtcontactsTel").focus();
     return false;
   }
      if(document.getElementById ("txtcontactsphone").value.length>0&&document.getElementById ("txtcontactsphone").value.length<11)
   {
     document.getElementById ("showMoblie").innerHTML="手机号码填写不正确";
     document.getElementById ("showMoblie").style .display ="inline";
     document.getElementById ("txtcontactsphone").focus();
     return false;
   }

       var s=document.getElementById("txtcontactsemail").value;
      
	   if((s.charAt(0)=="@")||(s.charAt(0)=="."))
	   { 
	   	document.getElementById ("showemail").innerHTML="电子邮件的格式不能以@或者.开头!";
        document .getElementById ("showemail").style.display ="inline";
        document.getElementById ("txtcontactsemail").focus();
		return false;
	   }
	  if(s.length==0)
         {
		 document.getElementById ("showemail").innerHTML="*";
          document .getElementById ("showemail").style.display ="inline";
          document.getElementById ("txtcontactsemail").focus();
		 return false;
		 }
	  if(s.indexOf("@",0)==-1)
	     {
	      document.getElementById ("showemail").innerHTML="电子邮件格式不正确\n必须包含@符号!";
          document .getElementById ("showemail").style.display ="inline";
          document.getElementById ("txtcontactsemail").focus();
		  return false;
	     }
	if(s.indexOf(".",0)==-1)
	  {
	  document.getElementById ("showemail").innerHTML="电子邮件格式不正确\n必须包含.符号!";
      document .getElementById ("showemail").style.display ="inline";
      document.getElementById ("txtcontactsemail").focus();
	  return false;
	  }
	if(escape(s).indexOf("%u")!=-1)
      {
      document.getElementById ("showemail").innerHTML="邮件中不能包含汉字";
      document .getElementById ("showemail").style.display ="inline";
      document.getElementById ("txtcontactsemail").focus();
      return false ;

    }

    if(document.getElementById ("txtyanzheng").value.length==0)
   {
     document.getElementById ("showpostcode").style .display ="inline";
     document.getElementById ("txtyanzheng").focus();
     return false;
   }
      if(document.getElementById("txtyanzheng").value.toUpperCase()!=document.getElementById("checkCode").value)
     {
     document.getElementById ("showpostcode").innerHTML ="验证码错误";
     document.getElementById ("showpostcode").style .display ="inline";
     document.getElementById ("txtyanzheng").focus();
        createCode()  ;
     return false;
     }
   else{
    return true;
    }

   }
   
   function checkallloansshenhe()
   {



  if(document.getElementById ("txtCapitalTitle").value.length==0)
   {
     document.getElementById ("showtitle").innerHTML="*";
     document.getElementById ("showtitle").style .display ="inline";
     document.getElementById ("txtCapitalTitle").focus();
     return false;
   }
   if(document.getElementById ("txtCapitalMoney").value.length==0)
   {
     document.getElementById ("showmoney").innerHTML="*";
     document.getElementById ("showmoney").style .display ="inline";
     document.getElementById ("txtCapitalMoney").focus();
     return false;
   }
    if(document.getElementById ("txttitle").value.length==0)
   {
     document.getElementById ("showtitles").innerHTML="*";
     document.getElementById ("showtitles").style .display ="inline";
     document.getElementById ("txttitle").focus();
     return false;
   }
   if(document.getElementById ("txtkeywords").value.length==0)
   {
     document.getElementById ("showkeywords").innerHTML="*";
     document.getElementById ("showkeywords").style .display ="inline";
     document.getElementById ("txtkeywords").focus();
     return false;
   }
      if(document.getElementById ("txtdescript").value.length==0)
   {
     document.getElementById ("showdescripta").innerHTML="*";
     document.getElementById ("showdescripta").style .display ="inline";
     document.getElementById ("txtdescript").focus();
     return false;
   }
   
       if(document.getElementById ("txtCapitalMoney").value.substring(0,1)=="0"&&document.getElementById ("txtCapitalMoney").value.length>0)
   {
      document.getElementById ("showmoney").innerHTML="无效的数据";
     document.getElementById ("showmoney").style .display ="inline";
     document.getElementById ("txtCapitalMoney").focus();
     return false;

   }
      if(document.getElementById ("txtCapitalIntent").value.length==0)
   {
     document.getElementById ("showdescript").innerHTML="*";
     document.getElementById ("showdescript").style .display ="inline";
     document.getElementById ("txtCapitalIntent").focus();
     return false;
   }
     if(document.getElementById ("txtcontactsName").value.length==0)
     {
       document.getElementById ("showname").innerHTML="*";
       document.getElementById ("showname").style .display ="inline";
       document.getElementById ("txtcontactsName").focus();
       return false;
      }
   
   if(document.getElementById ("txtcontactsphone").value.length==0&&document.getElementById ("txtcontactsTel").value.length==0)
   {
     document.getElementById ("showtel").innerHTML="手机和电话至少填一个";
     document.getElementById ("showtel").style .display ="inline";
      document.getElementById ("txtcontactsTel").focus();
     return false;
   }
      if(document.getElementById ("txtcontactsphone").value.length>0&&document.getElementById ("txtcontactsphone").value.length<11)
   {
     document.getElementById ("showMoblie").innerHTML="手机号码填写不正确";
     document.getElementById ("showMoblie").style .display ="inline";
     document.getElementById ("txtcontactsphone").focus();
     return false;
   }

       var s=document.getElementById("txtcontactsemail").value;
      
	   if((s.charAt(0)=="@")||(s.charAt(0)=="."))
	   { 
	   	document.getElementById ("showemail").innerHTML="电子邮件的格式不能以@或者.开头!";
        document .getElementById ("showemail").style.display ="inline";
        document.getElementById ("txtcontactsemail").focus();
		return false;
	   }
	  if(s.length==0)
         {
		 document.getElementById ("showemail").innerHTML="*";
          document .getElementById ("showemail").style.display ="inline";
          document.getElementById ("txtcontactsemail").focus();
		 return false;
		 }
	  if(s.indexOf("@",0)==-1)
	     {
	      document.getElementById ("showemail").innerHTML="电子邮件格式不正确\n必须包含@符号!";
          document .getElementById ("showemail").style.display ="inline";
          document.getElementById ("txtcontactsemail").focus();
		  return false;
	     }
	if(s.indexOf(".",0)==-1)
	  {
	  document.getElementById ("showemail").innerHTML="电子邮件格式不正确\n必须包含.符号!";
      document .getElementById ("showemail").style.display ="inline";
      document.getElementById ("txtcontactsemail").focus();
	  return false;
	  }
	if(escape(s).indexOf("%u")!=-1)
      {
      document.getElementById ("showemail").innerHTML="邮件中不能包含汉字";
      document .getElementById ("showemail").style.display ="inline";
      document.getElementById ("txtcontactsemail").focus();
      return false ;

    }

   else{
    return true;
    }
    }
    
       function checkallloansshenhes()
   {
  if(document.getElementById ("txtCapitalTitle").value.length==0)
   {
     document.getElementById ("showtitle").innerHTML="*";
     document.getElementById ("showtitle").style .display ="inline";
     document.getElementById ("txtCapitalTitle").focus();
     return false;
   }
   if(document.getElementById ("txtCapitalMoney").value.length==0)
   {
     document.getElementById ("showmoney").innerHTML="*";
     document.getElementById ("showmoney").style .display ="inline";
     document.getElementById ("txtCapitalMoney").focus();
     return false;
   }
    if(document.getElementById ("txttitle").value.length==0)
   {
     document.getElementById ("showtitles").innerHTML="*";
     document.getElementById ("showtitles").style .display ="inline";
     document.getElementById ("txttitle").focus();
     return false;
   }
   if(document.getElementById ("txtkeywords").value.length==0)
   {
     document.getElementById ("showkeywords").innerHTML="*";
     document.getElementById ("showkeywords").style .display ="inline";
     document.getElementById ("txtkeywords").focus();
     return false;
   }
      if(document.getElementById ("txtdescript").value.length==0)
   {
     document.getElementById ("showdescripta").innerHTML="*";
     document.getElementById ("showdescripta").style .display ="inline";
     document.getElementById ("txtdescript").focus();
     return false;
   }
   
       if(document.getElementById ("txtCapitalMoney").value.substring(0,1)=="0"&&document.getElementById ("txtCapitalMoney").value.length>0)
   {
      document.getElementById ("showmoney").innerHTML="无效的数据";
     document.getElementById ("showmoney").style .display ="inline";
     document.getElementById ("txtCapitalMoney").focus();
     return false;

   }
      if(document.getElementById ("txtCapitalIntent").value.length==0)
   {
     document.getElementById ("showdescript").innerHTML="*";
     document.getElementById ("showdescript").style .display ="inline";
     document.getElementById ("txtCapitalIntent").focus();
     return false;
   }
        if(document.getElementById ("txtenpricename").value.length==0)
     {
       document.getElementById ("showenpricename").innerHTML="*";
       document.getElementById ("showenpricename").style .display ="inline";
       document.getElementById ("txtenpricename").focus();
       return false;
      }
        if(document.getElementById ("txtcontactsName").value.length==0)
     {
       document.getElementById ("showname").innerHTML="*";
       document.getElementById ("showname").style .display ="inline";
       document.getElementById ("txtcontactsName").focus();
       return false;
      }

   
   if(document.getElementById ("txtcontactsphone").value.length==0&&document.getElementById ("txtcontactsTel").value.length==0)
   {
     document.getElementById ("showtel").innerHTML="手机和电话至少填一个";
     document.getElementById ("showtel").style .display ="inline";
      document.getElementById ("txtcontactsTel").focus();
     return false;
   }
      if(document.getElementById ("txtcontactsphone").value.length>0&&document.getElementById ("txtcontactsphone").value.length<11)
   {
     document.getElementById ("showMoblie").innerHTML="手机号码填写不正确";
     document.getElementById ("showMoblie").style .display ="inline";
     document.getElementById ("txtcontactsphone").focus();
     return false;
   }

       var s=document.getElementById("txtcontactsemail").value;
      
	   if((s.charAt(0)=="@")||(s.charAt(0)=="."))
	   { 
	   	document.getElementById ("showemail").innerHTML="电子邮件的格式不能以@或者.开头!";
        document .getElementById ("showemail").style.display ="inline";
        document.getElementById ("txtcontactsemail").focus();
		return false;
	   }
	  if(s.length==0)
         {
		 document.getElementById ("showemail").innerHTML="*";
          document .getElementById ("showemail").style.display ="inline";
          document.getElementById ("txtcontactsemail").focus();
		 return false;
		 }
	  if(s.indexOf("@",0)==-1)
	     {
	      document.getElementById ("showemail").innerHTML="电子邮件格式不正确\n必须包含@符号!";
          document .getElementById ("showemail").style.display ="inline";
          document.getElementById ("txtcontactsemail").focus();
		  return false;
	     }
	if(s.indexOf(".",0)==-1)
	  {
	  document.getElementById ("showemail").innerHTML="电子邮件格式不正确\n必须包含.符号!";
      document .getElementById ("showemail").style.display ="inline";
      document.getElementById ("txtcontactsemail").focus();
	  return false;
	  }
	if(escape(s).indexOf("%u")!=-1)
      {
      document.getElementById ("showemail").innerHTML="邮件中不能包含汉字";
      document .getElementById ("showemail").style.display ="inline";
      document.getElementById ("txtcontactsemail").focus();
      return false ;

    }

   else{
     document.getElementById("imgLoding").style.display="";
    return true;
    }
    }
    
       function checkallloansupdate()
   {



  if(document.getElementById ("txtCapitalTitle").value.length==0)
   {
     document.getElementById ("showtitle").innerHTML="*";
     document.getElementById ("showtitle").style .display ="inline";
     document.getElementById ("txtCapitalTitle").focus();
     return false;
   }
   if(document.getElementById ("txtCapitalMoney").value.length==0)
   {
     document.getElementById ("showmoney").innerHTML="*";
     document.getElementById ("showmoney").style .display ="inline";
     document.getElementById ("txtCapitalMoney").focus();
     return false;
   }
       if(document.getElementById ("txtCapitalMoney").value.substring(0,1)=="0"&&document.getElementById ("txtCapitalMoney").value.length>0)
   {
      document.getElementById ("showmoney").innerHTML="无效的数据";
     document.getElementById ("showmoney").style .display ="inline";
     document.getElementById ("txtCapitalMoney").focus();
     return false;

   }
      if(document.getElementById ("txtCapitalIntent").value.length==0)
   {
     document.getElementById ("showdescript").innerHTML="*";
     document.getElementById ("showdescript").style .display ="inline";
     document.getElementById ("txtCapitalIntent").focus();
     return false;
   }
   if(document.getElementById ("hiddentishi").value==0)
   {
     if(document.getElementById ("txtcontactsName").value.length==0)
     {
       document.getElementById ("showname").innerHTML="*";
       document.getElementById ("showname").style .display ="inline";
       document.getElementById ("txtcontactsName").focus();
       return false;
      }
   }
   if(document.getElementById ("hiddentishi").value==1)
   {
     if(document.getElementById ("txtentriname").value.length==0)
     {
       document.getElementById ("showentiypename").innerHTML="*";
       document.getElementById ("showentiypename").style .display ="inline";
       document.getElementById ("txtentriname").focus();
       return false;
      }
   }

   if(document.getElementById ("txtcontactsphone").value.length==0&&document.getElementById ("txtcontactsTel").value.length==0)
   {
     document.getElementById ("showtel").innerHTML="手机和电话至少填一个";
     document.getElementById ("showtel").style .display ="inline";
      document.getElementById ("txtcontactsTel").focus();
     return false;
   }
      if(document.getElementById ("txtcontactsphone").value.length>0&&document.getElementById ("txtcontactsphone").value.length<11)
   {
     document.getElementById ("showMoblie").innerHTML="手机号码填写不正确";
     document.getElementById ("showMoblie").style .display ="inline";
     document.getElementById ("txtcontactsphone").focus();
     return false;
   }

       var s=document.getElementById("txtcontactsemail").value;
      
	   if((s.charAt(0)=="@")||(s.charAt(0)=="."))
	   { 
	   	document.getElementById ("showemail").innerHTML="电子邮件的格式不能以@或者.开头!";
        document .getElementById ("showemail").style.display ="inline";
        document.getElementById ("txtcontactsemail").focus();
		return false;
	   }
	  if(s.length==0)
         {
		 document.getElementById ("showemail").innerHTML="*";
          document .getElementById ("showemail").style.display ="inline";
          document.getElementById ("txtcontactsemail").focus();
		 return false;
		 }
	  if(s.indexOf("@",0)==-1)
	     {
	      document.getElementById ("showemail").innerHTML="电子邮件格式不正确\n必须包含@符号!";
          document .getElementById ("showemail").style.display ="inline";
          document.getElementById ("txtcontactsemail").focus();
		  return false;
	     }
	if(s.indexOf(".",0)==-1)
	  {
	  document.getElementById ("showemail").innerHTML="电子邮件格式不正确\n必须包含.符号!";
      document .getElementById ("showemail").style.display ="inline";
      document.getElementById ("txtcontactsemail").focus();
	  return false;
	  }
	if(escape(s).indexOf("%u")!=-1)
      {
      document.getElementById ("showemail").innerHTML="邮件中不能包含汉字";
      document .getElementById ("showemail").style.display ="inline";
      document.getElementById ("txtcontactsemail").focus();
      return false ;

    }

   else{
    return true;
    }
    }