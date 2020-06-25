class Language < ApplicationRecord
  has_and_belongs_to_many :resources
  has_and_belongs_to_many :repos
  has_and_belongs_to_many :users
  has_many :books
end
