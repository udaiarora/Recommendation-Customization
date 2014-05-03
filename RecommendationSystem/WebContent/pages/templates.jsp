<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"
%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"
        %>
            <!DOCTYPE html>
            <html>
                
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
                    <title>
                        Templates List
                    </title>
                    <style>
                        body { margin-top: 60px; }
                    </style>
                    <script type="text/javascript">
                    function onsubmit() {
    document.getElementById("templateId").value = "11";
    document.getElementById("guiId").value = "111";
    document.getElementById("customizeform").submit();
}
                    </script>
                </head>
                
                <body>
                    <jsp:include page="/pages/menu.jsp"/>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <h1>
                                    Templates subscribed by ${orgName}
                                </h1>
                                <br>
                                <br>
                                <!-- 
                                <table>
                                 
                                
                               
                                    <tr>
                                    	
                                        <td>
                                            
                                                <h2>
                                                   Login Template
                                                </h2>
                                                <p>
                                                    Click on a component to Customize its characteristics
                                                </p>
                                              
                                                <table>
                                               
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                <b>
                                                                    GUI  
                                                                </b>
                                                            </h3>
                                                        </td>
                                                        <form:form id="customizeform" name="customizeform" target="_self" method="POST"  action="CustomizeGUI" class="form-inline">
                                                        <td><input type="hidden" name="templateId" value="11" /></td>
                                                        <td><h3><b>&nbsp; - &nbsp;</b></h3></td>
                                                        <td><input type="submit" value="Login Screen" name="customize" class="btn btn-primary" /> </td>
                                                        </form:form>
                                                     	
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                <b>
                                                                    Workflow
                                                                </b>
                                                            </h3>
                                                        </td>
                                                     
                                                       <form:form id="customizeform" name="customizeform" target="_self" method="POST"  action="CustomizeWorkFlow" class="form-inline">
                                                        <td><input type="hidden" name="templateId" value="11" /></td>
                                                        <td><h3><b>&nbsp; - &nbsp;</b></h3></td>
                                                        <td> <input type="submit" value="Authorization WorkFlow" name="customize" class="btn btn-primary" /> </td>
                                                        </form:form> 
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                <b>
                                                                    Service
                                                                </b>
                                                            </h3>
                                                        </td>
                                                   
                                                        <form:form id="customizeform" name="customizeform" target="_self" method="POST"  action="CustomizeService" class="form-inline">
                                                        <td><input type="hidden" name="templateId" value="11" /></td>
                                                       	<td><h3><b>&nbsp; - &nbsp;</b></h3></td>
                                                        <td> <input type="submit" value="Validation Service" name="customize" class="btn btn-primary" /> </td>
                                                        </form:form> 
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                <b>
                                                                    DataModel
                                                                </b>
                                                            </h3>
                                                        </td>
                                                      
                                                         <form:form id="customizeform" name="customizeform" target="_self" method="POST"  action="CustomizeDataModel" class="form-inline">
                                                        <td><input type="hidden" name="templateId" value="11" /></td>
                                                        <td><h3><b>&nbsp; - &nbsp;</b></h3></td>
                                                        <td> <input type="submit" value="User Data Model" name="customize" class="btn btn-primary" /> </td>
                                                        </form:form> 
                                                    </tr>
                                                  
                                                </table>
                                                </td>
                                                
                                                </tr>
                                                
                                                </table>
                                                 <hr style="background:#F87431; margin-left:0px; border:0; height:4px; width:400px"
                                />
                                                 <table>
                                 
                                
                               
                                    <tr>
                                    	
                                        <td>
                                            
                                                <h2>
                                                   Book Search Template
                                                </h2>
                                                <p>
                                                    Click on a component to Customize its characteristics
                                                </p>
                                               
                                                <table>
                                               
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                <b>
                                                                    GUI 
                                                                </b>
                                                            </h3>
                                                        </td>
                                                        <form:form id="customizeform" name="customizeform" target="_self" method="POST"  action="CustomizeGUI" class="form-inline">
                                                        <td><input type="hidden" name="templateId" value="40" /></td>
                                                        <td><h3><b>&nbsp; - &nbsp;</b></h3></td>
                                                        <td> <input type="submit" value="Book Search Screen" name="customize" class="btn btn-primary" /> </td>
                                                        </form:form>
                                                     	
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                <b>
                                                                    Workflow
                                                                </b>
                                                            </h3>
                                                        </td>
                                                      
                                                       <form:form id="customizeform" name="customizeform" target="_self" method="POST"  action="CustomizeWorkFlow" class="form-inline">
                                                        <td><input type="hidden" name="templateId" value="40" /></td>
                                                       <td><h3><b>&nbsp; - &nbsp;</b></h3></td>
                                                        <td><input type="submit" value="Book Search WorkFlow" name="customize" class="btn btn-primary" /> </td>
                                                        </form:form> 
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                <b>
                                                                    Service
                                                                </b>
                                                            </h3>
                                                        </td>
                                                        <
                                                        <form:form id="customizeform" name="customizeform" target="_self" method="POST"  action="CustomizeService" class="form-inline">
                                                        <td><input type="hidden" name="templateId" value="40" /></td>
                                                       <td><h3><b>&nbsp; - &nbsp;</b></h3></td>
                                                        <td><input type="submit" value="Retrieve Book Service" name="customize" class="btn btn-primary" /> </td>
                                                        </form:form> 
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                <b>
                                                                    DataModel
                                                                </b>
                                                            </h3>
                                                        </td>
                                                        
                                                         <form:form id="customizeform" name="customizeform" target="_self" method="POST"  action="CustomizeDataModel" class="form-inline">
                                                        <td><input type="hidden" name="templateId" value="40" /></td>
                                                        <td><h3><b>&nbsp; - &nbsp;</b></h3></td>
                                                        <td> <input type="submit" value="Book Data Model" name="customize" class="btn btn-primary" /> </td>
                                                        </form:form> 
                                                    </tr>
                                                    
                                                </table>
                                                </td>
                                                </tr>
                                                </table>
                                                 <hr style="background:#F87431; margin-left:0px; border:0; height:4px; width:400px"
                                />
                                                 <table>
                                 
                                
                               
                                    <tr>
                                    	
                                        <td>
                                            
                                                <h2>
                                                   Book Return Template
                                                </h2>
                                                <p>
                                                    Click on a component to Customize its characteristics
                                                </p>
                                               
                                                <table>
                                               
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                <b>
                                                                    GUI 
                                                                </b>
                                                            </h3>
                                                        </td>
                                                        <form:form id="customizeform" name="customizeform" target="_self" method="POST" action="CustomizeGUI" class="form-inline">
                                                        <td><input type="hidden" name="templateId" value="44" /></td>
                                                        <td><h3><b>&nbsp; - &nbsp;</b></h3></td>
                                                        <td> <input type="submit" value="Book Return Screen" name="customize" class="btn btn-primary" /> </td>
                                                        </form:form>
                                                     	
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                <b>
                                                                    Workflow
                                                                </b>
                                                            </h3>
                                                        </td>
                                                       
                                                       <form:form id="customizeform" name="customizeform" target="_self" method="POST" action="CustomizeWorkFlow" class="form-inline">
                                                        <td><input type="hidden" name="templateId" value="44" /></td>
                                                        <td><h3><b>&nbsp; - &nbsp;</b></h3></td>
                                                        <td> <input type="submit" value="Book Return WorkFlow" name="customize" class="btn btn-primary" /> </td>
                                                        </form:form> 
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                <b>
                                                                    Service
                                                                </b>
                                                            </h3>
                                                        </td>
                                                       
                                                        <form:form id="customizeform" name="customizeform" target="_self" method="POST"  action="CustomizeService" class="form-inline">
                                                        <td><input type="hidden" name="templateId" value="44" /></td>
                                                        <td><h3><b>&nbsp; - &nbsp;</b></h3></td>
                                                        <td> <input type="submit" value="Book Return Service" name="customize" class="btn btn-primary" /> </td>
                                                        </form:form> 
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                <b>
                                                                    DataModel
                                                                </b>
                                                            </h3>
                                                        </td>
                                                        
                                                         <form:form id="customizeform" name="customizeform" target="_self" method="POST"  action="CustomizeDataModel" class="form-inline">
                                                        <td><input type="hidden" name="templateId" value="44" /></td>
                                                        <td><h3><b>&nbsp; - &nbsp;</b></h3></td>
                                                        <td> <input type="submit" value="Books Data Model" name="customize" class="btn btn-primary" /> </td>
                                                        </form:form> 
                                                    </tr>
                                                    
                                                </table>
                                            </td>
                                            </tr>
                                      </table>
                                       <hr style="background:#F87431; margin-left:0px; border:0; height:4px; width:400px"
                                /> -->
                                                
                                <table>
                                 <c:forEach var="template" items="${templatesList}">
                                
                               
                                    <tr>
                                    	
                                        <td>
                                            
                                                <h2>
                                                    ${template.templateName} Template
                                                </h2>
                                                <p>
                                                    Click on a component to Customize its characteristics
                                                </p>
                                                <!-- <input name="login" type="submit" value="Customize" style="position:absolute;left:630px;top:350px;z-index:4;"
                                                class=" btn btn-primary"/>
                                                -->
                                                <!-- <input id="templateId" name="templateId" type="hidden" value="40"
                                                />
                                                <input id="guiId" name="guiId" type="hidden" value="111" />
                                                -->
                                                 
                                                <table>
                                               
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                <b>
                                                                    GUI
                                                                </b>
                                                            </h3>
                                                        </td>
                                                        <td><!-- <input type="submit" value="${componentName }" name="customize" class="btn btn-primary" /> -->
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                <b>
                                                                    Workflow
                                                                </b>
                                                            </h3>
                                                        </td>
                                                       <td><!-- <input type="submit" value="${componentName }" name="customize" class="btn btn-primary" /> -->
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                <b>
                                                                    Service
                                                                </b>
                                                            </h3>
                                                        </td>
                                                        <td><!--  <input type="submit" value="${componentName }" name="customize" class="btn btn-primary" /> -->
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                <b>
                                                                    DataModel
                                                                </b>
                                                            </h3>
                                                        </td>
                                                         <td><!--  <-input type="submit" value="${componentName }" name="customize" class="btn btn-primary" />-->  
                                                    </tr>
                                                    
                                                </table>
                                              
                                        </td>
                                       
                                        </tr>
                                       
                                         
                                        <tr>
                                        <td>
                                            <table>
                                             <c:forEach var="componentName" items="${componentsList}">
                                                <form:form id="customizeform" name="customizeform" target="_self" method="POST"
                                                action="CustomizeGUI" class="form-inline">
                                                    <tr>
                                                        <td>
                                                            <input type="hidden" name="templateId" value="11" />
                                                        </td>
                                                        <td>
                                                            <h3>
                                                                <input type="submit" value="${componentName }" name="customize" class="btn btn-primary"
                                                                />
                                                            </h3>
                                                        </td>
                                                    </tr>
                                                </form:form>
                                               </c:forEach>
                                               <!-- <form:form id="customizeform" name="customizeform" target="_self" method="POST"
                                                action="CustomizeWorkFlow" class="form-inline">
                                                    <tr>
                                                        <td>
                                                            <input type="hidden" name="templateId" value="11" />
                                                        </td>
                                                        <td>
                                                            <h3>
                                                                <input type="submit" value="Authorization WorkFlow" name="customize" class="btn btn-primary"
                                                                />
                                                            </h3>
                                                        </td>
                                                    </tr>
                                                </form:form>
                                                <form:form id="customizeform" name="customizeform" target="_self" method="POST"
                                                action="CustomizeService" class="form-inline">
                                                    <tr>
                                                        <td>
                                                            <input type="hidden" name="templateId" value="11" />
                                                        </td>
                                                        <td>
                                                            <h3>
                                                                <input type="submit" value="Validation Service" name="customize" class="btn btn-primary"
                                                                />
                                                            </h3>
                                                        </td>
                                                    </tr>
                                                </form:form>
                                                <form:form id="customizeform" name="customizeform" target="_self" method="POST"
                                                action="CustomizeDataModel" class="form-inline">
                                                    <tr>
                                                        <td>
                                                            <input type="hidden" name="templateId" value="11" />
                                                        </td>
                                                        <td>
                                                            <h3>
                                                                <input type="submit" value="User Data Model" name="customize" class="btn btn-primary"
                                                                />
                                                            </h3>
                                                        </td>
                                                    </tr>
                                                </form:form>
                                                <form:form id="customizeform" name="customizeform" target="_self" method="POST"
                                                action="CustomizeGUI" class="form-inline">
                                                    <tr>
                                                        <td>
                                                            <input type="hidden" name="templateId" value="40" />
                                                        </td>
                                                        <td>
                                                            <h3>
                                                                <input type="submit" value="Book Search Screen" name="customize" class="btn btn-primary"
                                                                />
                                                            </h3>
                                                        </td>
                                                    </tr>
                                                </form:form>
                                                <form:form id="customizeform" name="customizeform" target="_self" method="POST"
                                                action="CustomizeWorkFlow" class="form-inline">
                                                    <tr>
                                                        <td>
                                                            <input type="hidden" name="templateId" value="40" />
                                                        </td>
                                                        <td>
                                                            <h3>
                                                                <input type="submit" value="Book Search WorkFlow" name="customize" class="btn btn-primary"
                                                                />
                                                            </h3>
                                                        </td>
                                                    </tr>
                                                </form:form>
                                                <form:form id="customizeform" name="customizeform" target="_self" method="POST"
                                                action="CustomizeService" class="form-inline">
                                                    <tr>
                                                        <td>
                                                            <input type="hidden" name="templateId" value="40" />
                                                        </td>
                                                        <td>
                                                            <h3>
                                                                <input type="submit" value="Retrieve Book Service" name="customize" class="btn btn-primary"
                                                                />
                                                            </h3>
                                                        </td>
                                                    </tr>
                                                </form:form>
                                                <form:form id="customizeform" name="customizeform" target="_self" method="POST"
                                                action="CustomizeDataModel" class="form-inline">
                                                    <tr>
                                                        <td>
                                                            <input type="hidden" name="templateId" value="40" />
                                                        </td>
                                                        <td>
                                                            <h3>
                                                                <input type="submit" value="Book Data Model" name="customize" class="btn btn-primary"
                                                                />
                                                            </h3>
                                                        </td>
                                                    </tr>
                                                </form:form>
                                                <form:form id="customizeform" name="customizeform" target="_self" method="POST"
                                                action="CustomizeGUI" class="form-inline">
                                                    <tr>
                                                        <td>
                                                            <input type="hidden" name="templateId" value="11" />
                                                        </td>
                                                        <td>
                                                            <h3>
                                                                <input type="submit" value="Book Return Screen" name="customize" class="btn btn-primary"
                                                                />
                                                            </h3>
                                                        </td>
                                                    </tr>
                                                </form:form>
                                                <form:form id="customizeform" name="customizeform" target="_self" method="POST"
                                                action="CustomizeWorkFlow" class="form-inline">
                                                    <tr>
                                                        <td>
                                                            <input type="hidden" name="templateId" value="11" />
                                                        </td>
                                                        <td>
                                                            <h3>
                                                                <input type="submit" value="Book Return WorkFlow" name="customize" class="btn btn-primary"
                                                                />
                                                            </h3>
                                                        </td>
                                                    </tr>
                                                </form:form>
                                                <form:form id="customizeform" name="customizeform" target="_self" method="POST"
                                                action="CustomizeService" class="form-inline">
                                                    <tr>
                                                        <td>
                                                            <input type="hidden" name="templateId" value="11" />
                                                        </td>
                                                        <td>
                                                            <h3>
                                                                <input type="submit" value="Book Return Service" name="customize" class="btn btn-primary"
                                                                />
                                                            </h3>
                                                        </td>
                                                    </tr>
                                                </form:form>
                                                <form:form id="customizeform" name="customizeform" target="_self" method="POST"
                                                action="CustomizeDataModel" class="form-inline">
                                                    <tr>
                                                        <td>
                                                            <input type="hidden" name="templateId" value="11" />
                                                        </td>
                                                        <td>
                                                            <h3>
                                                                <input type="submit" value="Books Data Model" name="customize" class="btn btn-primary"
                                                                />
                                                            </h3>
                                                        </td>
                                                    </tr>
                                                   
                                                </form:form> 
                                              
                                            </table>
                                          
                                          </td>
                                          </tr>
                                          </c:forEach>
                                          
                                         
                                </table>-->
                               
                            </div>
                        </div>
                    </div>
                    <!-- /.container -->
                    <!-- JavaScript -->
                    <script src="<%=request.getContextPath()%>/js/jquery-1.10.2.js">
                    </script>
                    <script src="<%=request.getContextPath()%>/js/bootstrap.js">
                    </script>
                </body>
            
            </html>