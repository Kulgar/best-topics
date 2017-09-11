class User < ApplicationRecord

  # belongs_to :profile

end

# ## Schema Information
#
# Table name: `users`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`firstname`**   | `string(80)`       |
# **`lastname`**    | `string(80)`       |
# **`birthday`**    | `date`             |
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
# **`email`**       | `string`           | `default(""), not null`
# **`fullname`**    | `string`           |
# **`is_admin`**    | `boolean`          | `default(FALSE)`
#
# ### Indexes
#
# * `index_users_on_email`:
#     * **`email`**
# * `index_users_on_fullname`:
#     * **`fullname`**
#
