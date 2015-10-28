class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.string :description
      t.references :reference_ref, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
