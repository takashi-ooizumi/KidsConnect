class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.references :user, foreign_key:{to_table: :users}, null:false
      t.references :target_user, foreign_key:{to_table: :users} null:false
      t.string :message, null:false
      t.date :readed_at

      t.timestamps
    end
  end
end
