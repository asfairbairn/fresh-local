class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.float :price
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :product_category, null: false, foreign_key: true
      t.integer :stock
      t.string :name
      t.string :date_harvested
      t.boolean :organic
      t.string :image_address
      t.text :description

      t.timestamps
    end
  end
end
