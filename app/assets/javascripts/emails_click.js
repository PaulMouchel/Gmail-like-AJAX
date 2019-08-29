$(document).ready(function() {
	$(".email-line").click(function(){
		let url = "emails/" + this.id
		$.ajax({
		    url: url,
		    type: "GET",
		    dataType : 'script', 
		});
	})
});

