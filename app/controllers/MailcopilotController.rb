require "open_ai.rb"

class MailcopilotController < ActionController::API
    def index
        mail = OpenAi.generate_mail(params[:apikey],params[:subject])
        render json: mail
    end
end