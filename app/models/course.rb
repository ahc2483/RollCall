class Course < ActiveRecord::Base
   attr_accessible :title, :description, :latitude, :longitude
   has_and_belongs_to_many :students
   validates :title, :description, :latitude, :longitude, :presence => true
    
end
