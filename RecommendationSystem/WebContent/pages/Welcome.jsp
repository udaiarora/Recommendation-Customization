<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" media="screen" href="<%= request.getContextPath()%>/css/bootstrap.css" />  
<style>
    body {
        margin-top: 60px;
    }
</style>
<script type="text/javascript">
function onsubmit()
{
	//document.getElementById("templateId").value = "11";
	//document.getElementById("guiId").value = "111";
	document.getElementById("customizeform").submit();
}
</script>
</head>

<body>
<jsp:include page="/pages/menu.jsp"></jsp:include>

    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <h1>Welcome ${userName}</h1>
                <br>
               	<br> 
                <h2>Search Templates</h2>
                <form id ="customizeform" name="customizeform" target="_self" method="POST" action="showTemplates" class="form-inline">
                <!-- <input name="login" type="submit" value="Customize" style="position:absolute;left:630px;top:350px;z-index:4;" class = "btn btn-primary"/> -->
                <!--  <input id="templateId" name="templateId" type="hidden" value="11" />
                <input id="guiId" name="guiId" type="hidden" value="111" /> -->
                <input type="submit" value="Show Templates" name="customize" class="btn btn-primary" />
                </form>
            </div>
        </div>

    </div>
    <!-- /.container -->

    <!-- JavaScript -->
    <script src="<%=request.getContextPath()%>/js/jquery-1.10.2.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>


</body>
</head>

</html>