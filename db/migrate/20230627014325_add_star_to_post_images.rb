class AddStarToPostImages < ActiveRecord::Migration[5.2]
  def change
    add_column :post_images, :star, :string
  end
end
