FactoryBot.define do
  factory :message do
    user_id { 0 }
    target_user_id { 1 }
    message { 'hello!' }
    readed { false }
  end
end