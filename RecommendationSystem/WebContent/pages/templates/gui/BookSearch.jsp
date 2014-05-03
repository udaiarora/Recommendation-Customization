<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Search</title>
<style>
 body {
        margin-top: 60px;
  }
</style>
<script src="http://code.jquery.com/jquery.min.js"></script>
<style type="text/css" scoped>
	td { text-align:left; font-family: ${guiModel.guiAttrValue2}; color: #000000; font-size: 1.00em; }
	input { border: 1px solid #CCCCCC; border-radius: 5px; color: #666666; display: inline-block; font-size: 1.00em;  padding: 5px; width: 100%; }
	input[type="reset"], input[type="submit"] { height: auto; width: auto; cursor: pointer; box-shadow: 0px 0px 5px #D4D4D4; float: right; margin-top: 10px; }
	table.center { margin-left:auto; margin-right:auto; }
	.error { font-family: ${guiModel.guiAttrValue2}; color: #000000; font-size: 1.00em; }
	</style>
	<script type="text/javascript">
	
	function init()
	{
		if(document.getElementById("label_name").value != "New Field Label" )
		{
			document.getElementById("keyword").innerText = document.getElementById("label_name").value;
			document.getElementById("textbox").innerHTML = "<input type='text' name='keyword_field'>";
		}
		document.getElementById("label1").style.visibility = "hidden";
		document.getElementById("input1").style.visibility = "hidden";
		document.getElementById("label2").style.visibility = "hidden";
		document.getElementById("input2").style.visibility = "hidden";
		document.getElementById("label3").style.visibility = "hidden";
		document.getElementById("input3").style.visibility = "hidden";
	}
	
	function setTitle()
	{
		document.getElementById("label1").style.visibility = "visible";
		document.getElementById("input1").style.visibility = "visible";
		document.getElementById("reset_button").innerHTML = "<input type='button' style='width:100px' value='Reset' onClick='reset();'>&nbsp;&nbsp;";
		document.getElementById("set_title").innerHTML = "";
		document.getElementById("font").innerHTML = "";
		document.getElementById("field").innerHTML = "";
		document.getElementById("customize").innerHTML = "<input type='button' style='width:150px' value='Apply Changes' onClick='customize(1);'>&nbsp;&nbsp;";
		document.getElementById("back").innerHTML = "<input type='button' style='width:100px' value='<<Back' onClick='back();'>&nbsp;&nbsp;";
	}
	
	function back()
	{
		document.getElementById("customize").innerHTML  = "";
		document.getElementById("reset_button").innerHTML = "";
		document.getElementById("set_title").innerHTML = "<input type='button' style='width:100px' value='Set Title' onClick='setTitle();'>&nbsp;";
		document.getElementById("font").innerHTML = "<input id='change_font' type='button' style='width:100px' value='Change Font' onclick='changeFont()'>&nbsp;";
		document.getElementById("field").innerHTML = "<input id='add_field' type='button' style='width:100px' value='Add Field' onClick=addField();'>&nbsp;";
		document.getElementById("back").innerHTML = "";
		document.getElementById("label1").style.visibility = "hidden";
		document.getElementById("input1").style.visibility = "hidden";
		document.getElementById("label2").style.visibility = "hidden";
		document.getElementById("input2").style.visibility = "hidden";
		document.getElementById("label3").style.visibility = "hidden";
		document.getElementById("input3").style.visibility = "hidden";
	}
	function changeFont()
	{
		document.getElementById("label2").style.visibility = "visible";
		document.getElementById("input2").style.visibility = "visible";
		document.getElementById("customize").innerHTML = "<input type='button' style='width:150px' value='Apply Changes' onClick='customize(2);'/>&nbsp;&nbsp;";
		document.getElementById("back").innerHTML = "<input type='button' style='width:100px' value='<<Back' onClick='back();'>&nbsp;&nbsp;";
		document.getElementById("reset_button").innerHTML = "<input type='button' style='width:100px' value='Reset' onClick='reset();'/>";
		document.getElementById("set_title").innerHTML = "";
		document.getElementById("font").innerHTML = "";
		document.getElementById("field").innerHTML = "";
		
	}
	
	function addField()
	{
		document.getElementById("label3").style.visibility = "visible";
		document.getElementById("input3").style.visibility = "visible";
		document.getElementById("customize").innerHTML = "<input type='button' style='width:150px' value='Apply Changes' onClick='customize(3);'/>&nbsp;&nbsp;";
		document.getElementById("back").innerHTML = "<input type='button' style='width:100px' value='<<Back' onClick='back();'>&nbsp;&nbsp;";
		document.getElementById("reset_button").innerHTML = "<input type='button' style='width:100px' value='Reset' onClick='reset();'/>";
		document.getElementById("set_title").innerHTML = "";
		document.getElementById("font").innerHTML = "";
		document.getElementById("field").innerHTML = "";
	}
	
	function customize(a)
	{
		if(a == 1)
			if(document.getElementById("title_msg").value == "")
				document.getElementById("title").innerText = "<Title>";
			else
				document.getElementById("title").innerText = document.getElementById("title_msg").value;
		if(a == 2)
			$("td").css({'font-family':$('#fontSelector').val()});
		if(a == 3)
		{
			document.getElementById("keyword").innerText = document.getElementById("label_name").value;
			document.getElementById("textbox").innerHTML = "<input type='text' name='keyword_field'>";
		}
		//document.getElementById("user_id").value = ${ guiModel.userId };
		document.getElementById("updateGUIForm").submit();
	}
	
	function reset()
	{
		document.getElementById("title_msg").value = "&lt;Title&gt;";
		$("td").css({'font-family':'verdana, arial'});
		document.getElementById("updateGUIForm").submit();
		
		
	}
	
	function edit_username()
	{
		document.getElementById("username").innerHTML = "<input type='text' value='UserName'>";
	}
	</script>
</head>
<body onload="init();">
<jsp:include page="/pages/menu.jsp"></jsp:include>
    
    <div class="container">
	<h3>${ guiModel.guiName }</h3>
	<h4 align="center">GUI Component - BookSearch.jsp</h4>
	<p align="center">Use the customization buttons below to customize the Login page of your application</p>
        <div class="row">
            <div class="col-lg-12">
            
	<div style="text-align: center;">
	<div style="box-sizing: border-box; display: inline-block; width: 600px; max-width: 900px; background-color: #FFFFFF; border: 2px solid #D4D4D4; border-radius: 5px; box-shadow: 0px 0px 8px #D4D4D4; margin: 50px auto auto;">
	<div style="background: #D4D4D4; border-radius: 5px 5px 0px 0px; padding: 15px;">
	
	<span id="title" style="font-family: ${guiModel.guiAttrValue2}; color: #666666; font-size: 1.00em; font-weight:bold;">${guiModel.guiAttrValue1 }</span>
	</div>
	
	<div style="background: ; padding: 15px">
<form method="post" action="/login" name="aform" target="_top">
<input type="hidden" name="action" value="login">
<input type="hidden" name="hide" value="">
<table class='center'>
<tr><td id="username">Book Name:&nbsp;</td><td><input type="text" name="book_name"></td></tr>
<tr>
<td><br /></td></tr>
<tr><td>Author:</td><td><input type="text" name="author"></td></tr>
<tr><td><br /></td></tr>
<tr><td id="keyword"></td><td id="textbox"></td></tr>
<tr><td>&nbsp;</td><td><input type="submit" value="Search"></td></tr>
<tr><td colspan=2>&nbsp;</td></tr>
<tr><td colspan=2></td></tr>
<tr><td colspan=2></td></tr>
</table>
</form>
</div></div></div>
<form:form id="updateGUIForm" method="POST" commandName="guiModel" action="updateGUI">
<form:input type='hidden' path="userId" id='user_id' name='userId' />
<form:input type='hidden' path="templateId" id='templateId' name='templateId' />
<form:input type='hidden' path="guiId" id='guiId' name='guiId' />
<form:input type='hidden' path="url" id='url' name='url' />
<table class="center">
<tr>
<td><br /></td>
</tr>
<tr>
<td></td>
<td id="label1">Enter Organization Title: &nbsp;</td>
<td id="input1"><form:input type='text' path='guiAttrValue1' id='title_msg' name='guiAttrValue1' /></td>
</tr>

<tr>
<td>
</td>
<td id="label2">
Choose font family: &nbsp;
</td>
<td id="input2">
<form:select path="guiAttrValue2" id="fontSelector">
<option value='Arial'>Arial</option> 
<option value='Times New Roman'>Times New Roman</option> 
<option value='Georgia'>Georgia</option> 
<option value='Calibri'>Calibri</option>
</form:select>
</td>
</tr>
<tr>
<td></td>
<td id="label3">Enter Label Name: &nbsp;</td>
<td id="input3"><form:input type='text' path='guiAttrValue3' id='label_name' name='guiAttrValue3' /></td>
</tr>
<tr>
<td><br /></td>
</tr>


<tr>
</table>
<table align="center">
<tr>
<td id="set_title">
	<input type="button" style="width:100px" value="Set Title" onClick="setTitle();">&nbsp;
</td>
<td id="font">
	<input id="change_font" type="button" style="width:100px" value="Change Font" onClick="changeFont();">&nbsp;
</td>
<td id="field">
	<input id="add_field" type="button" style="width:100px" value="Add Field" onClick="addField();">&nbsp;
</td>
</tr>
<tr>
<td>
<br/>
</td>
</tr>
<tr>
<td id="back">
</td>
<td id="customize">
</td>
<td id="reset_button">
</td>
</tr>
</table>
</form:form>
</div>
</div>
</div>
</body>
</html>