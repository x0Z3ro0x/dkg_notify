window.addEventListener('message', function(event) {
	var msg = event.data.message;
	var dur = event.data.duration;
	
	switch (event.data.type) {
		case 'showSimple':
			showSimpleNote(msg, dur);
			break;
	}
});

function showSimpleNote(msg, dur) {
	var sNote = document.getElementById("simpleNote");
	
	sNote.style.display = "block";
	sNote.innerHTML = msg;
	console.log(dur);
	var countdown = setInterval(function() {
		var sNote = document.getElementById("simpleNote")
		dur = dur - 1;
		console.log(dur);

		if (dur <= 0) {
			sNote.style.display = "none";
			clearInterval(countdown);
		}
	}, 1000);
}