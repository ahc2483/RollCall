class StudentController < ApplicationController
  def index
    @student = Student.find(params[:uid])
    
    Rails.logger.info(@student.id)
  end

  def checkin
    #Do checkin processing
  end
end
