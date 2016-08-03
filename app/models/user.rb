class User < ActiveRecord::Base
  has_secure_password
  has_many :thoughts
  validates :email, presence: true, uniqueness: true, format: { with: /\A.+@.+\z/ }
end
