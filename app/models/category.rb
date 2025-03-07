class Category < ApplicationRecord
  # Associations
  has_many :quotes, dependent: :destroy  # A category can have many quotes

  # Validations
  validates :name, presence: true
end
