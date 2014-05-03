function toRecoScreen(){
	$(".search-bar").slideUp(100);
	$("h1").html("Recommendations");
	$(".recommended-templates-container").removeClass("hidden");
	$(".customize_button_container").removeClass("hidden");
	$(".rec-add-container").removeClass("hidden");
	$(".rec-added-title-container").removeClass("hidden");
	$(".back-but-container").removeClass("hidden");
	$(".next-but-container").addClass("hidden");
	getRecos();
}

function toAddScreen(){
	$(".search-bar").slideDown(100);
	$("h1").html("Search Templates");
	$(".recommended-templates-container").addClass("hidden");
	$(".customize_button_container").addClass("hidden");
	$(".rec-add-container").addClass("hidden");
	$(".rec-added-title-container").addClass("hidden");
	$(".back-but-container").addClass("hidden");
	$(".next-but-container").removeClass("hidden");
}

function getRecos() {
	$.ajax({
	url:"/RecommendationSystem/GetRecommendations",
	data: {
				attribute: global_temps.join(",")
			},
	success:function(response)
	{
		$(".recommended-templates").html(" ");
		for(var i=0; i<response.templateName.length;i++) {
			$(".recommended-templates").append("<div class='reco-temp'>"+response.templateName[i]+"</div>");
		}


	}
	});
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

var global_temps=[];

$(document).ready(function(){
	


	$("#add_button").on("click",function(){

		toadd=$("#autocomplete").val();
		if(($.inArray(toadd, suggestions)+1) && !($.inArray(toadd, global_temps)+1))
		{
			$(".added-templates").append("<div class='added-temp'>"+toadd+"</div>");
			global_temps.push(toadd);
		}
	});




	$("#next_button").on("click", function(){
		//Change view
		toRecoScreen();
	});




	$("#back_button").on("click", function(){
		toAddScreen();
	});




	$(".added-templates").on("click", ".added-temp", function(){
		$(this).toggleClass("added-temp-select");
	});

	$("#delete_button").on("click", function(){
		$(".added-temp-select").each(function(){
			global_temps.splice(global_temps.indexOf($(this).text()), 1);
		}) ;
		
		$(".added-temp-select").remove();
		getRecos();
	});



	$(".recommended-templates").on("click", ".reco-temp", function(){
		toadd=$(this).text();
		if(($.inArray(toadd, suggestions)+1) && !($.inArray(toadd, global_temps)+1))
		{
			$(".added-templates").append("<div class='added-temp'>"+toadd+"</div>")
			global_temps.push(toadd);
		}
		getRecos();
	})

	$("#customize_button").on("click", function(){
		alert("The following are persisted to DB: "+global_temps);
	})

});

