# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "classify/version"

Gem::Specification.new do |s|
  s.name        = "classify"
  s.version     = Classify::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Linus Oleander"]
  s.email       = ["linus@oleander.nu"]
  s.homepage    = ""
  s.summary     = %q{Converts a string into a constant}
  s.description = %q{Converts a string into a constant, like Rails classify method}

  s.rubyforge_project = "classify"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
