class User < ApplicationRecord

  has_one :profile, dependent: :destroy

  has_one :avatar, class_name: "Picture", as: :imageable, validate: true

  accepts_nested_attributes_for :profile, :avatar

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
