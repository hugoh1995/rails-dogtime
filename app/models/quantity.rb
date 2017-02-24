class Quantity < ApplicationRecord
  belongs_to :request
  belongs_to :breed

  validates :breed, uniqueness: { scope: :request }
end
