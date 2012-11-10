class Course < ActiveRecord::Base
   attr_accessible :Name, :Description, :Latitude, :Longitude, :CurrenAttendees
    has_one :classlist
    has_many :CourseEvent, :students
    validates :Name, :Description, :Latitude, :Longitude, :CurrenAttendees :presence => true
    
class CourseEvent < Course
    attr_accessible :ExtraCreditValue
end
