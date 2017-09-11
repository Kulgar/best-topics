class AddTopicReferencesToTopicAnswers < ActiveRecord::Migration[5.1]
  def change
    add_reference :topic_answers, :topic, foreign_key: true
  end
end
