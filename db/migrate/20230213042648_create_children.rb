class CreateChildren < ActiveRecord::Migration[7.0]
  def change
    create_table :children do |t|
      t.integer :user_id, null:false
      t.string :avatar_name
      t.string :avatar_image_url
      t.integer :gender
      t.integer :age
      t.integer :character
      t.string :favorite_character_text
      t.integer :favorite_character_id
      t.string :profile
      
      t.timestamps
    end
  end
end
