require "open_ai.rb"

class Api::MailCopilotController < ActionController::API
    def index
        subject = '期末試験について'
        mail = OpenAi.generate_mail(subject)
        render json: mail
    end
end