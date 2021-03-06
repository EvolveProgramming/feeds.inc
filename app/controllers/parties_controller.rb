class PartiesController < ApplicationController
  before_action :set_party, only: [:show, :edit, :update, :destroy]

  def index
    @parties = Party.all
  end

  def show
    commontator_thread_show(@party)
  end

  def new
    @party = Party.new
  end

  def edit
  end

  def create
    @party = Party.new(party_params)

    if @party.save
      flash[:notice] = "Political Party created"
      redirect_to parties_path
    else
      flash[:alert] = "Political Part not created"
      render "new"
    end
  end

  def update
    if @party.update(party_params)
      flash[:notice] = "Political Party updated"
      redirect_to @party
    else
      flash[:alert] = "Political Party not updated."
      render 'edit'
    end
  end

  def destroy
    @party.destroy
    redirect_to parties_path
  end

  private
  def set_party
    @party = Party.find(params[:id])
  end

  def party_params
    params.require(:party).permit(:name, :description, :image)
  end
end
