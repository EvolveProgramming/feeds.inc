class StaticPagesController < ApplicationController
  def index
  	@feeds = Feed.all
  end

  def home
  end

  def about
  end

  def contact
  end
end
