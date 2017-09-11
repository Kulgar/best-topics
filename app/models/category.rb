class Category < ApplicationRecord
  has_and_belongs_to_many :topics

  validates :name, presence: true
end

# ## Schema Information
#
# Table name: `categories`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`created_at`**  | `datetime`         | `not null`
# **`id`**          | `integer`          | `not null, primary key`
# **`name`**        | `string`           |
# **`updated_at`**  | `datetime`         | `not null`
#
