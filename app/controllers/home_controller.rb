class HomeController < ApplicationController

  def index
    @mail_contact = MailContact.new
  end

  def create_mail_contact
    @mail_contact = MailContact.new(mail_contact_params)
    @mail_contact.save
    redirect_to root_path, notice: "Thanks for joining and you'll be hearing from us very shortly ;)"
  end

  private
  def mail_contact_params
    params.require(:mail_contact).permit(:first_name, :last_name, :email)
  end
end
