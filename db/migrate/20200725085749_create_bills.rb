class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.date :date
      t.string :status
      t.string :checkout_session_id
      t.references :user, null: false, foreign_key: true
      t.references :vendor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
