<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"
%>
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
            <!-- Add custom CSS here -->
            <style>
                body { margin-top: 60px; }
            </style>
        </head>
        
        <body>
            <ol class="breadcrumb">
                <li>
                    <a href="#">Home</a>
                </li>
                <li>
                    <a href="#">Customization Home</a>
                </li>
                <li class="active">
                    Service Customization
                </li>
            </ol>
            <nav class="navbar navbar-inverse navbar-fixed-center" >
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                            <span class="sr-only">
                                Toggle navigation
                            </span>
                            <span class="icon-bar">
                            </span>
                            <span class="icon-bar">
                            </span>
                            <span class="icon-bar">
                            </span>
                        </button>
                        <a class="navbar-brand" href="#">Template Recommendation and Customization Engine</a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse navbar-ex1-collapse">
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="#">Search</a>
                            </li>
                            <!-- <li><a href="customize">Customize</a> -->
                            <li>
                                <a href="#">Customize</a>
                            </li>
                            <li>
                                <a href="viewDelete">View/Delete</a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container -->
            </nav>
            <!-- Split button -->
            <div class="form-group">
          
            <br>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            </div>
          
            <div class="panel panel-danger">
                <div class="panel-heading">
                  
                        Service Customization..
                </div>
                <div>
                  
                </div>
                <div class="panel-body">
                    <div class="well well-lg">
                            <form class="form-search" method="POST" commandName="serviceComponentForm" name="inputForm" action="/ASU_Google/search">
                        
                            <p class="lead">
                                {{user}}'s List of services that can be customized
                            </p>
                            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <div style="vertical-align: top;">
						</div>
						
						<div>
						<span class="help-block">This service is to search for books</span>
						 <input type= radio path="searchMethod" value="tfidf_clusters"/>searchBooksService()
						 </br></br> 
						 <span class="help-block">This service is to get information about...</span> 
						  <input type= radio path="searchMethod" value="tfidf_clusters"/>getUserInfoService()
						 </br> </br>
						 <span class="help-block">get the current jobs list</span> 
						 <input type= radio path="searchMethod" value="tfidf_clusters"/>getJobsListService()
						 </br> </br>
						 <span class="help-block">get the list of gyms</span> 
						 <input type= radio path="searchMethod" value="tfidf_clusters"/>listRecreationsService()
						 </br> </br>
						</div>		 
                            <a href="#" class="btn btn-success" role="button">OK</a>
                       </form>
                    </div>
                </div>
            </div>
      
        </body>
        </head>
    
    </html>