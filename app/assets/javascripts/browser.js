

window.Browser = {};

/**
 *  Gets the current location and calls the callback when complete
 * 
 *  @param successCallback {Function} The function to call when obtaining location is complete
 */
window.Browser.getCurrentLocation = function(/* Function */ successCalback){
	
	function exportLocation(position) {
	  var location = {};
	  location.latitude = position.coords.latitude;
	  location.longitude = position.coords.longitude;
	  successCalback(location);
	}

	function errorHandler(err) {
	  if(err.code == 1) {
	    alert("Error: Access is denied!");
	  }else if( err.code == 2) {
	    alert("Error: Position is unavailable!");
	  }
	  
	  successCalback(null);
	}
	
	if(navigator.geolocation){
      // timeout at 60000 milliseconds (60 seconds)
      var options = {timeout:60000};
      navigator.geolocation.getCurrentPosition(exportLocation, 
                                               errorHandler,
                                               options);
   }else{
      alert("Sorry, browser does not support geolocation!");
      successCallback(null);
   }
}
