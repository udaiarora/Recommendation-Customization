

var currencies = [
{ value: 'Afghan afghani', data: 'AFN' },
{ value: 'Albanian lek', data: 'ALL' },
{ value: 'Algerian dinar', data: 'DZD' },
{ value: 'European euro', data: 'EUR' },
{ value: 'Angolan kwanza', data: 'AOA' },
{ value: 'East Caribbean dollar', data: 'XCD' },
{ value: 'Vietnamese dong', data: 'VND' },
{ value: 'Yemeni rial', data: 'YER' },
{ value: 'Zambian kwacha', data: 'ZMK' },
{ value: 'Zimbabwean dollar', data: 'ZWD' }
];

var temps = [{tempid:"12"},{tempid:"332"},{tempid:"44"}];

$(document).ready(function(){
	$('#autocomplete').autocomplete({
		lookup: currencies,
		onSelect: function (suggestion) {
  // some function here
	}
	});

	$("#add_button").on("click",function(){
		var d=$("#autocomplete").val();
		$(".added-templates").append("<div>"+d+"</div>")
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
	});
});