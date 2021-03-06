class Profile < ApplicationRecord
  belongs_to :user

  validates :title, length: { maximum: 150 }, presence: true
end

# ## Schema Information
#
# Table name: `profiles`
#
# ### Columns
#
# Name               | Type               | Attributes
# ------------------ | ------------------ | ---------------------------
# **`id`**           | `integer`          | `not null, primary key`
# **`user_id`**      | `integer`          |
# **`description`**  | `text`             |
# **`country`**      | `string(80)`       |
# **`website`**      | `string`           |
# **`title`**        | `string`           |
# **`created_at`**   | `datetime`         | `not null`
# **`updated_at`**   | `datetime`         | `not null`
#
# ### Indexes
#
# * `index_profiles_on_user_id`:
#     * **`user_id`**
#
