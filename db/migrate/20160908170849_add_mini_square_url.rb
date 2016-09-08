class AddMiniSquareUrl < ActiveRecord::Migration
  def change
    add_column :photos, :mini_square_url, :string
  end
end
