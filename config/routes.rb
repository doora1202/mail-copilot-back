Rails.application.routes.draw do

  post 'mail_copilot/register/:apikey', :to =>'mailcopilot#register'
  get 'mail_copilot/:subject', :to =>'mailcopilot#index'

end