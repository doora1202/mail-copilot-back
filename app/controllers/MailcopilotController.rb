require "open_ai.rb"

class MailcopilotController < ActionController::API
    def generate
        if params[:id] == "1" then
            mail = OpenAi.generate_text(params[:apikey],params[:str])
            render json: mail
        elsif params[:id] == "2" then
            mail = OpenAi.generate_subject(params[:apikey],params[:str])
            render json: mail
        else
            render json: { error: "Invalid id" }, status: :unprocessable_entity
        end
    end
end