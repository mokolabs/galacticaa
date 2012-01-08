<!--

// Internet Explorer
if (
	(window.navigator.userAgent.indexOf("SV1") != -1 ) || 
	(window.navigator.userAgent.indexOf("MSIE 7.") != -1 )
) {

	document.write('<p><a href="/downloads/Galacticaa.widget">Click to download Galacticaa (Yahoo Widget version)</a></p>');

// All other browsers
} else {

	document.write('<p>Your download will begin shortly&hellip;<br />');
	document.write('<span style="font-size: 10px; color: #777;">');
	document.write('If you\'re download fails to start, <a href="/downloads/Galacticaa.widget">click here</a>.</span></p>');
	document.write('<iframe height="0" width="0" border="0" frameborder="0" src="/downloads/Galacticaa.widget"></iframe>');

}

//-->
