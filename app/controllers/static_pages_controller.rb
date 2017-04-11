class StaticPagesController < ApplicationController
  def index
  	@entries = @feed.entries.order('published desc')
  end

  def home
  end

  def about
  end

  def contact
  end
end
