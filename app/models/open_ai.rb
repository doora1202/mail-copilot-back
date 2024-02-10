class OpenAi < ApplicationRecord
    def self.generate_mail(subject)
        client = OpenAI::Client.new
        response = client.chat(
        parameters: {
            model: 'gpt-3.5-turbo',
            messages: [{ role: 'user', content: "メールの件名は#{subject}です。本文のみを書いてください" }],
        }
    )
    response.dig('choices', 0, 'message', 'content')
    end
end