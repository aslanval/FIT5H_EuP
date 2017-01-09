json.extract! task, :id, :name, :description, :start_date, :end_date, :worker_id, :created_at, :updated_at
json.url task_url(task, format: :json)