class CreateFavoriteCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_characters do |t|
      t.string :name
      t.string :infomation
      t.string :image_url
      
      t.timestamps
    end
  end
end
