<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Starter Template for Bootstrap</title>

    <link href="/RecommendationSystem/css/bootstrap.css" rel="stylesheet">
    <link href="/RecommendationSystem/css/recommendation.css" rel="stylesheet">
    <script type="text/javascript" src="/RecommendationSystem/js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="/RecommendationSystem/js/jquery.autocomplete.js"></script>
    <script type="text/javascript" src="/RecommendationSystem/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/RecommendationSystem/js/custom.js"></script>
    <!-- Add custom CSS here -->
    
    <style>
        body {
            margin-top: 60px;
        }
    </style>

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
                </button>
                <a class="navbar-brand" href="index.php">Template Recommendation and Customization Engine</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="search">Search</a>
                    </li>
                    <li><a href="customize">Customize</a>
                    </li>
                    <li><a href="viewDelete">View/Delete</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <div class="container">

        <div class="row">
            <div class="col-lg-6">
               <div id="searchfield">
                <form><input type="text" name="currency" class="biginput" id="autocomplete"></form>
            </div>
        </div>
        <div class="col-lg-2">
            <button id="add_button" type="button" class="btn btn-default add-butt">Add</button>
        </div>
    </div>
    <div class="row">
       <div class="col-lg-6">
          <div class="added-templates"></div>
      </div>

</div>
<div class="row">
        <button id="next_button" type="button" class="btn btn-default">Next</button>
    </div>



</body>

</html>
