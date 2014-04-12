class MailContact < ActiveRecord::Base
  # validations
  validates :email, uniqueness: true
  validates :first_name, :last_name, :email, length: { in: 2..255 }
end
