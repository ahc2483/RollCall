class CheckinController < ApplicationController
  def post
    
    #Create a new checkin, use it to validate logic, and then save it
    
    @student = Student.find(params[:student_id])
    
    @checkin = Checkin.new({:latitude => params[:latitude], :longitude => params[:longitude]})
    
    @checkin.student = @student
    @checkin.course = Course.find(params[:course_id])
    
    Rails.logger.info("New Checkin ID: #{@checkin.id}")
    
    @checkin.post()
    
  end
end
