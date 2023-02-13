class User < ApplicationRecord
  belongs_to :identification
  has_many :children, dependent: :destroy
  has_many :group_members_user, class_name: 'GroupMember', :foreign_key => 'user_id', dependent: :destroy
  has_many :group_members_target, class_name: 'GroupMember', :foreign_key => 'target_user_id', dependent: :destroy
  has_many :block_members_user, class_name: 'BlockMember', :foreign_key => 'user_id', dependent: :destroy
  has_many :block_members_target, class_name: 'BlockMember', :foreign_key => 'target_user_id', dependent: :destroy
  has_many :messages_user, class_name: 'Message', :foreign_key => 'user_id', dependent: :destroy
  has_many :messages_target, class_name: 'Message', :foreign_key => 'target_user_id', dependent: :destroy
  belongs_to :area
end
