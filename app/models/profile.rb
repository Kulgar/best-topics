class Profile < ApplicationRecord
  belongs_to :user
end

# ## Schema Information
#
# Table name: `profiles`
#
# ### Columns
#
# Name               | Type               | Attributes
# ------------------ | ------------------ | ---------------------------
# **`country`**      | `string(80)`       |
# **`created_at`**   | `datetime`         | `not null`
# **`description`**  | `text`             |
# **`id`**           | `integer`          | `not null, primary key`
# **`title`**        | `string`           |
# **`updated_at`**   | `datetime`         | `not null`
# **`user_id`**      | `integer`          |
# **`website`**      | `string`           |
#
# ### Indexes
#
# * `index_profiles_on_user_id`:
#     * **`user_id`**
#
