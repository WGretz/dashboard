class CreateTodos < ActiveRecord::Migration[8.0]
  def change
    create_table :todos do |t|
      t.string :item
      t.timestamp :completed_at
      t.integer :priority
      t.timestamp :due_at

      t.timestamps
    end
  end
end
