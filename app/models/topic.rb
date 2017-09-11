class Topic < ApplicationRecord
  include Topicable

  has_many :topic_answers, dependent: :destroy
  has_and_belongs_to_many :categories

  def get_answers(page)
    self.topic_answers.paginate(page: page, per_page: 10)
  end

end

# ## Schema Information
#
# Table name: `topics`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`content`**     | `text`             |
# **`created_at`**  | `datetime`         | `not null`
# **`id`**          | `integer`          | `not null, primary key`
# **`published`**   | `boolean`          | `default(TRUE)`
# **`title`**       | `string`           |
# **`updated_at`**  | `datetime`         | `not null`
#
