class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :payments
  # after_initialize :set_default_role, :if => :new_record?
  def username
    email.split('@')[0].capitalize
  end
end
