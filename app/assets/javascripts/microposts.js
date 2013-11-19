function updateCounter(){
	if ($('#micropost_content').val().length > 140){
		$('.countdown').css('color', 'red');
		$('.countdown').text('Too long!');
	} else {
		$('.countdown').text(140 - $('#micropost_content').val().length);
		$('.countdown').css('color', 'black');
	}
		
}

$(document).ready(function(){
	updateCounter();
	$('#micropost_content').change(updateCounter);
	$('#micropost_content').keyup(updateCounter);
})