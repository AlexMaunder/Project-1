class CreateLanguagesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :languages_users, :id => false do |t|
      t.integer :language_id
      t.integer :user_id
    end
  end
end
