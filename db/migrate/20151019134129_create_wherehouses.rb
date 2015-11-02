class CreateWherehouses < ActiveRecord::Migration
  def change
    create_table :wherehouses do |t|
      t.integer :store_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
