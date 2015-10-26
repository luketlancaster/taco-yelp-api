class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :places_id
      t.string :name
      t.decimal :rating

      t.timestamps null: false
    end
  end
end
