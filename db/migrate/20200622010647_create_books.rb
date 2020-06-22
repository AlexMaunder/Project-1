class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :title
      t.text :image
      t.text :url
      t.integer :lang_id

      t.timestamps
    end
  end
end
