class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :context, null: false

      t.timestamps
    end
  end
end
