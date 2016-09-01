class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :user_id, null: false
      t.string :photo_img_url, null: false, uniqeness: true
      t.string :title
      t.text :description
      t.integer :views
      t.float :lat
      t.float :lng
      t.timestamps null: false
    end
  end
end
