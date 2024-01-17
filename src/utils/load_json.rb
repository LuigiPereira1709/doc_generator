require 'json'

module Json
  def self.read(service, method)
    JSON.parse(File.read(build_path(service, method)))
  end

  private_class_method def self.build_path(service, method)
    File.join(File.dirname(__FILE__), '__', 'services', service, "#{method}_prompt.json")
  end
end
