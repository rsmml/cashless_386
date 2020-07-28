class CreateColumsOpensandClosesInVendors < ActiveRecord::Migration[6.0]
  def change
    add_column :vendors, :opens, :datetime
    add_column :vendors, :closes, :datetime
  end
end
