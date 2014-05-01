<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"

%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!DOCTYPE html>
    <html lang="en">
        
        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta name="description" content="">
            <meta name="author" content="">
            <title>
                Service Customization
            </title>
            <link href="/RecommendationSystem/css/bootstrap.css" rel="stylesheet">
            <link href="/RecommendationSystem/css/recommendation.css" rel="stylesheet">
            <script type="text/javascript" src="/RecommendationSystem/js/jquery-1.10.2.js">
                        
            </script>
            <script type="text/javascript" src="/RecommendationSystem/js/jquery.autocomplete.js">
                        
            </script>
            <script type="text/javascript" src="/RecommendationSystem/js/bootstrap.min.js">
                        
            </script>
            <script type="text/javascript" src="/RecommendationSystem/js/custom.js">
                        
            </script>
            <script type="text/javascript">
             function init() {
     document.getElementById("label1").style.visibility = "hidden";
     document.getElementById("input1").style.visibility = "hidden";
     document.getElementById("label2").style.visibility = "hidden";
     document.getElementById("input2").style.visibility = "hidden";
 }
            </script>
           </head> 
            <body onload="init();">
                <jsp:include page="/pages/menu.jsp"/>
                <form:form id="updateServiceForm" method="POST" commandName="serviceModel"
                action="updateService">
                    <form:input type='hidden' path="userId" id='user_id' name='userId' />
                    <form:input type='hidden' path="templateId" id='templateId' name='templateId'
                    />
                    
                    
                    <a href="/updateService" class="btn btn-success " role="button" id="create">OK, I have made my choice
  </a>
                    </br>
                    </br>
                    <p>
                        click me
                    </p>
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <tr>
                                <th class="success">
                                    Return Type
                                </th>
                                <th class="danger">
                                    Service Name
                                </th>
                                <th class="success">
                                    Input param1
                                    <br>
                                </th>
                                <th class="danger">
                                    Input param2
                                </th>
                                <th class="success">
                                    Input param3
                                    <br>
                                </th>
                            </tr>
                            <tr>
                                <td style="text-align: center; vertical-align: middle;" class=".table-hover">
                                    <input type="radio" name="filetype" id="ds1" value="DataSet #53677" checked
                                    value="{{ request.form.input_type}}">
                                    <!-- <input type="radio" name="textbox" value="{{request.form.input_path}}"> -->
                                </td>
                              
                                 <td id="input1" class=".table-hover">
                                       <form:input type='text' path='guiAttrValue1' id='title_msg' name='guiAttrValue1'
                                        />
                                  </td>
                               
                                <td class=".table-hover">
                                    <a href="{{ url_for('.dc_stats',data='ds11334') }}">334</a>
                                </td>
                                <td class=".table-hover">
                                    Apr 14, 2014.
                                </td>
                                <td class=".table-hover">
                                    2
                                </td>
                             
                            </tr>
                            

                            <table class="center">
                                <tr>
                                    <td>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td id="label1">
                                        Enter Organization Title &nbsp;
                                    </td>
                                    <td id="input1">
                                        <form:input type='text' path='guiAttrValue1' id='title_msg' name='guiAttrValue1'
                                        />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td id="label2">
                                        Choose font family: &nbsp;
                                    </td>
                                    <td id="input2">
                                        <form:select path="guiAttrValue2" id="fontSelector">
                                            <option value='Arial'>
                                                Arial
                                            </option>
                                            <option value='Times New Roman'>
                                                Times New Roman
                                            </option>
                                            <option value='Georgia'>
                                                Georgia
                                            </option>
                                            <option value='Calibri'>
                                                Calibri
                                            </option>
                                        </form:select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                            </table>
                            <table align="center">
                                <tr>
                                    <td id="set_title">
                                        <input type="button" style="width:100px" value="Set Title" onClick="setTitle();">
                                        &nbsp;
                                    </td>
                                    <td id="font">
                                        <input id="change_font" type="button" style="width:100px" value="Change Font"
                                        onClick="changeFont();">
                                        &nbsp;
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
                </div class="form-group">
                </br>
                </br>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                </div>
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <bold>
                            Service Customization..
                    </div>
                    <div>
                        </br>
                    </div>
                    <div class="panel-body">
                        <div class="well well-lg">
                            <form role="form" class="form-inline" method="post">
                                </a>
                                </br>
                                <div class="panel panel-info">
                                    <div class="panel-heading">
                                        <div class="panel-body">
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-info">
                                                    String
                                                </button>
                                                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                                    <span class="caret">
                                                    </span>
                                                    <span class="sr-only">
                                                        Toggle Dropdown
                                                    </span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li>
                                                        <a href="#">int</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">float</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Arraylist[]</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </br>
                                </br>
                                <a href="#" class="btn btn-success" role="button">OK 
                                 </a>
                            </form>
                        </div>
                    </div>
                </div>
            </body>
    
    </html>