Rails.application.routes.draw do

  get 'mail_copilot/:apikey/:str/:id', :to =>'mailcopilot#generate'

end