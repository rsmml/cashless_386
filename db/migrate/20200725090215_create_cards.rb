class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :type
      t.string :number
      t.date :expire_date
      t.string :ccv
      t.string :bank_name
      t.string :card_holder

      t.timestamps
    end
  end
end
