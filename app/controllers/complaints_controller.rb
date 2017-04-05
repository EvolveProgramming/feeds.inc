class ComplaintsController < ApplicationController
  before_action :find_complaint, only: [:show, :edit, :update, :destroy]

  def index
    if params[:id].blank?
      @complaints = Complaint.all.order('created_at DESC')
    else
      @complaints = Party.find(params[:id]).complaints.order(:created_at)
    end
  end

  def show
  end

  def new
    @complaint = Complaint.new
  end

  def edit
  end

  def create
    @complaint = Complaint.new(complaint_params)

    if @complaint.save
      flash[:notice] = "Complaint posted"
      redirect_to complaints_path
    else
      flash[:alert] = "Complaint not posted"
      render "new"
    end
  end

  def update
    if @complaint.update(complaint_params)
      flash[:notice] = "Complaint updated."
      redirect_to @complaint
    else
      flash[:alert] = "Complaint not updated."
      render 'edit'
    end
  end

  def destroy
    @complaint.destroy
    redirect_to complaints_path
  end

  private
  def complaint_params
    params.require(:complaint).permit(:title, :body, :party_id)
  end

  def set_complaint
    @complaint = Complaint.find(params[:id])
  end
end
