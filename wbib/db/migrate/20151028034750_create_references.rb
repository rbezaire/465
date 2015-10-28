class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :url
      t.timestamp :time

      t.timestamps null: false
    end
  end
end
