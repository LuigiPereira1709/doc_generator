require_relative '../utils/load_json'

class Translator
  def initialize
    @service = self.class.name
  end
  def text(text, origin_country, destination_language)
    @method = __method__
    prompt = Json.read(@service, @method)
    prompt['prompt'] = prompt['prompt'].merge(
        "text" => text,
        "origin_country" => origin_country,
        "destination_language" => destination_language
        )
  end
  def music(letter, )
end
