class AddTopicReferencesToTopicAnswers < ActiveRecord::Migration[5.1]
  def change
    add_reference :topic_answers, :topic, foreign_key: true
  end
end

# rails g migration add_topic_references_to_topic_answers topic:references
