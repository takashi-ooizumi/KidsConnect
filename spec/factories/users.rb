FactoryBot.define do
  factory :user do
    avatar_name { 'hogehoge' }
    avatar_image_url { 'default' }
    area_id { 0 }
    email { 'sample@example.com' }
    crypted_password { 'default' }
    salt { 'default' }
    role { 0 }
  end
end