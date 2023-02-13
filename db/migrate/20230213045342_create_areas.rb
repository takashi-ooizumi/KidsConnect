class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas do |t|
      t.string :address, null:false
      t.string :address_code, null:false
      
      t.timestamps
    end
  end
end
