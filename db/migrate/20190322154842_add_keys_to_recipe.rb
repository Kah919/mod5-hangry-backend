class AddKeysToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :recipeName, :string
    add_column :recipes, :ingredients, :string
    add_column :recipes, :imageUrlsBySize, :string
    add_column :recipes, :totalTimeInSeconds, :integer
    add_column :recipes, :rating, :integer

    remove_column :recipes, :name
  end
end
