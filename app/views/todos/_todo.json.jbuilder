json.extract! todo, :id, :item, :completed_at, :priority, :due_at, :created_at, :updated_at
json.url todo_url(todo, format: :json)
