class Quote < ApplicationRecord
  # Associations
  belongs_to :user  # Each quote is created by a user
  belongs_to :philosopher  # Each quote is attributed to a philosopher
  belongs_to :category  # Each quote is associated with a category

  # Validations
  validates :body, :is_public, :user_id, :philosopher_id, :category_id, presence: true
end
