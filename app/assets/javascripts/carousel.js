$(document).ready(function() {
	let displayedImg = 0;
	let max = $("#carousel").children().length - 1;
	display();

	function display() {
		$(".carousel-img").hide();
		$("#carousel").children().eq(displayedImg).fadeIn(500);
		clearDots();
		$(".dot").eq(displayedImg).addClass("dot-active")
	}

	$("#previous").click(function(){
		if (--displayedImg < 0)
			displayedImg = max;
		display();
	});

	function next() {
		if (++displayedImg > max)
			displayedImg = 0;
		display();
	}

	$("#next").click(next);

	window.setInterval(next, 3000); 

	$(".dot").click(function(){
		displayedImg = $(this).attr("slide");
		display();
	});

	function clearDots() {
		for(i=0 ; i<=max ; i++) {
			$(".dot").eq(i).removeClass("dot-active");
		}
	}
});

