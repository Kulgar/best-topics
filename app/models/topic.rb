class Topic < ApplicationRecord
  include Topicable

  has_many :topic_answers, dependent: :destroy
  has_and_belongs_to_many :categories

  #def self.published
  #  where(published: true)
  #end

  def get_answers(page)
    self.topic_answers.paginate(page: page, per_page: 10)
  end

end

# topic.title
# topic.content
# topic.???

# ## Schema Information
#
# Table name: `topics`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`title`**       | `string`           |
# **`content`**     | `text`             |
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
# **`published`**   | `boolean`          | `default(TRUE)`
# **`user_id`**     | `integer`          |
#
# ### Indexes
#
# * `index_topics_on_user_id`:
#     * **`user_id`**
#
