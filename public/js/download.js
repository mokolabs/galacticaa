function start_download(type) {
	switch(type) {
		case 'dashboard':
			window.setTimeout("dashboard();",1000);
			break;
		case 'yahoo':
			window.setTimeout("yahoo();",1000);
			break;
	}
	if (type != 'yahoo') {
		window.setTimeout("redirect();",2000);
	}
}

function dashboard() {
	window.location.href = '/downloads/Galacticaa.wdgt.zip';
}

function yahoo() {
/* deprecated for now */
	if (
			(window.navigator.userAgent.indexOf("SV1") != -1 ) || 
			(window.navigator.userAgent.indexOf("MSIE 7.") != -1 )
		) {
		window.location.href = '/yahoo';
	} else {
		window.location.href = '/downloads/Galacticaa.widget';
	}
}

function redirect() {
	window.location.href = 'http://galacticaa.net';
}
