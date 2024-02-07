Rails.application.routes.draw do

  get ':mail_copilot/:apikey/:subject', :to =>'mailcopilot#index'

end