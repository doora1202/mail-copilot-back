class OpenAi < ApplicationRecord
    def self.generate_text(apikey,subject)
        client = OpenAI::Client.new(access_token: apikey)
        response = client.chat(
        parameters: {
            model: 'gpt-3.5-turbo',
            messages: [{ role: 'user', content: "メールの件名は#{subject}です。本文のみを敬語を使って書いてください。" }],
        }
    )
    response.dig('choices', 0, 'message', 'content')
    end
    def self.generate_subject(apikey,text)
        client = OpenAI::Client.new(access_token: apikey)
        response = client.chat(
        parameters: {
            model: 'gpt-3.5-turbo',
            messages: [{ role: 'user', content: "メールの本文は#{text}です。件名のみを書いてください。" }],
        }
    )
    response.dig('choices', 0, 'message', 'content')
    end
end