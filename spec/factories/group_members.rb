FactoryBot.define do
  factory :group_member do
    user_id { 0 }
    target_user_id { 1 }
  end
end