class Type < ApplicationRecord
  has_many :products, dependent: :destroy
  belongs_to :category
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 3 }
end
