$(document).ready(function(){
	$('#search-template').typeahead([
	{
		name: 'planets',
		local: [ "Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune" ]
	}
	]);
});