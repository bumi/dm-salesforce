require 'bundler'
Bundler.require(:default, :runtime)
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

  bundle = Bundler::Definition.from_gemfile('Gemfile')
  bundle.dependencies.each do |dep|
    next unless dep.groups.include?(:runtime)
    s.add_dependency(dep.name, dep.version_requirements.to_s)
  end

  s.require_path = 'lib'
  s.files = %w(LICENSE README.markdown Rakefile) + Dir.glob("lib/**/*")
end