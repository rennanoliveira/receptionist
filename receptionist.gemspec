$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "receptionist/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "receptionist"
  s.version     = Receptionist::VERSION
  s.authors     = ["Rennan Maciel"]
  s.email       = ["renmcoliver@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Receptionist."
  s.description = "TODO: Description of Receptionist."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end
