class CreateUserRecipe < ActiveRecord::Migration[5.2]
  def change
    create_table :user_recipes do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
    end
  end
end
