class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|

      t.decimal :latitude
      t.decimal :longitude
      t.integer :student_id
      t.integer :course_id

      t.timestamps
    end
  end
end
