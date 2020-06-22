class Book < ApplicationRecord
  belongs_to :language, :optional => true
end
