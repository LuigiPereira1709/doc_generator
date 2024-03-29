require_relative '../utils/load_json'

class Translator
  class << self
    def text(text, origin_country, destination_language)
      @method = __method__
      prompt = Json.read(@method)
      prompt['prompt'] = prompt['prompt'].merge(
          "text" => text,
          "origin_country" => origin_country,
          "destination_language" => destination_language
          )
    end

    def music(letter, origin_country, destination_language)
      @nethod = __method__
      prompt = Json.read(@method)
      prompt['prompt'] = prompt['prompt'].merge(
        "letter" => letter,
        "origin_country" => origin_country,
        "destination_language" => destination_language
      )
    end

    def literature(text, origin_country, destination_language)
      @nethod = __method__
      prompt = Json.read(@method)
      prompt['prompt'] = prompt['prompt'].merge(
        "text" => text,
        "origin_country" => origin_country,
        "destination_language" => destination_language
      )
    end
  end
end
