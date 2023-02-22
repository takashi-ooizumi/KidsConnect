class Playground < ApplicationRecord
  belongs_to :area, optional: true
  belongs_to :playng_type
end
