class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true
  belongs_to :area, optional: true
  has_one :Identification
  has_many :children, dependent: :destroy
  has_many :group_members_user, class_name: 'GroupMember', :foreign_key => 'user_id', dependent: :destroy
  has_many :group_members_target, class_name: 'GroupMember', :foreign_key => 'target_user_id', dependent: :destroy
  has_many :block_members_user, class_name: 'BlockMember', :foreign_key => 'user_id', dependent: :destroy
  has_many :block_members_target, class_name: 'BlockMember', :foreign_key => 'target_user_id', dependent: :destroy
  has_many :messages_user, class_name: 'Message', :foreign_key => 'user_id', dependent: :destroy
  has_many :messages_target, class_name: 'Message', :foreign_key => 'target_user_id', dependent: :destroy
end
