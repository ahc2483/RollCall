window.StudentApp = {}

StudentApp.checkInToClass = function(courseId){
	
	window.Browser.getCurrentLocation(function(position){
		if(null != position){
			
			var url = [];
			
			url.push(
				'/checkin/post?student_id=',$("#student_id").val(),
				'&course_id=',courseId,
				'&latitude=', position.latitude,
				'&longitude=',position.longitude
			);
		
			$.ajax({
			  type: 'POST',
			  url: url.join(''),
			  success: function(e){
			  	alert("Checkin Successful!");
			  },
			});	
		}
	});
}
