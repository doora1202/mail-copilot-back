Rails.application.routes.draw do

  get 'mail_copilot/:subject', :to =>'mailcopilot#index'

end