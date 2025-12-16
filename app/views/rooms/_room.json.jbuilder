json.extract! room, :id, :slug_name, :status, :deck_type, :created_at, :updated_at
json.url room_url(room, format: :json)
