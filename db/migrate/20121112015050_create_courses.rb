class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.decimal :latitude
      t.decimal :longitude
      
      t.timestamps
    end
  end
end
