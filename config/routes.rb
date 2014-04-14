Rails.application.routes.draw do

  get 'home/index'

  root 'home#index'

  post 'subscribe', to: 'home#create_mail_contact'
  get 'subscribe', to: 'home#index'

end
