json.extract! user, :id, :user, :password, :level, :token, :nit, :address, :created_at, :updated_at
json.url user_url(user, format: :json)
