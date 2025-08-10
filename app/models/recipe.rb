class Recipe < ApplicationRecord
  belongs_to :user

  def date_submitted
    created_at.strftime("%B %d, %Y")  # e.g., "August 4, 2025"
  end
end
