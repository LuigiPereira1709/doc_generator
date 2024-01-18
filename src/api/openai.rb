require 'openai'
require 'dotenv'

module ClientOpenAI
  def self.init_client
    configure_openai
    OpenAI::Client.new
  end

  private

  def self.configure_openai
    Dotenv.load('./.env')
    OpenAI.configure { |config| config.access_token = ENV.fetch("API_KEY_ACCESS")}
  end
end
