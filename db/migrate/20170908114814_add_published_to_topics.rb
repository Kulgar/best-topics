class AddPublishedToTopics < ActiveRecord::Migration[5.1]
  def change
    add_column :topics, :published, :boolean, default: true
  end
end
