class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  has_many :repos
  has_and_belongs_to_many :languages
end
