class CreateReposResources < ActiveRecord::Migration[5.2]
  def change
    create_table :repos_resources do |t|
      t.integer :repo_id
      t.integer :resource_id
    end
  end
end
