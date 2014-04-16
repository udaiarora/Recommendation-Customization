<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recommendation and Customization Engine</title>
<link href="css/bootstrap.css" rel="stylesheet" media="screen">  

<style>
    body {
        margin-top: 60px;
    }
</style>
    
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
</nav>

 <div class="container">

        <div class="row">
                <h1 style="position:absolute;left:345px; top:136px; width:800px; height:150px; z-index:0">University Template Recommendation Engine</h1>

				<form id ="loginform" name="loginForm" target="_self" method="post" action="Welcome" style="margin:0px" class="form-inline">

				<input name="username"  type="text" class="form-control" style="position:absolute;width:200px;left:611px;top:250px;z-index:2" placeholder="Username" maxlength="30"/>
				<input name	="password" type="password" class="form-control"  style="position:absolute;width:200px;left:612px;top:292px;z-index:3" placeholder="Password" maxlength="15"/>

				<input name="login" type="submit" value="Log In" style="position:absolute;left:630px;top:350px;z-index:4;" class = "btn btn-primary"/>
				<input name="login" type="reset" value="Reset" style="position:absolute;left:730px;top:350px;z-index:4;" class = "btn btn-primary"/>
				
				</form>
			</div>
			<%
				
				if(request.getAttribute("loginError") != null)
				{%>
				<p style="position:absolute;left:620px;top:400px;color:red">${loginError}</p>	
				<%}%>
		</div>

<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>