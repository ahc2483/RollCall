class Checkin < ActiveRecord::Base
    attr_accessible :latitude, :longitude
    belongs_to :course
    has_one :student
    validates :latitude, :longitude, :presence => true
    
    def Checkin.Post
        
    end
end
