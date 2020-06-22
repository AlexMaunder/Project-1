class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.text :title
      t.text :url
      t.integer :language_id

      t.timestamps
    end
  end
end
