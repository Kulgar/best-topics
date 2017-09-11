class TopicAnswer < ApplicationRecord
  belongs_to :topic, touch: true
end

# ## Schema Information
#
# Table name: `topic_answers`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`title`**       | `string`           |
# **`content`**     | `text`             |
# **`published`**   | `boolean`          |
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
# **`topic_id`**    | `integer`          |
#
# ### Indexes
#
# * `index_topic_answers_on_topic_id`:
#     * **`topic_id`**
#
