$(document).ready(function() {
	$(".category-content").hide(); 
	$(".dropdown-content").hide();  
	

	$(".category-title").click(function(){
	    $(".category-content").hide(); 
	    $(this).next().children(".category-content").fadeIn(500);   
	});

	$(".avatar").click(function(){
	    $(".dropdown-content").toggle();  
	});

	$("#sign-in").click(function(e){
		e.preventDefault();
	    $("#modal1").show(); 
	});

	$("#sign-up").click(function(e){
		e.preventDefault();
	    $("#modal2").show(); 
	});

	$(".close").click(function(e){
		$("#modal1").hide(); 
	    $("#modal2").hide(); 
	});

});

