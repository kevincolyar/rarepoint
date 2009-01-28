require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('rarepoint', '0.1.0') do |p|
  p.description = "A ruby gem to access sharepoint web services"
  p.url = 'http://github.com/kevincolyar/rarepoint'
  p.author = 'Kevin Colyar'
  p.email = 'kevin@colyar.net'
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = ['soap4r', 'active-support', 'httpclient']
end

Dir["#File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
