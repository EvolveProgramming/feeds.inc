class ContactsController < ApplicationController
  before_action :find_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all

    respond_to do |format|
      format.html
      format.csv { render text: @contacts.to_csv }
    end
  end

  def show
  end

  def new
    @contact = Contact.new
  end

  def edit
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      flash[:notice] = "Contact has been created"
      redirect_to contacts_path
    else
      flash[:alert] = "Contact not created"
      render "new"
    end
  end

  def update
    if @contact.update(contact_params)
      flash[:notice] = "Contact has been updated."
      redirect_to @contact
    else
      flash[:alert] = "Contact has not been updated."
      render 'edit'
    end
  end

  def destroy
    @contact.destroy
    redirect_to contacts_path
  end

  def import
    Contact.import(params[:file])
    redirect_to root_url, notice: 'Contacts imported.'
  end

  private
  def contact_params
    params.require(:contact).permit(:category, :section, :website, :email, :mail, :street, :tel, :fax)
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end
end
