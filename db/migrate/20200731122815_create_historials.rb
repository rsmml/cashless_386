class CreateHistorials < ActiveRecord::Migration[6.0]
  def change
    create_table :historials do |t|
      t.integer :amount
      t.string :action
      t.integer :sender_id
      t.integer :recipient_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
