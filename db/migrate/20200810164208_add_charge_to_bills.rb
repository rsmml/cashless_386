class AddChargeToBills < ActiveRecord::Migration[6.0]
  def change
    add_column :bills, :charge, :string
  end
end
