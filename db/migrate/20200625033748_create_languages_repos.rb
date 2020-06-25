class CreateLanguagesRepos < ActiveRecord::Migration[5.2]
  def change
    create_table :languages_repos, :id => false do |t|
      t.integer :language_id
      t.integer :repo_id
    end
  end
end
