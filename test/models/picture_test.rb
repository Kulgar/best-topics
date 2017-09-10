require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# ## Schema Information
#
# Table name: `pictures`
#
# ### Columns
#
# Name                     | Type               | Attributes
# ------------------------ | ------------------ | ---------------------------
# **`created_at`**         | `datetime`         | `not null`
# **`file_content_type`**  | `string`           |
# **`file_file_name`**     | `string`           |
# **`file_file_size`**     | `integer`          |
# **`file_updated_at`**    | `datetime`         |
# **`id`**                 | `integer`          | `not null, primary key`
# **`imageable_id`**       | `integer`          |
# **`imageable_type`**     | `string`           |
# **`name`**               | `string`           |
# **`updated_at`**         | `datetime`         | `not null`
#
# ### Indexes
#
# * `index_pictures_on_imageable_type_and_imageable_id`:
#     * **`imageable_type`**
#     * **`imageable_id`**
#
