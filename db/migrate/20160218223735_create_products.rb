class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :country
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
