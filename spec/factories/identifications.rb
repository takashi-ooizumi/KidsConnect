FactoryBot.define do
  factory :identificate do
    user_id { 0 }
    first_name { 'default' }
    last_name { 'default' }
    age { 20 }
    address { 'default' }
    phone_number { '09000000000'}
    work { 'default' }
    identification_data_path { 'default' }
    confirm { false } 
  end
end