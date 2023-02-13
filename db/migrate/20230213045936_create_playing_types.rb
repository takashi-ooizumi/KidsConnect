class CreatePlayingTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :playing_types do |t|
      t.string :name
      
      t.timestamps
    end
  end
end
