class Area < ApplicationRecord
  has_many :playgrounds, dependent: :nullify
  has_many :user, dependent: :nullify
end
