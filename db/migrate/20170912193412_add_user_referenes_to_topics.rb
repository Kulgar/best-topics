class AddUserReferenesToTopics < ActiveRecord::Migration[5.1]
  def change
    add_reference :topics, :user, foreign_key: true
    add_reference :topic_answers, :user, foreign_key: true
  end
end
