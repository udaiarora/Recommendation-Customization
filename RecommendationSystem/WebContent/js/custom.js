var temps = [{tempid:"12"},{tempid:"332"},{tempid:"44"}];
$(document).ready(function(){
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
	});
});