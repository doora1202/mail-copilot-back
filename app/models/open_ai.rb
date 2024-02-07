class OpenAi < ApplicationRecord
    def self.generate_mail(apikey,subject)
        client = OpenAI::Client.new(access_token: apikey)
        response = client.chat(
        parameters: {
            model: 'gpt-3.5-turbo',
            messages: [{ role: 'user', content: "メールの件名は#{subject}です。本文を書いてください なおできるだけ短い文章で書いてください" }],
        }
    )
    response.dig('choices', 0, 'message', 'content')
    end
end