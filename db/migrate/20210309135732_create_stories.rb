class CreateStories < ActiveRecord::Migration[6.1]
  def change
    create_table :stories do |t|
      t.string :name
      t.string :description
      t.belongs_to :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
