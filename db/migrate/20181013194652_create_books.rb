class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.integer :author_id
      t.text :body
      t.decimal :price, precision: 5, scale: 2

      t.timestamps
    end
  end
end
