class AddRecipeIdToInsctructions < ActiveRecord::Migration[5.0]
  def change
    add_column :instructions, :recipe_id, :integer
  end
end
