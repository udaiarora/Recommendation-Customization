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

             
               function Clear()
{    
   document.getElementById("textbox1").value= "";
   document.getElementById("textbox2").value= "";
   document.getElementById("textbox3").value= "";
   document.getElementById("textbox4").value= "";
    document.getElementById("textbox5").value= "";
}

               function showvalue()
{    
   document.getElementById("input1").innerHTML= "";
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
                       
                        
                            <h3>Example heading <span class="label label-default">   Please edit the following Service component as per your requirements.</span></h3>

                        
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
                                         <form:input type='text' path='serviceOutputdatatype' id='textboxclear' name='serviceOutputdatatype'
                                        />
                                         <p class="help-block">Example block-level help text here.</p>   

                                         <!-- <form:select path="serviceOutputdatatype" id="serviceOutputdatatype" >
                                                        <option value='String'>
                                                            String
                                                        </option>
                                                        <option value='LinkedHashMap'>
                                                            Linked Hash Map
                                                        </option>
                                                        <option value='boolean'>
                                                            boolean
                                                        </option>
                                                        <option value='ArrayList'>
                                                            ArrayList
                                                        </option>
                                                    </form:select>
 -->                                    </td>

                                    <td class=".table-hover">
                                         <form:input type='text'  path='serviceDescription' id='textboxreadonly' name='serviceDescription' 
                                        />
                                    </td>
                                    <td  class=".table-hover">
                                        <form:input type='label' path='serviceInputdatatype1' id='textboxclear' name='serviceInputdatatype1'
                                        />
                                        <p class="help-block">Example block-level help text here.</p>

                                          <!-- <form:select path="serviceInputdatatype1" id="serviceInputdatatype1">
                                                         <option value='LinkedHashMap'>
                                                            Linked Hash Map
                                                        </option>

                                                        <option value='String'>
                                                            String
                                                        </option>
                                                       
                                                        <option value='boolean'>
                                                            boolean
                                                        </option>
                                                        <option value='ArrayList'>
                                                            ArrayList
                                                        </option>
                                                    </form:select>   
 -->
                                    </td>
                                    <td class=".table-hover">
                                          <form:input type='text' path='serviceInputdatatype2' id='title_msg' name='serviceInputdatatype2'
                                        />
                                            
<!--                                              <form:select path="serviceInputdatatype2" id="serviceInputdatatype2" onfocus="clearThis(this)">
                                                         
                                                          <option value='ArrayList'>
                                                            ArrayList
                                                        </option>
                                                         <option value='LinkedHashMap'>
                                                            Linked Hash Map
                                                        </option>

                                                        <option value='String'>
                                                            String
                                                        </option>
                                                       
                                                        <option value='boolean'>
                                                            boolean
                                                        </option>
                                                       
                                                    </form:select>   

 -->                                    </td>
                                    <td class=".table-hover">
                                         <form:input type='text' path='serviceInputdatatype3' id='title_msg' name='serviceInputdatatype3'
                                        />
<!--                                         <form:select path="serviceInputdatatype3" id="serviceInputdatatype3">
                                                         
                                                         
                                                          <option value='TreeMap'>
                                                            boolean
                                                        </option>    

                                                          <option value='ArrayList'>
                                                            ArrayList
                                                        </option>
                                                         <option value='LinkedHashMap'>
                                                            Linked Hash Map
                                                        </option>

                                                        <option value='String'>
                                                            String
                                                        </option>
                                                       
                                                       
                                                       
                                                    </form:select>

 -->                                    </td>
                                </tr>
                                 <div>
                                 </br> </br> </br></br>
                                 </br> </br> </br></br>
                                 <div>
                                 <table class="table table-hover">
                                <p>
                                     <span class="label label-heading"> Service component for this template is </span>
                                 </p>
                                 
<!-- 
                                  <tr>
                                    <th class="info">
                                        Return Type
                                    </th>
                                    <th class="info">
                                        Service Name
                                    </th>
                                    <th class="info">
                                        Input param1
                                        <br>
                                    </th>
                                    <th class="info">
                                        Input param2
                                    </th>
                                    <th class="info">
                                        Input param3
                                        <br>
                                    </th>
                                </tr>


                                 
                                    <td id="label1">The service &nbsp;</td>
                                    <td id="input1"><form:input type='text' path='serviceInputdatatype3' id='title_msg' name='' /></td>
                                        
                          

                                    <td class=".table-hover">
                                        
                                    </td>
                                    <td  class=".table-hover">
                                         
                                    </td>
                                    <td class=".table-hover">
                                            
                                           

                                    </td>
                                    <td class=".table-hover">
                                         
                                        
                                    </td>
                                </tr>     -->

                                <table align="center">
                                    <tr>
                                        <td id="set_title">
                                            
                                           <!--  <form id ="customizeServiceform" name="customizeServiceform" target="_self" method="POST" action="/updateService" class="form-inline">
                                  <input type="submit" value="CustomizeServices" name="customize" class="btn btn-primary" />
                           
                            <input type='hidden' path="templateId" id='templateId' name='templateId' value='11' />
          
                             </form> -->

                             <input type="submit" value="CustomizeServices" name="customize" class="btn btn-primary" onClick="sub1();" />
                                    
                                
                                </table>

</table>
</div>
</div>

</table>
</div>
</div>
</div>
</div>
</div>
</form:form>


</body>
</html>
