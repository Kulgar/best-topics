# https://ruby-doc.org/core-2.2.0/Module.html

module Topicable
  extend ActiveSupport::Concern

  included do 
    validates :title, presence: true, length: { in: 5..150 }
    validates :published, inclusion: { in: [true, false] }
    validates :content, presence: true

    #default_scope { order("updated_at DESC") }

    scope :published, -> { where(published: true) }
    scope :search, -> (keywords) { where('title LIKE ?', "%#{keywords}%") }

    has_one :picture, as: :imageable, validate: true

    accepts_nested_attributes_for :picture
  end

  def publish!
    self.published = true
    self.save
  end

  class_methods do 
    def default_scope
      self.order("updated_at DESC")
    end
  end
end
