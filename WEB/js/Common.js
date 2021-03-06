﻿// JScript 文件


//-->*********************获取数据**********************

//############################  Begin  ############################
  function GetData()
  {
     //GetCapital();   //资本资源  
     //GetProject();   //企业项目
     //GetMerchant();   //政府招商
  }
   
   //资本资源
   function GetCapital()
   {
       var ajax = new Ajax();
       ajax.url = "process.aspx";
       ajax.run = "GetCompleteCapital";
       ajax.sendtype = "POST";
       var strPar = "GetCapitalPar=1";
       ajax.str = strPar;
       ajax.Server();    
       
       DisplayPause("divCapital")
   }
   function GetCompleteCapital(e)
   {
        if(e.value!=null)
        {
            document.getElementById("divCapital").innerHTML =e.value;
        }
   }
   
   //企业项目
   function GetProject()
   {
        var ajax = new Ajax();
       ajax.url = "process.aspx";
       ajax.run = "GetCompleteProject";
       ajax.sendtype = "POST";
       var strPar = "GetProjectPar=1";
       ajax.str = strPar;
       ajax.Server();    
       
       DisplayPause("divProject")
   }
   function GetCompleteProject(e)
   {
        if(e.value!=null)
        {
            document.getElementById("divProject").innerHTML =e.value;
        }
   }
   
   
   //政府招商
   function GetMerchant()
   {
       var ajax = new Ajax();
       ajax.url = "process.aspx";
       ajax.run = "GetCompleteMerchant";
       ajax.sendtype = "POST";
       var strPar = "GetMerchantPar=1";
       ajax.str = strPar;
       ajax.Server();    
       
       DisplayPause("divMerchant")
   }
   function GetCompleteMerchant(e)
   {
        if(e.value!=null)
        {
            document.getElementById("divMerchant").innerHTML =e.value;
        }
   }
   
   //############################  结束  ############################
   
   
   
   //*************** BEGIN *************************
   //删除用户
   function DelData(str)
   {
       var ajax = new Ajax();
       ajax.url = "Process.aspx";
       ajax.run = "GetCompleteDelData";
       ajax.sendtype = "POST";
       var strPar = "DelData=1&strID="+str;
       ajax.str = strPar;
       ajax.Server();    
   }
   function GetCompleteDelData(e)
   {
        if(e.value!=null)
        {
            if(e.value=="1")
            {
                alert('删除成功！');
            }
            if(e.value=="2")
            {
                alert('删除失败！');
            }
            if(e.value=='0')
            {
                alert('请选择数据！');
            }
        }
   }
   
   //检查用户名是否存在
   function CheckLoginName(strLoginName)
   {
       var ajax = new Ajax();
       ajax.url = "Process.aspx";
       ajax.run = "GetCompleteCheckLoginName";
       ajax.sendtype = "POST";
       var strPar = "ChkLoginNamePar="+strLoginName;
       ajax.str = strPar;
       ajax.Server(); 
       
   }
   function GetCompleteCheckLoginName(e)
   {
        if(e.value!=null)
        {
            if(e.value=="1")
            {
                alert('该用户名已经存在！.');              
                //kj="<%=this.txtLoginName.ClientID %>";
                //var obj=document.getElementById(kj);
                //obj.value="";
                //obj.focus();
            }
            else
            {
                alert('该用户名可以使用！');
            }
        }
   }
   
   //*************** THE END *************************
   
 
   
   
   function DisplayPause(divId)
   {
        var divEle = document.getElementById(divId);
	    //var strTmp="loading...<img src=\"/Images/spinner.gif\" />";
	    var strTmp="加载中...<img src=\"images/spinner.gif\" />"
	    divEle.innerHTML=strTmp;
   }

   function HideEle(eid)
   {
        var eobj=document.getElementById(eid);
	    if(eobj!=null)
	    {
	        eobj.style.display="none";
	    }
   }

//<--*********************获取数据**********************

var Class = new (function () {

    this.create = function () {
        var cls = function () {this.__class__ = arguments.callee; _construct.apply(this, arguments);}
        _extends(cls, arguments);
        cls.register = function (path, override) {return Class.register(this, path, override);}
        cls.create = _createInstance;
        cls.toString = _toStringClass;
        cls.subclassOf = function (cls) {return _subclassOf(this, cls);}
        cls.superclassOf = function (cls) {return _subclassOf(cls, this);}
        return cls;
    }

    this.register = function (cls, path, override) {
        var override = override || false;
        if (typeof cls != 'function') {
            throw new Error('Class register error: The first argument must be a function');
        }
        var pair = [];
        if (!_parse_path(path, pair)) {
            throw new Error('Class register error: Invalid class path');
        }
        var pkg = pair[0];
        var cn = pair[1];
        var old_class = _class_depository[pkg][cn];
        if (old_class) {
            if (override) {
                delete old_class.__package__;
                delete old_class.__classname__;
            } else {
                throw new Error('Class register error: Class "' + path + '" already exists');
            }
        }
        _class_depository[pkg][cn] = cls;
        cls.__package__ = pkg;
        cls.__classname__ = cn;
        return cls;
    }

    this.get = function (path) {
        var pair = [];
        if (!_parse_path(path, pair, true) || !_class_depository[pair[0]][pair[1]]) {
            throw new Error('Class get error: Class "' + path + '" is not found');
        }
        return _class_depository[pair[0]][pair[1]];
    }

    this.abstractMethod = function () {
        throw new Error('Class runtime error: call an abstract method that has not been implemented');
    }

    this.toString = function () { return '[object Class]'; }

    var _class_depository = {};

    var _parse_path = function (path, pair, check) {
        if (typeof path != 'string' || path.length == 0) {
            return false;
        }
        var arr = path.split('.');
        if (arr.length > 1) {
            pair[0] = arr.slice(0, arr.length - 1).join('.');
            pair[1] = arr[arr.length - 1];
        } else {
            pair[0] = '';
            pair[1] = path;
        }
        if (typeof _class_depository[pair[0]] != 'object') {
            if (check) {
                return false;
            } else {
                _class_depository[pair[0]] = {};
            }
        }
        return true;
    }

    var _createInstance = function () {
        var args = [];
        for (var i = 0; i < arguments.length; i++) {
            args.push('arguments[' + i + ']');
        }
        return eval('new this(' + args.join(', ') + ');');
    }

    var _extends = function (cls, args) {
        cls.__superclasses__ = [];
        for (var i = 0; i < args.length; i++) {
            var superclass = args[i];
            if (typeof superclass == 'string') {
                superclass = Class.get(superclass);
            }
            if (typeof superclass != 'function') {
                throw new Error('Class create error: Invalid superclass: ' + 'args[' + i + ']');
            }
            cls.__superclasses__.push(superclass);
        }
    }

    var _construct = function () {
        var cls = this.__class__;
        for (var i = cls.__superclasses__.length - 1; i >= 0; i--) {
            var s = cls.__superclasses__[i];
            eval('this.super' + i + ' = new s(Class);');
            eval('_extend(this, this.super' + i + ');');
        }
        this.__class__ = cls;
        this.toString = _toStringInstance;
        if (typeof cls.construct == 'function') {
            cls.construct.apply(this, [this, cls]);
        }
        this.getClass = function () {return this.__class__;}
        this.isA = function (cls) {return _subclassOf(this.__class__, cls);}
        this.instanceOf = _instanceOf;
        if (arguments[0] != Class && typeof this.initialize == 'function') {
            this.initialize.apply(this, arguments);
        }
    }

    var _extend = function (dest, src) {
        for (prop in src) {
            if (prop.substr(0, 5) == 'super' && !isNaN(parseInt(prop.substr(5)))) {
                continue;
            }
            dest[prop] = src[prop];
        }
    }

    var _toStringClass = function () {
        if (this.__classname__) {
            if (this.__package__.length > 0) {
                return '[class ' +  this.__package__ + '.' + this.__classname__ + ']';
            } else {
                return '[class ' +  this.__classname__ + ']';
            }
        } else {
            return '[class Anonymous]';
        }
    }

    var _toStringInstance = function () {
        if (this.__class__.__classname__) {
            if (this.__class__.__package__.length > 0) {
                return '[object ' + this.__class__.__package__ + '.' + this.__class__.__classname__ + ']';
            } else {
                return '[object ' + this.__class__.__classname__ + ']';
            }
        } else {
            if (this.__class__) {
                return '[object Anonymous class]';
            } else {
                return '[object Object]';
            }
        }
    }

    var _instanceOf = function (cls) {
        if (typeof cls == 'string') {
            cls = Class.get(cls);
        }
        if (typeof cls != 'function') {
            return false;
        }
        return this.__class__ == cls;
    }

    var _subclassOf = function (cls1, cls2) {
        if (typeof cls1 == 'string') {
            cls1 = Class.get(cls1);
        }
        if (typeof cls2 == 'string') {
            cls2 = Class.get(cls2);
        }
        if (typeof cls1 != 'function' || typeof cls2 != 'function') {
            return false;
        }
        if (!cls1.__superclasses__ || cls1.__superclasses__.constructor != Array) {
            return false;
        }
        for (var i = 0; i < cls1.__superclasses__.length; i++) {
            if (cls1.__superclasses__[i] == cls2) {
                return true;
            } else {
                if (_subclassOf(cls1.__superclasses__[i], cls2)) {
                    return true;
                }
            }
        }
        return false;
    }

});


/* ----------------------------
    Utility methods.
   ---------------------------- */
var Define = (function () {
    var __defined_macros__ = [];
    return (function (name, value) {
        if (arguments.length < 2 || typeof name != 'string') {
            throw new Error('Define error: Usage: Define(\'name\', value);');
        }
        for (var i = 0; i < __defined_macros__.length; i++) {
            if (__defined_macros__[i] == name) {
                return;
            }
        }
        if (typeof value == 'string') {
            eval('window.' + name + ' = "' + value + '";');
        } else {
            if (typeof value == 'number' || typeof value == 'boolean') {
                eval('window.' + name + ' = ' + value + ';');
            } else {
                eval('window.' + name + ' = value ;');
            }
        }
        __defined_macros__.push(name);
    });
})();


/* ----------------------------
    Methods for compatible.
   ---------------------------- */
if (!Array.prototype.push) {
    Array.prototype.push = function () {
        var l = this.length;
        for (var i = 0; i < arguments.length; i++) {
            this[l + i] = arguments[i];
        }
        return this.length;
    }
}

if (!Function.prototype.apply) {
    Function.prototype.apply = function (obj, args) {
        var arr = [];
        var obj = obj || window;
        var args = args || [];
        for (var i = 0; i < args.length; i++) {
            arr[i] = 'args[' + i + ']';
        }
        obj.__tmp_method__ = this;
        var result = eval('obj.__tmp_method__(' + arr.join(', ') + ')');
        delete obj.__tmp_method__;
        return result;
    }
}




//****************************************Ajax处理**************************************
var _run;                                                       // 全局变量,记录委托函数名
var _returnMode;                                                // 全局变量,记录返回值的类型
var _xmlhttp;                                                   // 全局变量,记录当前的xmlhttp
var _AjaxRun = false;

var _AjaxObj;//记录当前处理的AJAX对象
var _Num=0;//当前最大号码

var _NowNum=0;//当前处理的号码,默认为0
var _AjaxArray=new Array();//所有需要处理的人，从1开始


var Ajax = Class.create();
Ajax.construct = function() {
    this.xmlhttp=null;                                          // 定义一个xmlhttp对象
    this.url = "";                                              // 指定要请求的网络路径
    this.str = "";                                              // 指定要传送的参数
    this.sendtype = "POST";                                      // 指定提交方式  默认为Get方式
    this.run = null;                                            // 指定委托函数
    this.returnMode = "Text";                                   // 指定返回值的类型 默认为Text,也可返回XML
    this.isAsynchronism =true;                                  //处理方式，true异步，false同步
    
    this.num=_Num+1;//当有个新的人近来的时候，他的号码就是最大号码+1
    _Num=_Num+1;//新人进来，最大号码也+1
    _AjaxArray[_Num]=this;//将自己加入到排队的人中

   
    this.Server = function()                                    // 请求服务器端
    {
       //if(!_AjaxRun)
       
       //如果没有人在排队，则自己就是第1个人，也就是说轮到自己排队

       if(_NowNum==0)
       {
        _NowNum=1;
       }
       if(_NowNum==this.num)//如果叫到了自己则就开始处理

       {
            _AjaxObj=this;//设定当前处理人是自己
           _AjaxRun = true;
           if (window.XMLHttpRequest)
              this.xmlhttp = new XMLHttpRequest();
           else
              this.xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
              
           _run = this.run;
           _returnMode = this.returnMode;
           //_xmlhttp = this.xmlhttp;           
           
           
           this.xmlhttp.onreadystatechange = _request;              // 指定委托方法
           if(this.sendtype.toUpperCase() == "GET")                               // 如果是Get方式提交
           {          
              this.xmlhttp.open(this.sendtype, this.url + this.str +(this.str==""?"?":"&")+"data="+Date(),this.isAsynchronism);   // 将参数加在URL后面.
              this.xmlhttp.send(null);                                   
           }
           else if(this.sendtype.toUpperCase() == "POST")                         // 如果是Post方式提交
           {
	          if(this.isAsynchronism)
	          {
	            this.xmlhttp.open(this.sendtype, this.url,true);           // 指定URL
	          }
	          else
	          {
	             this.xmlhttp.open(this.sendtype, this.url);    
	          }
    	      
	          this.xmlhttp.setRequestHeader("Cache-Control", "no-cache, must-revalidate");
              this.xmlhttp.setRequestHeader("content-length",this.str.length); 
	          this.xmlhttp.setRequestHeader("content-type","application/x-www-form-urlencoded");
              this.xmlhttp.send(this.str);// 将请求服务器, 并将参数提交             
           }
       }        
    }
   
	this.initialize = function() {						        //构造函数

	}
};


function _request()
{
    _xmlhttp=_AjaxObj.xmlhttp;
    var obj = Object();
    obj.error = null;
    obj.value = null;
    if(_xmlhttp.readyState==4)
    {
        if(_xmlhttp.status == 200)
        {            
            if(_returnMode=="Text")
                obj.value = _xmlhttp.responseText;
            else
                obj.value = _xmlhttp.responseXML;
           //执行获取完毕后的函数
            if(_run!=null&&_run!="")
            {
                eval(_run+"(obj)");
            }     
        }
        else
        {
            obj.error = "Ajax调用错误,错误编号为:"+_xmlhttp.status;
        }
        
            
        _AjaxRun = false;
        //当自己处理完了，就将号码+1，叫下个人进行处理

        _NowNum=_NowNum+1;
        //如果还有下个人，就叫下个人进行处理，否则表示自己是最后一个人不需要处理了
        if(_AjaxArray[_NowNum]!=null)
        {
            _AjaxArray[_NowNum].Server();
        }
    }
}
//**************************************************************************************



