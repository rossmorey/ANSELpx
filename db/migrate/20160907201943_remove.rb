class Remove < ActiveRecord::Migration
  def change
    remove_column :photos, :lat
    remove_column :photos, :lng
    add_column :photos, :width, :integer
    add_column :photos, :height, :integer
  end
end
