class Restaurant < ApplicationRecord
  validates :name, :address, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
