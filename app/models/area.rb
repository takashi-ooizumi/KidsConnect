class Area < ApplicationRecord
  has_many :playgrounds, dependent: :nullify
end
