<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" media="screen" href="/RecommendationSystem/css/bootstrap.css" />  
<style>
    body {
        margin-top: 60px;
    }
</style>
<script type="text/javascript">
window.history.forward(1);
function noBack()
{
	window.history.forward(); 
}
</script>
</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onload="">
<jsp:include page="/pages/menu.jsp"></jsp:include>

    <div class="container">

        <div class="row">
            <div class="col-lg-12">
            <form id ="workflowform" name="workflowform" target="_self" method="POST" action="/RecommendationSystem/Workflowsaved" style="margin:0px" class="form-inline">
            <label for="Step1" style="position:absolute;width:400px;left:40px;top:05px;z-index:2"><b><i>Enter Values to Customize WorkFlow</i></b></label>
			<label for="Step1" style="position:absolute;width:200px;left:40px;top:45px;z-index:2">Step1</label>
			<input type="text" class="form-control" name="Step1" id="Step1" value="${stepsList[0]}" style="position:absolute;width:200px;left:100px;top:40px;z-index:2">
			<label for="Step2" style="position:absolute;width:200px;left:40px;top:85px;z-index:2">Step2</label>
			<input type="text" class="form-control" name="Step2" id="Step2" value="${stepsList[1]}" style="position:absolute;width:200px;left:100px;top:80px;z-index:2">
			<label for="Step3" style="position:absolute;width:200px;left:40px;top:125px;z-index:2">Step3</label>
			<input type="text" class="form-control" name="Step3" id="Step3" value="${stepsList[2]}" style="position:absolute;width:200px;left:100px;top:120px;z-index:2">
			<label for="Step4" style="position:absolute;width:200px;left:40px;top:165px;z-index:2">Step4</label>
			<input type="text" class="form-control" name="Step4" id="Step4" value="${stepsList[3]}" style="position:absolute;width:200px;left:100px;top:160px;z-index:2"> <br/>
			<label for="Step5" style="position:absolute;width:200px;left:40px;top:205px;z-index:2">Step5</label>
			<input type="text" class="form-control" name="Step5" id="Step5" value="${stepsList[4]}" style="position:absolute;width:200px;left:100px;top:200px;z-index:2"> <br/>
			<input type="hidden" name="templateId" value="${templateId }">
			<input type="submit" name="saveworkflow" id="saveworkflow" value="Customize Workflow" style="position:absolute;left:110px;top:270px;z-index:2" class = "btn btn-primary">
			<label for="Step1" style="position:absolute;width:400px;left:620px;top:05px;z-index:2"><b><i>Customized WorkFlow</i></b></label>
            <h4><span class="label label-warning" style="position:absolute;width:200px;left:600px;top:40px;z-index:2">Work Flow Step 1</span></h4>
            <h4><span class="label label-default" style="position:absolute;width:200px;left:600px;top:80px;z-index:2">${stepsList[0]}</span></h4>
            <h4><span class="label label-warning" style="position:absolute;width:200px;left:600px;top:120px;z-index:2">Work Flow Step 2</span></h4>
            <h4><span class="label label-default" style="position:absolute;width:200px;left:600px;top:160px;z-index:2">${stepsList[1]}</span></h4>
            <h4><span class="label label-warning" style="position:absolute;width:200px;left:600px;top:200px;z-index:2">Work Flow Step 3</span></h4>
            <h4><span class="label label-default" style="position:absolute;width:200px;left:600px;top:240px;z-index:2">${stepsList[2]}</span></h4>
            <h4><span class="label label-warning" style="position:absolute;width:200px;left:600px;top:280px;z-index:2">Work Flow Step 4</span></h4>
            <h4><span class="label label-default" style="position:absolute;width:200px;left:600px;top:320px;z-index:2">${stepsList[3]}</span></h4>
            <h4><span class="label label-warning" style="position:absolute;width:200px;left:600px;top:360px;z-index:2">Work Flow Step 5</span></h4>
            <h4><span class="label label-default" style="position:absolute;width:200px;left:600px;top:400px;z-index:2">${stepsList[4]}</span></h4>
         
            </form>
            </div>
        </div>

    </div>
    <!-- /.container -->

    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>


</body>
</head>

</html>