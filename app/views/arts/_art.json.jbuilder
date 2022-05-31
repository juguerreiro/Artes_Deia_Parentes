json.extract! art, :id, :name, :type, :price, :description, :is_avaiable, :user_id, :created_at, :updated_at
json.url art_url(art, format: :json)
