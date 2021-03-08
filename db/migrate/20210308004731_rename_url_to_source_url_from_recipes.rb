class RenameUrlToSourceUrlFromRecipes < ActiveRecord::Migration[6.1]
  def change
    rename_column :recipes, :url, :source_url
  end
end
