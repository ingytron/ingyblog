class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
    @recents = Portfolio.last(6)
  end

  def about
  end

  def edit
  end

end
