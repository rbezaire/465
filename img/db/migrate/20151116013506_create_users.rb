class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id
      t.string :email
      t.string :encrypted_password
      t.string :name

      t.timestamps null: false
    end
  end
end
