json.partial! "topic_answers/topic_answer", topic_answer: @topic_answer
json.topic do 
  json.partial! "topics/topic", topic: @topic_answer.topic
end
