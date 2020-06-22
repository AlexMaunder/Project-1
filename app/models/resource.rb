class Resource < ApplicationRecord
  belongs_to :language, :optional => true
  has_and_belongs_to_many :languages
  has_and_belongs_to_many :repos
end
