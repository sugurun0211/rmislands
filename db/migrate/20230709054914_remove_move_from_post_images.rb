class RemoveMoveFromPostImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :post_images, :move, :text
  end
end
