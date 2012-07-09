# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "webhdfs-client"
  gem.description = "Ruby WebHDFS/HttpFs client"
  gem.homepage    = ""
  gem.summary     = gem.description
  gem.version     = File.read("VERSION").strip
  gem.authors     = ["zixian.shen"]
  gem.email       = "zixian.shen@gmail.com"
  gem.has_rdoc    = false
  gem.platform    = Gem::Platform::RUBY
  gem.files       = `git ls-files`.split("\n")
  #gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  #gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_development_dependency "rake", ">= 0.9.2"
  gem.add_development_dependency "rdoc", ">= 3.12"
  gem.add_development_dependency "simplecov", ">= 0.5.4"
  gem.add_development_dependency "rr", ">= 1.0.0"
end
