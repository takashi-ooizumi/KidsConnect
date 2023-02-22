FactoryBot.define do
  factory :playground do
    name { 'hogehoge' }
    address { 'default' }
    ared_id { 0 }
    image_url { 'default' }
    open_time { Time.local(2023, 2, 2, 9) }
    close_time { Time.local(2023, 2, 2, 17) }
    playing_type_id { 0 }
    infomation { 'this playground is ..' }
  end
end