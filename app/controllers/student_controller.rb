class StudentController < ApplicationController
  def index
    @student = Student.find_by_uid(params[:uid])
  end

  def checkin
    #Do checkin processing
  end
end
