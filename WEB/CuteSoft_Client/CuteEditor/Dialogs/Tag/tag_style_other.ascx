<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset>
	<legend>
	[[Cursor]]
	</legend>
	<select id=sel_cursor>
		<option value="">[[NotSet]]</option>
		<option value="Default">[[Default]]</option>
		<option value="Move">[[Move]]</option>
		<option value="Text">Text</option>
		<option value="Wait">Wait</option>
		<option value="Help">Help</option>
		<!-- x-resize -->
	</select>
</fieldset>

<fieldset>
	<legend>
	[[Filter]]
	</legend>
	<input type=text id=inp_filter style="width:240px"> <!--button filter builder-->
</fieldset>
<div id="outer"><div id="div_demo">[[DemoText]]</div></div>
<script>

var OxO1c32=["cssText","style","cursor","value","filter"]; function UpdateState(){ div_demo[OxO1c32[0x1]][OxO1c32[0x0]]=element[OxO1c32[0x1]][OxO1c32[0x0]] ;}  ; function SyncToView(){ sel_cursor[OxO1c32[0x3]]=element[OxO1c32[0x1]][OxO1c32[0x2]] ; inp_filter[OxO1c32[0x3]]=element[OxO1c32[0x1]][OxO1c32[0x4]] ;}  ; function SyncTo(element){ element[OxO1c32[0x1]][OxO1c32[0x2]]=sel_cursor[OxO1c32[0x3]] ; element[OxO1c32[0x1]][OxO1c32[0x4]]=inp_filter[OxO1c32[0x3]] ;}  ;

</script>
