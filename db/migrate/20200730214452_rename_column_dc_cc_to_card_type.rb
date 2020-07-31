class RenameColumnDcCcToCardType < ActiveRecord::Migration[6.0]
  def change
    rename_column :cards, :dc_cc, :card_type
  end
end
