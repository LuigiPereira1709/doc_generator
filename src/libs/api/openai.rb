require 'openai'
require_relative '../config'

module ClientOpenAI
  def init_client
    configure_openai
    OpenAI::Client.new
  end

  private

  def configure_openai
    OpenAI.configure { |config| config.api_key = Key.load }
  end
end
