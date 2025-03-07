class Philosopher < ApplicationRecord
  # Associations
  has_many :quotes, dependent: :destroy  # A philosopher can have many quotes

  # Validations
  validates :first_name, :birth_year, presence: true
end
