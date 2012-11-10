class Courselist < ActiveRecord::Base
  attr_accessible :students
    has_many :students
    belongs_to :course :Out-of-courseEvent
end
