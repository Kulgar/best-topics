class TopicAnswer < ApplicationRecord
  belongs_to :topic, touch: true
  has_many :categories, through: :topic

  validates :topic, presence: true
  validates :title, presence: true, length: { in: 5..150 }
  validates :published, inclusion: { in: [true, false] }
  validates :content, presence: true

end

# ## Schema Information
#
# Table name: `topic_answers`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`content`**     | `text`             |
# **`created_at`**  | `datetime`         | `not null`
# **`id`**          | `integer`          | `not null, primary key`
# **`published`**   | `boolean`          |
# **`title`**       | `string`           |
# **`topic_id`**    | `integer`          |
# **`updated_at`**  | `datetime`         | `not null`
#
# ### Indexes
#
# * `index_topic_answers_on_topic_id`:
#     * **`topic_id`**
#
