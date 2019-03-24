var back = document.getElementById("back");
window.onscroll = function() {
	var t = document.documentElement.scrollTop || document.body.scrollTop;
	if(t >= 300) {
		back.style.display = "inline";
	} else {
		back.style.display = "none";
	}
}
back.onclick = function() {
	var timer = setInterval(function() {
		document.documentElement.scrollTop-=30;
		document.body.scrollTop-=30;
		if((document.documentElement.scrollTop || document.body.scrollTop) <= 0) {
			clearInterval(timer);
		}
	}, 5);
}