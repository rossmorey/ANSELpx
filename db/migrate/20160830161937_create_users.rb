class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.text :about
      t.string :user_img_url
      t.string :city
      t.string :state
      t.string :country
      t.integer :views
      t.timestamps null: false
    end
  end
end
