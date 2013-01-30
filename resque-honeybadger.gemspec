# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "resque/failure/honeybadger"

Gem::Specification.new do |s|
  s.name        = "resque-honeybadger"
  s.version     = Resque::Failure::Honeybadger::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Alex Sharp"]
  s.email       = ["ajsharp@gmail.com"]
  s.homepage    = "https://github.com/ajsharp/resque-honeybadger"
  s.summary     = %q{Resque failure backend for honeybadger.io}
  s.description = %q{Resque failure backend for honeybadger.io}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'resque'
  s.add_dependency 'honeybadger'
end
