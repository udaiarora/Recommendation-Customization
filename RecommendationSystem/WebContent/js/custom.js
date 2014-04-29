function toReco(){
	$(".search-bar").slideUp(100);
	$("h1").html("Recommendations");
	$(".recommended-templates-container").removeClass("hidden");
	$(".customize_button_container").removeClass("hidden");
	$(".rec-add-container").removeClass("hidden");
	$(".rec-added-title-container").removeClass("hidden");
	$(".back-but-container").removeClass("hidden");
	$(".next-but-container").addClass("hidden");
}

function toAdd(){
	$(".search-bar").slideDown(100);
	$("h1").html("Search Templates");
	$(".recommended-templates-container").addClass("hidden");
	$(".customize_button_container").addClass("hidden");
	$(".rec-add-container").addClass("hidden");
	$(".rec-added-title-container").addClass("hidden");
	$(".back-but-container").addClass("hidden");
	$(".next-but-container").removeClass("hidden");
}
var suggestions=[];
$.ajax({
	url:"/RecommendationSystem/GetAutocompleteSuggestions",
	success:function(response)
	{
		for(var i=0; i<response.templateName.length;i++) {
			suggestions.push(response.templateName[i]);
		}
		$(function() {	
			$( "#autocomplete" ).autocomplete({
				source:  suggestions
		        });

		});

	}
});


var temps = [{tempid:"12"},{tempid:"332"},{tempid:"44"}];
var dummy= ["aaaaa","afafas","ffwgwe"];
var global_temps=[];

$(document).ready(function(){
	

	$("#add_button").on("click",function(){

		var toadd=$("#autocomplete").val();
		if(($.inArray(toadd, suggestions)+1) && !($.inArray(toadd, global_temps)+1))
		{
			$(".added-templates").append("<div class='added-temp'>"+toadd+"</div>");
			global_temps.push(toadd);
		}
	});

	$("#next_button").on("click", function(){
		$.ajax({
			url:"/RecommendationSystem/TemplateSearchScreen",
			data: {
				attribute: JSON.stringify(temps)
				//attribute: "Hello"
			},
			success:function(response)
			{
				//dosomething
				console.log("yay");
			}
		});
		//Change view
		toReco();
	});

	$("#back_button").on("click", function(){
		toAdd();
	});

	$(".added-templates").on("click", ".added-temp", function(){
		$(this).toggleClass("added-temp-select");
	});

	$("#delete_button").on("click", function(){
		$(".added-temp-select").each(function(){
			global_temps.splice(global_temps.indexOf($(this).text()), 1);
		}) ;
		
		$(".added-temp-select").remove();
	});


});


/*
$(function() {
	
	$( "#query" ).autocomplete({
		source:  function(req, add){
			
                //pass request to server
                $.getJSON("/IR_RestfulAPI/rest/home/querycomp?partialquery="+$("#query").val(), req, function(data) {
                	
                    //create array for response objects
                    var suggestions = [];
                    
                    //process response
                    for(i=0; i<5;i++){                             
                    	suggestions.push(data[i].value);
                    }
                    
         	       //pass array to callback
         	       add(suggestions);
         	   });
                
            }
        });
});


*/