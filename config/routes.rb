Rails.application.routes.draw do
  namespace :api do
    resources :mail_copilot
  end
end