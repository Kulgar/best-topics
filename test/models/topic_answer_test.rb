require 'test_helper'

class TopicAnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
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
