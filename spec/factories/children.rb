FactoryBot.define do
  factory :child do
    avatar_name { 'hogehoge' }
    avatar_image_url { 'default' }
    gender { 0 }
    age { 4 }
    character { 5 }
    favorite_character_text { 'default' }
    favorite_character_id { 0 }
    profile { 'hello!' }
  end
end