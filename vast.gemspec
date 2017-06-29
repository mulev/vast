# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)
require 'vast/version'

Gem::Specification.new do |s|
  s.name        = 'ruby-vast'
  s.version     = VAST::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Chris Dinn', 'Mike Mulev']
  s.email       = ['m.mulev@gmail.com']
  s.homepage    = 'https://github.com/mulev/vast'
  s.summary     = 'A gem for working with VAST documents'
  s.license     = 'MIT'

  s.files       = Dir['lib/*.rb'] + Dir['lib/*.xsd'] + Dir['lib/vast/*.rb'] +
                  Dir['test/*.rb'] + Dir['test/examples/*.xml'] +
                  %w[LICENSE README.rdoc]

  s.add_dependency 'nokogiri', '~> 1.8'

  s.require_path = 'lib'
end
