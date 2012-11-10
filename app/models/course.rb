class Course < ActiveRecord::Base
   attr_accessible :Name, :Description, :Latitude, :Longitude, :CurrenAttendees
    has_one :classlist
    has_many :Out-of-classevent, :students
    validates :Name, :Description, :Latitude, :Longitude, :CurrenAttendees :presence => true
end
