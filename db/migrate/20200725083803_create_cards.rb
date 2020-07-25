class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :type
      t.string :number
      t.date :expire-date
      t.string :ccv
      t.string :bank-name
      t.string :card-holder

      t.timestamps
    end
  end
end
