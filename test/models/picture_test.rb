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
# **`id`**                 | `integer`          | `not null, primary key`
# **`name`**               | `string`           |
# **`imageable_type`**     | `string`           |
# **`imageable_id`**       | `integer`          |
# **`created_at`**         | `datetime`         | `not null`
# **`updated_at`**         | `datetime`         | `not null`
# **`file_file_name`**     | `string`           |
# **`file_content_type`**  | `string`           |
# **`file_file_size`**     | `integer`          |
# **`file_updated_at`**    | `datetime`         |
#
# ### Indexes
#
# * `index_pictures_on_imageable_type_and_imageable_id`:
#     * **`imageable_type`**
#     * **`imageable_id`**
#
