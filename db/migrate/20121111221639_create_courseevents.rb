class CreateCourseevents < ActiveRecord::Migration
  def change
    create_table :courseevents do |t|

      t.timestamps
    end
  end
end
