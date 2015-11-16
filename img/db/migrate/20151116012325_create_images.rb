class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :id
      t.integer :private
      t.integer :user_id
      t.string :filename

      t.timestamps null: false
    end
  end
end
