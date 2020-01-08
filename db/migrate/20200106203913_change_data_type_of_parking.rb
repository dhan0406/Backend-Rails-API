class ChangeDataTypeOfParking < ActiveRecord::Migration[6.0]
  def change
    change_column :coffeeshops, :parking, :string
  end
end
