class Checkin < ActiveRecord::Base
    attr_accessible :Student, :Course, :Location
    belongs_to :Course :include => Location
    has_one :Student
    
    def new
        
    end
    
    def Checkin.Post
        
    end
    
    def saveRecord
    
    end
end
