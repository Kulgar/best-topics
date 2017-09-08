json.extract! topic_answer, :id, :title, :content, :published, :created_at, :updated_at
json.url topic_answer_url(topic_answer, format: :json)
