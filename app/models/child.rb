class Child < ApplicationRecord
  belongs_to :user
  belongs_to :favorite_character
end
