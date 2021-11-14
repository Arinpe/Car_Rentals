class User < ApplicationRecord
<<<<<<< HEAD
  has_many :appointments
  has_many :cars, through: :appointments

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates_uniqueness_of :username
  validates :username, :email, presence: true
  validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end
=======
    has_secure_password
end
>>>>>>> 8802620d73c5f55fb978631e92d12330e1d0a2b7
