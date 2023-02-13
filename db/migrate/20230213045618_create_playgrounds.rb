class CreatePlaygrounds < ActiveRecord::Migration[7.0]
  def change
    create_table :playgrounds do |t|
      t.string :name, null:false
      t.string :address, null:false
      t.reference :area, foreign_key:true
      t.string :image_url
      t.date :open_time
      t.date :close_time
      t.reference :playng_type, foreign_key:true
      t.string :infomation

      t.timestamps
    end
  end
end
