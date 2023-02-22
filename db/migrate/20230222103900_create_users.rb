class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :avatar_name
      t.string :avatar_image_url
      t.references :area, foreign_key:true
      t.string :email
      t.string :crypted_password
      t.string :salt
      t.integer :role
      t.string :reset_password_token
      t.date :reset_password_token_expires_at
      t.date :reset_password_emeil_sent_at
      t.string :access_count_to_reset_password_page

      t.timestamps
    end
  end
end
