class Student < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :extra_credit_balance, :fb_user_id, :post_to_facebook, :fb_access_token
  has_and_belongs_to_many :courses
  has_many :checkins
  validates :first_name, :last_name, :fb_user_id, :email, :presence => true
    
   def getName
        Student.first_name 
        Student.last_name
    end
    
    def getEmail
        Student.email
    end
    
    def getCredit
        Student.extra_credit_balance
    end
    
end
