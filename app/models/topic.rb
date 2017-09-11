class Topic < ApplicationRecord

  has_many :topic_answers, dependent: :destroy

  scope :published, -> { where(published: true) }

  #def self.published
  #  where(published: true)
  #end

  def self.search(keywords)
    if keywords.blank? # if keywords.nil? || keywords == ""
      self
    else
      self.where('title LIKE ?', "%#{keywords}%")
    end
  end

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
#
