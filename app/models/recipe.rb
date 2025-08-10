class Recipe < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :favorited_by_users, through: :favorites, source: :user

  def date_submitted
    created_at.strftime("%B %d, %Y")  # e.g., "August 4, 2025"
  end
end
