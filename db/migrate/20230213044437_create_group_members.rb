class CreateGroupMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :group_members do |t|
      t.integer :user_id, null:false
      t.integer :target_user_id, null:false
      
      t.timestamps
    end
  end
end
