require 'dotenv'

module Key
  def self.load
    Dotenv.load
    api_key = ENV["API_KEY_ACCESS"]
  end
end
