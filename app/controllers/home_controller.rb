class HomeController < ApplicationController

  def index
    @mail_contact = MailContact.new
  end

  def create_mail_contact
    @mail_contact = MailContact.new(mail_contact_params)
    if @mail_contact.save
      redirect_to root_path, notice: "Thanks for joining, you'll be hearing from us very shortly ;)"
    else
      flash[:error] = "Ops! Make sure all the data you entered is valid."
      render "index"
    end
  end

  private
  def mail_contact_params
    params.require(:mail_contact).permit(:first_name, :last_name, :email)
  end
end
