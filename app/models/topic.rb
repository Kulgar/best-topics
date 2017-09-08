class Topic < ApplicationRecord

  scope :published, -> { where(published: true) }

  #def self.published
  #  where(published: true)
  #end

  def self.search(keywords)
    if keywords.blank? # if keywords.nil? || keywords == ""
      self
    else
      self.where('title LIKE ?', "%#{keywords}%")
    end
  end

end
