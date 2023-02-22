FactoryBot.define do
  factory :user do
    avatar_name { 'hogehoge' }
    avatar_image_url { 'default' }
    email { 'sample@example.com' }
    crypted_password { 'default' }
    salt { 'default' }
    role { 0 }

    association :area
  end
end