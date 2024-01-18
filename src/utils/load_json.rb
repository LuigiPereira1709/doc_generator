require 'json'

module Json
  def self.read(method)
    JSON.parse(File.read(build_path(method)))
  end

  private_class_method def self.build_path(method)
    File.join('src', 'data', "#{method}_prompt.json")
  end
end
