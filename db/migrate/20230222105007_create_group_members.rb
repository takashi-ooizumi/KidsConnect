class CreateGroupMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :group_members do |t|
      t.references :user, foreign_key:{to_table: :users}
      t.references :target_user, foreign_key:{to_table: :users} 

      t.timestamps
    end
  end
end
