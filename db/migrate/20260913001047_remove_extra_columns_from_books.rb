class RemoveExtraColumnsFromBooks < ActiveRecord::Migration[8.0]
  def change
    remove_column :books, :author, :string
    remove_column :books, :published_year, :date
  end
end
