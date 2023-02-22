class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :avatar_name, null:false, default: 'default'
      t.string :avatar_image_url, null:false, default: 'default'
      t.references :area, foreign_key:true
      t.string :email, null:false, default: 'default'
      t.string :crypted_password, null:false, default: 'default'
      t.string :salt, null:false, default: 'default'
      t.integer :role, null:false, default: 0
      t.string :reset_password_token
      t.date :reset_password_token_expires_at
      t.date :reset_password_emeil_sent_at
      t.string :access_count_to_reset_password_page

      t.timestamps
    end
  end
end
