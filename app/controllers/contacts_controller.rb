class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Message envoyé!'
    else
      flash.now[:error] = "une erreur s'est produite, merci de réessayer ultérieurement"
      render :new
    end
  end

end
