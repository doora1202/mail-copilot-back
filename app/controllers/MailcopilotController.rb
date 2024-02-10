require "open_ai.rb"

class MailcopilotController < ActionController::API
    def register
        @apikey = Apikey.new(apikey_params)
        @apikey.save
    end

    def index
        mail = OpenAi.generate_mail(params[:apikey],params[:subject])
        render json: mail
    end

    private
    
    def apikey_params
        params.permit(:apikey)
    end
end