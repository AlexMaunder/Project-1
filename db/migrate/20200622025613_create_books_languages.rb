class CreateBooksLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :books_languages, :id => false do |t|
      t.integer :book_id
      t.integer :language_id
    end
  end
end
