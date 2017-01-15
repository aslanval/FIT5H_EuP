json.extract! project, :id, :title, :description, :start_date, :max_hours, :created_at, :updated_at
json.url project_url(project, format: :json)