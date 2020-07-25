class AddSetContentToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :set_content, :text
  end
end
