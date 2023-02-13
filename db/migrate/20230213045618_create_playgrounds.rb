class CreatePlaygrounds < ActiveRecord::Migration[7.0]
  def change
    create_table :playgrounds do |t|
      t.string :name, null:false
      t.string :address, null:false
      t.integer :area_id
      t.string :image_url
      t.date :open_time
      t.date :close_time
      t.integer :playng_type_id
      t.string :infomation
      
      t.timestamps
    end
  end
end
