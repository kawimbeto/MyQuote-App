class User < ApplicationRecord
  has_secure_password  # For password_digest authentication

  # Associations
  has_many :quotes, dependent: :destroy  # A user can have many quotes

  # Validations
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
end
