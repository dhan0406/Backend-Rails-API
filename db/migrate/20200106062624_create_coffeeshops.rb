class CreateCoffeeshops < ActiveRecord::Migration[6.0]
  def change
    create_table :coffeeshops do |t|
      t.string :name
      t.string :address
      t.string :neighborhood
      t.boolean :parking
      t.boolean :wifi
      t.boolean :food
      t.boolean :alcohol

      t.timestamps
    end
  end
end
