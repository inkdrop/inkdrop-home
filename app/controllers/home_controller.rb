class HomeController < ApplicationController

  def index
    @mail_contact = MailContact.new
  end

  def create_mail_contact
    @mail_contact = MailContact.new(mail_contact_params)

    if @mail_contact.save
      @mail_contact = MailContact.new
      flash[:notice] = "Thanks for joining, you'll be hearing from us very shortly ;)"
      render :index
    else
      msg = "Ops! Make sure all the data you entered is valid"
      if @mail_contact.errors["email"]
        msg = "This email address has already been registered, try another one"
      end
      flash[:error] = msg
      render :index
    end
  end

  private
  def mail_contact_params
    params.require(:mail_contact).permit(:first_name, :last_name, :email)
  end
end
