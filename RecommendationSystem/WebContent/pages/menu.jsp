<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
function submit()
{
	document.getElementById("customizeform").submit();
}
</script>
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">Home</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
            <form id ="customizeform" name="customizeform" target="_self" method="POST" action="showTemplates" class="form-inline">
                <ul class="nav navbar-nav">
                    <li><a href="">Search</a>
                    </li>
                    <li><a href="javascript:submit()">View / Edit Templates</a>
                    </li>
                    <li><a href="#">Organization Info</a>
                    </li>
                    <li><a href="/RecommendationSystem">Log out</a>
                    </li>
                </ul>
                </form>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <script src="<%=request.getContextPath()%>/js/jquery-1.10.2.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
<body>

</body>
</html>