class CreateVendors < ActiveRecord::Migration[6.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :address
      t.string :type
      t.integer :phone
      t.string :city

      t.timestamps
    end
  end
end
