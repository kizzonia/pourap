json.extract! event, :id, :title, :shortDescription, :description, :location, :eventDate, :sponsors, :socialLink, :created_at, :updated_at
json.url event_url(event, format: :json)