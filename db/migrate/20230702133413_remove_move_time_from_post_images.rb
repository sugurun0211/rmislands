class RemoveMoveTimeFromPostImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :post_images, :move_time, :text
  end
end
