<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"
%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"
    %>
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
                     document.getElementById("textboxreadonly").readonly = true;
                 }


                 function Clear() {
                     document.getElementById("textbox1").value = "";
                     document.getElementById("textbox2").value = "";
                     document.getElementById("textbox3").value = "";
                     document.getElementById("textbox4").value = "";
                     document.getElementById("textbox5").value = "";
                 }

                 function showvalue() {
                     document.getElementById("input1").innerHTML = "";
                 }

                 function sub1(){
                    alert("Persisted in DB");
                 }
                    </script>
                </head>
                
                <body onload="init();">
                    <jsp:include page="/pages/menu.jsp" />

                      
                        
                    <form:form id="updateServiceForm" method="POST" commandName="serviceModel"
                    action="updateService">
                        <form:input type='hidden' path="userId" id='user_id' name='userId' />
                        <form:input type='hidden' path="templateId" id='templateId' name='templateId'
                        />
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <bold>
                                    Service Customization
                            </div>
                            <div class="panel-body">
                                <div class="well well-small">
                                    <div class="panel-body">
                                        <h3>
                                            <span class="label label-primary">
                                            Existing service Component

                                            </span></h3> </br>
                                            
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
                                                        Input parameter 1
                                                        <br>
                                                    </th>
                                                    <th class="danger">
                                                        Input parameter 2
                                                    </th>
                                                    <th class="success">
                                                        Input parameter 3
                                                        <br>
                                                    </th>
                                                </tr>
                                                <tr>
                                             <tr>
                                             <td class=".table-hover">
                                               <span id="title" style="font-family: ${serviceModel.serviceDescription}; color: #666666; font-size: 1.00em; font-weight:bold;">${serviceModel.serviceOutputdatatype}</span>
                                              </td>
                                              <td class=".table-hover">
                                               <span id="title" style="font-family: ${serviceModel.serviceDescription}; color: #666666; font-size: 1.00em; font-weight:bold;">${serviceModel.serviceDescription}</span>
                                              </td>
                                              <td class=".table-hover">
                                               <span id="title" style="font-family: ${serviceModel.serviceInputdatatype1}; color: #666666; font-size: 1.00em; font-weight:bold;">${serviceModel.serviceInputdatatype1}</span>
                                              </td>
                                              <td class=".table-hover">
                                               <span id="title" style="font-family: ${serviceModel.serviceInputdatatype2}; color: #666666; font-size: 1.00em; font-weight:bold;">${serviceModel.serviceInputdatatype2}</span>
                                              </td>
                                              <td class=".table-hover">
                                               <span id="title" style="font-family: ${serviceModel.serviceInputdatatype3}; color: #666666; font-size: 1.00em; font-weight:bold;">${serviceModel.serviceInputdatatype3}</span>
                                              </td>
                                            </tr>
                                        </table>

                                        <h3>
                                            <span class="label label-success">
                                            Change the service component

                                            </span></h3> </br>
                                            
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
                                                        Input parameter 1
                                                        <br>
                                                    </th>
                                                    <th class="danger">
                                                        Input parameter 2
                                                    </th>
                                                    <th class="success">
                                                        Input parameter 3
                                                        <br>
                                                    </th>
                                                </tr>
                                                <tr>
                                                    <td class=".table-hover">
                                                       <!--  <form:input type='text' path='serviceOutputdatatype' id='textboxclear'
                                                        name='serviceOutputdatatype' />
                                                        <p class="help-block">
                                                            String/ArrayList/HashMap/List/Integer/Boolean
                                                        </p> -->
                                                        <form:select path="serviceOutputdatatype" id="serviceOutputdatatype">
                                                        <option value='String'>
                                                            String
                                                        </option>
                                                        <option value='Float'>
                                                           Float
                                                        </option>
                                                        <option value='Int'>
                                                            Int
                                                        </option>
                                                        <option value='Double'>
                                                            Double
                                                        </option>
                                                         <option value='Boolean'>
                                                            Boolean
                                                        </option>
                                                    </form:select>

                                                    </td>
                                                    <td class=".table-hover">
                                                        <form:input type='text' path='serviceDescription' id='textboxreadonly'
                                                        name='serviceDescription' /> 
                                                        <!-- <p class="help-block">
                                                            String/ArrayList/HashMap/List/Integer/Boolean
                                                        </p>                                                         <span id="title" style="font-family: ${serviceModel.serviceDescription}; color: #666666; font-size: 1.00em; font-weight:bold;">${serviceModel.serviceDescription}</span> -->
                                                    </td>
                                                    <td class=".table-hover">
                                                        <!-- <form:input type='label' path='serviceInputdatatype1' id='textboxclear'
                                                        name='serviceInputdatatype1' />
                                                        <p class="help-block">
                                                            String/ArrayList/HashMap/List/Integer/Boolean
                                                        </p> -->
                                                        <form:select path="serviceInputdatatype1" id="serviceInputdatatype1">
                                                      <option value='String'>
                                                            String
                                                        </option>
                                                        <option value='Float'>
                                                           Float
                                                        </option>
                                                        <option value='Int'>
                                                            Int
                                                        </option>
                                                        <option value='Double'>
                                                            Double
                                                        </option>
                                                    </form:select>   

                                                    </td>
                                                    <td class=".table-hover">
                                                        <!-- <form:input type='text' path='serviceInputdatatype2' id='title_msg' name='serviceInputdatatype2'
                                                        />
                                                        <p class="help-block">
                                                            String/ArrayList/HashMap/List/Integer/Boolean
                                                        </p> --> 
                                                        <form:select path="serviceInputdatatype2" id="serviceInputdatatype2"
                                                        >
                                                      <option value='String'>
                                                            String
                                                        </option>
                                                        <option value='Float'>
                                                           Float
                                                        </option>
                                                        <option value='Int'>
                                                            Int
                                                        </option>
                                                        <option value='Double'>
                                                            Double
                                                        </option>
                                                       
                                                    </form:select>   


                                                    </td>
                                                    <td class=".table-hover">
                                                       <!--  <form:input type='text' path='serviceInputdatatype3' id='title_msg' name='serviceInputdatatype3'
                                                        />
                                                        <p class="help-block">
                                                            String/ArrayList/HashMap/List/Integer/Boolean
                                                        </p> --> 
                                                        <form:select path="serviceInputdatatype3" id="serviceInputdatatype3">
                                                         
                                                         
                                                        <option value='String'>
                                                            String
                                                        </option>
                                                        <option value='Float'>
                                                           Float
                                                        </option>
                                                        <option value='Int'>
                                                            Int
                                                        </option>
                                                        <option value='Double'>
                                                            Double
                                                        </option>
                                                       
                                                       
                                                    </form:select>
                                                </br></br></br></br>

         <input type="submit" value="Customize Service" name="customize" class="btn btn-primary"
                                                                         />
                                                            </table>
                                                     
                                                    </div>
                                                </div>
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                       
                    </form:form>
                </body>
            
            </html>