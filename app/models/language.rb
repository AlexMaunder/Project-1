class Language < ApplicationRecord
  has_many :resources
  has_many :books
end
