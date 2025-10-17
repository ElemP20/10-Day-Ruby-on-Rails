class User < ApplicationRecord
  has_secure_password

  enum :role, { economy: 0, business: 1, first_class: 2 }

  validates :email, presence: true, uniqueness: true
  validates :role, presence: true
end
