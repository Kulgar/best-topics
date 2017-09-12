module Topicable
  extend ActiveSupport::Concern

  included do
    validates :title, presence: true, length: { in: 5..150 }
    validates :published, inclusion: { in: [true, false] }
    validates :content, presence: true

    # default_scope { order("created_at DESC") }
    # reorder("id ASC")

    scope :published, -> { where(published: true) }
    scope :search, -> (keywords) { where('title LIKE ?', "%#{keywords}%") }

    # Polymorphic association to picture
    has_one :picture, as: :imageable, validate: true

    accepts_nested_attributes_for :picture
  end

  def publish!
    self.published = true
    self.save
  end

  class_methods do
    def default_scope
      self.order("created_at DESC")
    end
  end

end
