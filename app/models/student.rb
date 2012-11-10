class Student < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :extra_credit_balance, :fb_user_id, :post_to_facebook, :fb_access_token, :courses, :checkins
  attr_readonly :uid
  before_validation :generate_uid!
  has_many :courses, :checkins
  validates_associated :courses
  validates :first_name, :last_name, :fb_user_id, :email, :presence => true 
  self.primary_key = 'uid'
  
  def generate_uid!
    begin
      self.uid = SecureRandom.hex(16)
    end while Student.find_by_uid(self.uid).present?
  end
end
