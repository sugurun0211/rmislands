class CreatePostImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_images do |t|
      t.string :image_id
      t.text :spot_name
      t.text :island_name
      t.text :caption
      t.text :move
      t.text :move_time
      t.integer :user_id

      t.timestamps
    end
  end
end
