class MailContact < ActiveRecord::Base
  # validations
  validates :email, uniqueness: true, email: true
  validates :first_name, :last_name, :email, length: { maximum: 255 }, presence: true

end
