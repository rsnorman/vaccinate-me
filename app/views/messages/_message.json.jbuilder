json.extract! message, :id, :source_id, :body, :from, :created_at, :updated_at
json.url message_url(message, format: :json)
