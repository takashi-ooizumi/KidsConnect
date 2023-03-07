class Child < ApplicationRecord
  belongs_to :user
  belongs_to :favorite_character

  enum gender_types: {
      female: 0,
      male: 1,
      unanswered: 2
  }
end
