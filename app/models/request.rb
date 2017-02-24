class Request < ApplicationRecord
  has_many :quantities

  validates :name, presence: true, uniqueness: true
end
