class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.integer :user_id, null:false
      t.integer :target_user_id, null:false
      t.string :message, null:false
      t.date :readed_at
      
      t.timestamps
    end
  end
end
