json.extract! interaction_event, :id, :event_type_id, :interaction_id, :created_at, :updated_at
json.url interaction_event_url(interaction_event, format: :json)
