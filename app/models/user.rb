class User < ApplicationRecord

  has_one :profile, dependent: :destroy

  accepts_nested_attributes_for :profile

  validates :email, uniqueness: {case_sensitive: false}
  validates :firstname, presence: true, length: {maximum: 80}
  validates :lastname, presence: true, length: {maximum: 80}

  validates_associated :profile

end

# ## Schema Information
#
# Table name: `users`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`birthday`**    | `date`             |
# **`created_at`**  | `datetime`         | `not null`
# **`email`**       | `string`           | `default(""), not null`
# **`firstname`**   | `string(80)`       |
# **`fullname`**    | `string`           |
# **`id`**          | `integer`          | `not null, primary key`
# **`is_admin`**    | `boolean`          | `default(FALSE)`
# **`lastname`**    | `string(80)`       |
# **`updated_at`**  | `datetime`         | `not null`
#
# ### Indexes
#
# * `index_users_on_email`:
#     * **`email`**
# * `index_users_on_fullname`:
#     * **`fullname`**
#
