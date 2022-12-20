class Product < ApplicationRecord
  belongs_to :type

  has_one_attached :image

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 3 }
  def set_name
    self[:name] = "#{Type.find(self[:type_id]).name} #{self[:name]}"
  end
end
