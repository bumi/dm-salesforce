require File.dirname(__FILE__) + '/lib/dm-salesforce'

GEM = "dm-salesforce"
GEM_VERSION = DataMapper::Salesforce::VERSION
AUTHORS = ["Yehuda Katz", 'Tim Carey-Smith']
EMAIL = "wycats@gmail.com"
HOMEPAGE = "http://www.yehudakatz.com"
SUMMARY = "A DataMapper adapter to the Salesforce API"

@spec = Gem::Specification.new do |s|
  s.name = GEM
  s.version = GEM_VERSION
  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.markdown", "LICENSE"]
  s.summary = SUMMARY
  s.description = s.summary
  s.authors = AUTHORS
  s.email = EMAIL
  s.homepage = HOMEPAGE
  
  s.add_dependency("httpclient", "=2.1.5.2")
  s.add_dependency("extlib", "~> 0.9.9")
  s.add_dependency("dm-core", "~> 0.10.1")
  s.add_dependency("dm-validations", "~> 0.10.1")
  s.add_dependency("dm-types", "~> 0.10.1")
  s.add_dependency("soap4r", "~> 1.5.8")

  s.require_path = 'lib'
  s.files = %w(LICENSE README.markdown Rakefile) + Dir.glob("lib/**/*")
end