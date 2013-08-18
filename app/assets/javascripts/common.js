

function slider(){		
		
	//3d slider
	$("#mobile_carousel").featureCarousel({
		smallFeatureOffset : 35,
		carouselSpeed : 600,
		autoPlay : 4000
	});
	
	//banner_rotator
	$("#banner_rotator").cycle({ 		// GIVE A UNIQUE ID FOR PROJECT SNAPS SLIDESHOW HERE
		fx: "fade",					// choose amongst 28 transitions : http://jquery.malsup.com/cycle/browser.html
		speed: 600, 					//speed of the transition between the slides
		timeout: 4000 					// interval before the slide changes
	});			
}









