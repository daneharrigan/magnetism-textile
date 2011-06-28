# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "magnetism-textile/version"

Gem::Specification.new do |s|
  s.name        = "magnetism-textile"
  s.version     = Magnetism::Textile::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Dane Harrigan"]
  s.email       = ["dane.harrigan@gmail.com"]
  s.homepage    = "https://github.com/daneharrigan/magnetism-textile"
  s.summary     = %{Adds Textile support to the Magnetism CMS}
  s.description = %{Adds Textile support to the Magnetism CMS}

  s.rubyforge_project = "magnetism-textile"

  #s.add_dependency 'magnetism-core', '0.0.1'
  s.add_dependency 'RedCloth', '~> 4.2.7'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
