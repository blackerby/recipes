class AddUrlToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :url, :string
  end
end
