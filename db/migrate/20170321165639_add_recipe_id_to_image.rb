class AddRecipeIdToImage < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :recipe_id, :integer
    add_column :images, :image_url, :string
  end
end
