require 'json'

module Json
  def self.read(service, method)
    JSON.parse(File.read(build_path(service, method)))
  end

  private_class_method def self.build_path(service, method)
    File.join('src', 'data', 'services', service, "#{method}_prompt.json")
  end
end

json = Json.read('test_service', 'test_method')

p json
