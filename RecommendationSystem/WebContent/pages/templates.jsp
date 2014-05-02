<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        margin-top: 60px;
    }
</style>
<script type="text/javascript">
function onsubmit()
{
	document.getElementById("templateId").value = "11";
	document.getElementById("guiId").value = "111";
	document.getElementById("customizeform").submit();
}
</script>
</head>
<body>
<jsp:include page="/pages/menu.jsp"></jsp:include>

    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <h1>Templates subscribed by ${userName}</h1>
                <br>
               	<br> 
               	<c:forEach var="template" items="${templatesList}"> 
               	<h2>${template.templateName} Template</h2>
               	<p>Click on a component to Customize its characteristics</p>
                <form id ="customizeform" name="customizeform" target="_self" method="GET" action="CustomizeGUI" class="form-inline">
                <!-- <input name="login" type="submit" value="Customize" style="position:absolute;left:630px;top:350px;z-index:4;" class = "btn btn-primary"/> -->
                <!--  <input id="templateId" name="templateId" type="hidden" value="40" />
                <input id="guiId" name="guiId" type="hidden" value="111" /> -->
                <table>
                <tr>
                <td>
                <table>
                <tr>
                <td>
                <h3><b>GUI  </b></h3></td><!-- <td><input type="submit" value="${guiName }" name="customize" class="btn btn-primary" /> --> 
                </tr>
                <tr>
                <td>
                <h3><b>Workflow  </b></h3></td><!-- <td><input type="submit" value="${guiName }" name="customize" class="btn btn-primary" /> --> 
                
                </tr> 
                <tr>
                <td>
                <h3><b>Service  </b></h3></td><!-- <td><input type="submit" value="${guiName }" name="customize" class="btn btn-primary" /> --> 
                 
                </tr>
                <tr>
                <td> 
                <h3><b>DataModel  </b></h3></td><!-- <td><input type="submit" value="${guiName }" name="customize" class="btn btn-primary" /> --> 
              
                </tr>
               	</table>
               	</td>
               	<td>
               	<table>
               	<c:forEach var="template" items="${templatesList}">
               	<tr>
                <td>
               	<td><h3><input type="submit" value="${template.templateName }" name="customize" class="btn btn-primary" /></h3> 
                </td>
                </tr>
               	</c:forEach>
               	</table>
                </table>
                </form>
                 <hr style="background:#F87431; margin-left:0px; border:0; height:4px; width:400px" />
                </c:forEach>
            </div>
        </div>

    </div>
    <!-- /.container -->

    <!-- JavaScript -->
    <script src="<%=request.getContextPath()%>/js/jquery-1.10.2.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>

</body>
</html>