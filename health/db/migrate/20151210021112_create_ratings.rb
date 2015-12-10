class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :recipe, index: true, foreign_key: true
      t.integer :rate
      t.text :comment

      t.timestamps null: false
    end
  end
end
