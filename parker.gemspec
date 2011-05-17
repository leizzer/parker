# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "parker/version"

Gem::Specification.new do |s|
  s.name        = "parker"
  s.version     = Parker::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["leizzer"]
  s.email       = ["no@email.com"]
  s.homepage    = ""
  s.summary     = %q{Aim to be a DSL for auto manage files}
  s.description = %q{Parker aim to be a DSL for auto-manage files.}

  s.rubyforge_project = "parker"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
