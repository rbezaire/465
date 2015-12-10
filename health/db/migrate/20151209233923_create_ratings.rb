class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :recipe_id, index: true, foreign_key: true
      t.text :comment
      t.integer :rate

      t.timestamps null: false
    end
  end
end
