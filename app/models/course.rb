class Course < ActiveRecord::Base
   attr_accessible :title, :description, :latitude, :longitude, :currenAttendees
    has_many :courseEvents, :students
    validates :title, :description, :latitude, :longitude, :currenAttendees, :presence => true
    
end
