class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_voter

  has_one :profile, dependent: :destroy

  has_one :avatar, class_name: "Picture", as: :imageable, validate: true

  accepts_nested_attributes_for :profile, :avatar

  validates :email, uniqueness: {case_sensitive: false}
  validates :firstname, presence: true, length: {maximum: 80}
  validates :lastname, presence: true, length: {maximum: 80}

  validates_associated :profile

  def after_confirmation
    UserMailer.welcome_email(self).deliver_later
  end

  def get_profile
    self.profile.present? ? self.profile : self.build_profile
  end

  def get_avatar
    self.avatar.present? ? self.avatar : self.build_avatar
  end

end

# ## Schema Information
#
# Table name: `users`
#
# ### Columns
#
# Name                          | Type               | Attributes
# ----------------------------- | ------------------ | ---------------------------
# **`id`**                      | `integer`          | `not null, primary key`
# **`firstname`**               | `string(80)`       |
# **`lastname`**                | `string(80)`       |
# **`birthday`**                | `date`             |
# **`created_at`**              | `datetime`         | `not null`
# **`updated_at`**              | `datetime`         | `not null`
# **`email`**                   | `string`           | `default(""), not null`
# **`fullname`**                | `string`           |
# **`is_admin`**                | `boolean`          | `default(FALSE)`
# **`encrypted_password`**      | `string`           | `default(""), not null`
# **`reset_password_token`**    | `string`           |
# **`reset_password_sent_at`**  | `datetime`         |
# **`remember_created_at`**     | `datetime`         |
# **`sign_in_count`**           | `integer`          | `default(0), not null`
# **`current_sign_in_at`**      | `datetime`         |
# **`last_sign_in_at`**         | `datetime`         |
# **`current_sign_in_ip`**      | `string`           |
# **`last_sign_in_ip`**         | `string`           |
# **`confirmation_token`**      | `string`           |
# **`confirmed_at`**            | `datetime`         |
# **`confirmation_sent_at`**    | `datetime`         |
# **`unconfirmed_email`**       | `string`           |
# **`failed_attempts`**         | `integer`          | `default(0), not null`
# **`unlock_token`**            | `string`           |
# **`locked_at`**               | `datetime`         |
#
# ### Indexes
#
# * `index_users_on_confirmation_token` (_unique_):
#     * **`confirmation_token`**
# * `index_users_on_email`:
#     * **`email`**
# * `index_users_on_fullname`:
#     * **`fullname`**
# * `index_users_on_reset_password_token` (_unique_):
#     * **`reset_password_token`**
# * `index_users_on_unlock_token` (_unique_):
#     * **`unlock_token`**
#
