module project
  class Config
    class << self
      attr_accessor :api_key_access
      def load
        Dotenv.load
        @api_key_access = ENV["API_KEY_ACCESS"]
      end
    end
  end
end
