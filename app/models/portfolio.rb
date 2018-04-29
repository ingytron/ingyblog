class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  include Placeholder

  # def self.javascript
    # where(subtitle: 'Javascript')
  # end

  scope :rails_projects, -> { where(subtitle: 'Ruby on Rails') }
  scope :javascript_projects, -> { where(subtitle: 'Javascript') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_placeholder(600,400)
    self.thumb_image ||= Placeholder.image_placeholder(300,300)
  end
end
