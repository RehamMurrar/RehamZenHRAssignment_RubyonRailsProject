json.extract! user, :id, :user_id, :user_name, :user_type_id, :user_email, :user_password, :created_at, :updated_at
json.url user_url(user, format: :json)
