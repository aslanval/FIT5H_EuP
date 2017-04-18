json.extract! user, :id, :lastname, :prename, :dateofbirth, :gender, :email, :grade, :department_id, :created_at, :updated_at
json.url user_url(user, format: :json)