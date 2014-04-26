
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

});