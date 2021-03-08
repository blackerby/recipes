class ChangeIngredientsToTextFromRecipes < ActiveRecord::Migration[6.1]
  def change
    change_column :recipes, :ingredients, :text
  end
end
