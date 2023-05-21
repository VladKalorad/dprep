class Product < ApplicationRecord
  belongs_to :type
  has_many :orderables
  has_many :carts, through: :orderables

  has_one_attached :image

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 3 }

  def self.ransackable_attributes(auth_object = nil)
    ["composition", "created_at", "id", "manufacturer", "name", "price", "type_id", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["carts", "image_attachment", "image_blob", "orderables", "type"]
  end

  def set_name
    self[:name] = "#{Type.find(self[:type_id]).name} #{self[:name]}"
  end
end
