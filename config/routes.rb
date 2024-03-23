Rails.application.routes.draw do

  get 'mail_copilot/:apikey/:str/:type', :to =>'mailcopilot#generate'

end