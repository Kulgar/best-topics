class Topic < ApplicationRecord

  def self.search(keywords)
    if keywords.blank? # if keywords.nil? || keywords == ""
      self
    else
      self.where('title LIKE ?', "%#{keywords}%")
    end
  end

end
