class ContactsController < ApplicationController
  def import
    Contact.import(params[:file])

    redirect_to root_url, notice: 'Contacts imported.'
  end
end
