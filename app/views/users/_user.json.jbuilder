json.extract! user, :id, :dni, :name, :surname, :profile, :created_at, :updated_at
json.url user_url(user, format: :json)
