class PartiesController < ApplicationController
  before_action :set_party, only: [:show, :edit, :update, :destroy]

  # def index
  #   @parties = Party.all
  # end

  def index
    if params[:party].blank?
      @parties = Party.all.order('created_at DESC')
    else
      @complaint_id = Complaint.find_by(title: params[:party]).id
      @parties = Party.where(party_id: @party_id).order("created_at DESC")
    end
  end

  def show
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
      flash[:notice] = "Political Part not created"
      redirect_to parties_path
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
    params.require(:party).permit(:name, :description)
  end
end
