require 'test_helper'

class TopicTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

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
