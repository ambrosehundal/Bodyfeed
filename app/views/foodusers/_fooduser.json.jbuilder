json.extract! fooduser, :id, :name, :email, :login, :created_at, :updated_at
json.url fooduser_url(fooduser, format: :json)
