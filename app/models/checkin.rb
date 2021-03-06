class Checkin < ActiveRecord::Base
    attr_accessible :latitude, :longitude
    belongs_to :course
    has_one :student
    validates :latitude, :longitude, :presence => true
    
    def post
         
      if(self.student.post_to_facebook)
        
        Rails.logger.info("Student would like to post to facebook")
        
        @graph = Koala::Facebook::API.new(self.student.fb_access_token)
        
        @graph.put_connections("me", "rollcallapp:check_in_to", :class => "http://rollcallapp.herokuapp.com/course_object.html")
      end
      
    end
end
