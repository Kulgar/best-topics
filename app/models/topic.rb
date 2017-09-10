class Topic < ApplicationRecord

  scope :published, -> { where(published: true) }
  scope :search, -> (keywords) { where('title LIKE ?', "%#{keywords}%") }

  has_many :topic_answers, dependent: :destroy
  has_and_belongs_to_many :categories
  has_one :picture, as: :imageable, validate: true

  accepts_nested_attributes_for :picture

  validates :title, presence: true, length: { in: 5..150 }
  validates :published, inclusion: { in: [true, false] }
  validates :content, presence: true

  #def self.published
  #  where(published: true)
  #end

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
