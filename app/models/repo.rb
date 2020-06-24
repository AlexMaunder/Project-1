class Repo < ApplicationRecord
  belongs_to :user, :optional => true
  has_and_belongs_to_many :resources
  has_many :books, :through => :resources

# Map the resource to each Language - accessible from any Repo
  def resources_by_language
    resources.group_by { |r| r.language.title if r.language.present? } # group by language if the language is present
  end

end
