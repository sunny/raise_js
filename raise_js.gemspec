$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "raise_js/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "raise_js"
  s.version     = RaiseJs::VERSION
  s.authors     = ["Sunny Ripert"]
  s.email       = ["sunny@sunfox.org"]
  s.homepage    = "http://github.com/sunny/raise_js"
  s.summary     = "Raise JavaScript errors as Ruby exceptions in your Rails app."
  s.description = "Raise JavaScript errors as Ruby exceptions in your Rails app. Usefull when you have a good Exception catcher."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.2"
  s.add_dependency "jquery-rails"
end
