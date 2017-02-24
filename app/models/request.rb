class Request < ApplicationRecord
  has_attachment :photo
  has_many :quantities

  validates :name, presence: true, uniqueness: true
end
