class ChangeBodyColumnToDescriptionColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :body, :description
  end
end
