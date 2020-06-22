class CreateLanguagesResources < ActiveRecord::Migration[5.2]
  def change
    create_table :languages_resources, :id => false do |t|
      t.integer :language_id
      t.integer :resource_id
      t.integer :book_id
    end
  end
end
