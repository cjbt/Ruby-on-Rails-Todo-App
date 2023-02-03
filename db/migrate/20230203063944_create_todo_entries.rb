class CreateTodoEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_entries do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
