class RemoveLanguageIdFromResources < ActiveRecord::Migration[5.2]
  def change
    remove_column :resources, :language_id
  end
end
