require_relative '../api/openai'
require 'dotenv'

module ChatUtil
  class << self
    include ClientOpenAI

    def chat(prompt)
      client = ClientOpenAI.init_client
      client.chat(
        parameters: {
          model: "gpt-3.5-turbo",
          messages: [{ role: "user", content: "#{prompt}" }],
          temperature: 0.7,
        }
      )
    end
  end
end
