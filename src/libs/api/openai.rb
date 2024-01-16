require 'openia'

class Conn_OpenAI
  def initialize (access_token)
    @access_token = access_token
  end
  def ini_client
    clien = open_ia.new
  end
  private
  def open_ia
    OpenAI.configure do |config| config_access_token = @access_token end
  end
end
