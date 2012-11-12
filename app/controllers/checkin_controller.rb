class CheckinController < ApplicationController
  def post
    
    #Create a new checkin, use it to validate logic, and then save it
    
    @student = Student.find(params[:student_id])
    
    @checkin = Checkin.new({:latitude => params[:latitude], :longitude => params[:longitude]})
    
    @checkin.student = @student
    @checkin.course = Course.find(params[:course_id])
    
    Rails.logger.info("New Checkin ID: #{@checkin.id}")
    
    if(@student.post_to_facebook)
      
      @graph = Koala::Facebook::API.new(@student.fb_access_token)
      
      @graph.put_connections("me", "rollcallapp:check_in_to", :class => "http://andrewchurch.com/synergy/course_object.html")
    end
    
  end
end
