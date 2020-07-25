class AddPriceToBills < ActiveRecord::Migration[6.0]
  def change
    add_monetize :bills, :price, currency: { present: false }
  end
end
