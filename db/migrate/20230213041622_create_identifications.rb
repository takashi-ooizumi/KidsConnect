class CreateIdentifications < ActiveRecord::Migration[7.0]
  def change
    create_table :identifications do |t|
      t.reference :user, foreign_key:true, null:false
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :adress
      t.string :phone_number
      t.string :work
      t.string :identification_data_path
      t.boolean :confirm_flag
      
      t.timestamps
    end
  end
end
