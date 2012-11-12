# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@course = Course.create(:title => 'Softeare Modeling', :description => 'An overview of various modeling techniques and their application in the field of software engineering.', :latitude => 43.147479399999995, :longitude => -77.61509319999999)

@students = Student.create([{:first_name => 'Andrew', :last_name => 'Church', :email => 'ahc2483@gmail.com', :fb_user_id => '24415537', :post_to_facebook => true}, 
  {:first_name => 'Corey', :last_name => 'Jenkins', :email => 'clj1553@rit.edu', :fb_user_id => '532430695', :post_to_facebook => true}])
  
@students.each do |student|
  student.courses<<@course
end
