class User < ApplicationRecord
  has_many :recipes, dependent: :destroy
  has_many :favorites
  has_many :favorite_recipes, through: :favorites, source: :recipe

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
