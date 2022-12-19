class Product < ApplicationRecord
  belongs_to :type

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 3 }
end
