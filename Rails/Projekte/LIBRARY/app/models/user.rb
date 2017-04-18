class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /(\S+)@(\S+)/ }, uniqueness: { case_sensitive: false }
  validates :login, presence: true, uniqueness: { case_sensitive: false }
end
