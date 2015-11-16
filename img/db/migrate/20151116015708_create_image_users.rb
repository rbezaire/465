class CreateImageUsers < ActiveRecord::Migration
  def change
    create_table :image_users do |t|
      t.integer :id
      t.integer :image_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
