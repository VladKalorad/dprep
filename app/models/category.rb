class Category < ApplicationRecord
  has_many :types, dependent: :destroy
  
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 3 }
end
