class CreateTopicAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :topic_answers do |t|
      t.string :title
      t.text :content
      t.boolean :published

      t.timestamps
    end
  end
end
