# -*- encoding: utf-8 -*-
require File.expand_path('../lib/use_index/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Cody Russell"]
  gem.email         = ["bratsche@gnome.org"]
  gem.description   = %q{ActiveRecord extension to support MySQL's 'USE INDEX'}
  gem.summary       = %q{ActiveRecord extension to support MySQL's 'USE INDEX'}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "use_index"
  gem.require_paths = ["lib"]
  gem.version       = UseIndex::VERSION
end
