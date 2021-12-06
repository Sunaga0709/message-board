class AddTitleToMessage < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :title, :string, null: false
  end
end
