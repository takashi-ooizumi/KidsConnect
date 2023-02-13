class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :avatar_name, null:false
      t.string :avatar_image_url, null:false
      t.reference :area, foreign_key:true, null:false
      t.string :email, null:false
      t.string :crypted_password, null:false
      t.string :salt, null:false
      t.integer :role, null:false
      t.string :reset_password_token
      t.date :reset_password_token_expires_at
      t.date :reset_password_emeil_sent_at
      t.string :access_count_to_reset_password_page

      t.timestamps
    end
  end
end
