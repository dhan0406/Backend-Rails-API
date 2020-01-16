class AddImgToCoffeeshops < ActiveRecord::Migration[6.0]
  def change
    add_column :coffeeshops, :img, :string
  end
end
