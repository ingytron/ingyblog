module DefaultContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Ingyblog, possibly the best portolio you've seen today"
    @lame_keywords = "Amazing designer and programmer person who does things"
  end

end
