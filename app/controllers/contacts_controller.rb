class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.user = current_user

    if @contact.save
      flash[:notice] = "Contact Saved"
      redirect_to @contact
    else
      flash.now[:alert] = "There was an error saving the contact."
      render :new
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.assign_attributes(contact_params)

    if @contact.save
      flash[:notice] = "Contact Saved"
      redirect_to @contact
    else
      flash.now[:alert] = "There was an error saving the contact."
      render :new
    end
  end

  def destroy
    @contact = Contact.find(params[:id])

    if @contact.destroy
      flash[:notice] = "\"#{@contact.name}\" was deleted successfully."
      redirect_to action: :index
    else
      flash.now[:alert] = "There was an error deleting the contact."
      render :show
    end
  end

  def index
    @contacts = Contact.where(user: current_user)
  end

  def show
    @contact = Contact.find(params[:id])
    @events = @contact.events
  end

  def contact_params
    params.require(:contact).permit(:name, :role, :contact_info, :user, :user_ids, event_ids:[])
  end
end
