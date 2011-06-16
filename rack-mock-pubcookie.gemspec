# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rack-mock-pubcookie/version"

Gem::Specification.new do |s|
  s.name        = "rack-mock-pubcookie"
  s.version     = Rack::MockPubcookie::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Marshall Roch"]
  s.email       = ["marshall@mroch.com"]
  s.homepage    = "http://github.org/mroch/rack-mock-pubcookie"
  s.summary     = %q{Fake mod_pubcookie authentication}
  s.description = %q{Rack middleware to fake some environment variables that
    make it seem like mod_pubcookie is being used. Useful for dev environments.}

  s.rubyforge_project = "rack-mock-pubcookie"

  s.add_dependency "rack", ">= 1.2.0"

  s.files         = Dir.glob("{lib}/**/*") + %w[LICENSE]
  s.require_paths = ["lib"]
end
