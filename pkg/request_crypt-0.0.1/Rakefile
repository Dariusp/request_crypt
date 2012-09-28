require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('request_crypt', '0.0.1') do |p|
  p.description    = "Crypt and decrypt request"
  p.url            = "http://github.com/dariusp/request_crypt"
  p.author         = "Darius Peza"
  p.email          = "darius@onrails.lt"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
