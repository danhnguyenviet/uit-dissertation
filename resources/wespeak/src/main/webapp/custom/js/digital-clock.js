var interval = setInterval(timestamphome, 1000);

function timestamphome(){
	
	var date;
	date = new Date();

	var time = document.getElementById('digital-clock'); 
	time.innerHTML = date.toLocaleTimeString();
}

