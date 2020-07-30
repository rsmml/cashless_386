class FixCardColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :cards, :card_type, :dc_cc
  end
end
