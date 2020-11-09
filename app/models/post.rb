class Post < ApplicationRecord
  belongs_to :category
  accepts_nested_attributes_for :category
  after_initialize :set_defaults, unless: :persisted?

  def set_defaults
    self.title  ||= ('Post ' + (Post.count(:id)+1).to_s)
  end
end
