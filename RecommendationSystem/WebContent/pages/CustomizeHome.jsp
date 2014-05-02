<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Customization Home</title>

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
    
        </div>
    
    </nav>
</br></br></br></br>

<!-- include the menu.jsp page -->
<%-- <jsp:include page="<%=request.getContextPath()%>/pages/menu.jsp"/>
 --%>

<div class="panel panel-primary">
  <!-- Default panel contents -->
  <div class="panel-heading">Customization Home</div>
  <div class="well">
  <div class="panel-body">
 
  <!-- List group -->
  <ul class="list-group">

    <li class="list-group-item"><a href="<%=request.getContextPath()%>/pages/ServiceComponentCustomizationHome.jsp">Customize Templates</a></li>
    <li class="list-group-item"><a href="<%=request.getContextPath()%>/pages/ServiceComponentCustomizationHome.jsp">Customize Services</a></li>
    <li class="list-group-item"><a href="<%=request.getContextPath()%>/pages/ServiceComponentCustomizationHome.jsp">Customize Workflow</a></li>
    <li class="list-group-item"><a href="<%=request.getContextPath()%>/pages/ServiceComponentCustomizationHome.jsp">Customize DataModel</a></li>
  
  </ul>   
  </div>
  </div>
</div>


</body>

</html>
