class CreateLendings < ActiveRecord::Migration[6.1]
  def change
    create_table :lendings do |t|
      t.integer :user_id
      t.integer :book_id
      t.date :taken_at
      t.date :returned_at

      t.timestamps
    end
  end
end
