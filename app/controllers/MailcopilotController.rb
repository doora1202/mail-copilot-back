require "open_ai.rb"

class MailcopilotController < ActionController::API
    def generate
        if params[:type] == "text" then
            mail = OpenAi.generate_text(params[:apikey],params[:str])
            render json: mail
        elsif params[:type] == "subject" then
            mail = OpenAi.generate_subject(params[:apikey],params[:str])
            render json: mail
        else
            render json: { error: "Invalid type" }, status: :unprocessable_entity
        end
    end
end