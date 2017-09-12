json.extract! topic, :id, :title, :content, :published, :created_at, :updated_at
json.url topic_url(topic, format: :json)

json.topic_answers do
  json.partial! "topic_answers/index", topic_answers: topic.topic_answers
end
