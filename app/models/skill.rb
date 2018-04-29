class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title

  set_defaults
    self.badge ||= Placeholder.image_placeholder(50, 50)
  end
end
