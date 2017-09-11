json.partial! "topics/topic", topic: @topic

json.topic_answers do 
  json.partial! "topic_answers/index", topic_answers: @topic.topic_answers
end
