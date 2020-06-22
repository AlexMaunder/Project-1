class Repo < ApplicationRecord
  belongs_to :user, :optional => true
  has_and_belongs_to_many :resources
  has_many :books, :through => :resources
end
