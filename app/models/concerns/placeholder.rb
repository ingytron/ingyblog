module Placeholder
  extend ActiveSupport::Concern

  def self.image_placeholder(width, height)
    "http://placehold.it/#{width}x#{height}"
  end
end
