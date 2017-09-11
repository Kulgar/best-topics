json.extract! topic, :id, :title, :content, :published, :created_at, :updated_at
json.url topic_url(topic, format: :json)
