class StaticPagesController < ApplicationController
  def index
    # @entries = Entry.all.order('created_at DESC')
    @entries = Entry.all.paginate(page: params[:page], per_page: 15).order('created_at DESC')
  end

  def home
  end

  def about
  end

  def contact
  end
end
