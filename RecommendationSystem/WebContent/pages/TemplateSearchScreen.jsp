<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Add Templates</title>

    <link href="/RecommendationSystem/css/bootstrap.css" rel="stylesheet">
    <link href="/RecommendationSystem/css/recommendation.css" rel="stylesheet">
    <link href="/RecommendationSystem/css/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
    <script type="text/javascript" src="/RecommendationSystem/js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="/RecommendationSystem/js/jquery-ui-1.10.4.custom.min.js"></script>
    <script type="text/javascript" src="/RecommendationSystem/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/RecommendationSystem/js/custom.js"></script>
    <!-- Add custom CSS here -->

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


    <nav class="navbar navbar-inverse navbar-fixed-top" >
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">Template Recommendation and Customization Engine</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->	
             <form id ="customizeform" name="customizeform" target="_self" method="POST" action="showTemplates" class="form-inline">
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="search">Search</a>
                    </li>
                   
                    <li><a href="<%=request.getContextPath()%>/pages/CustomizeHome.jsp"> Customize</a></li>
                    <li><a href="javascript:submit();">View / Edit Templates </a>
                    </li>
                </ul>
            </div>
            </form>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <div class="container">

        <div class="row mt-20">
            <div class="col-lg-6 "><h1>Search Templates</h1></div>
        </div>

        <div class="row mt-20 search-bar">
            <div class="col-lg-6">
                <input type="text" class="form-control" id="autocomplete">
            </div>
            <div class="col-lg-2">
                <button id="add_button" type="button" class="btn btn-default add-butt">Add</button>
            </div>
        </div>

        <div class="row hidden rec-added-title-container">
            <div class="col-lg-6">Added Templates</div>
            <div class="col-lg-6">Recommended Templates</div>
        </div>

        <div class="row">
            <div class="col-lg-6">
                <div class="added-templates"></div>
            </div>
            <div class="col-lg-6 hidden recommended-templates-container">
                <div class="recommended-templates"></div>
            </div>

        </div>
        <div class="row mt-20">
            <div class="col-lg-1 next-but-container">
                <button id="next_button" type="button" class="btn btn-default">Next</button>
            </div>
            <div class="col-lg-1 hidden back-but-container">
                <button id="back_button" type="button" class="btn btn-default">Back</button>
            </div>
            <div class="col-lg-1 hidden customize_button_container">
                <button id="customize_button" type="button" class="btn btn-default">Save</button>
            </div>
            <div class="col-lg-4">
                <button id="delete_button" type="button" class="btn btn-delete">Delete</button>
            </div>
        </div>



    </body>

    </html>
