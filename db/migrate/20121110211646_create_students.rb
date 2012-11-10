class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :uid
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :extra_credit_balance
      t.string :fb_user_id
      t.string :fb_access_token
      t.boolean :post_to_facebook
      t.timestamps
    end
  end
end
