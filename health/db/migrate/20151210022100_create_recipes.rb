class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.text :ingredients
      t.string :image

      t.timestamps null: false
    end
  end
end
