class Post < ApplicationRecord
  belongs_to :category
  accepts_nested_attributes_for :category
  scope :recent, -> { where('created_at >= :fifteen_minutes_ago', fifteen_minutes_ago: Time.now - 15.minutes) }
  after_initialize :set_defaults, unless: :persisted?

  def set_defaults
    self.title  ||= ('Post ' + (Post.count(:id)+1).to_s)
  end
end
