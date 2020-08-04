class ChangeHistorialAmountIntegerForFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :historials, :amount, :float
  end
end
