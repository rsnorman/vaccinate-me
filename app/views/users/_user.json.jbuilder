json.extract! user, :id, :full_name, :birth_date, :zipcode, :created_at, :updated_at
json.url user_url(user, format: :json)
