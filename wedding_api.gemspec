require File.expand_path('../lib/wedding_api/version', __FILE__)

Gem::Specification.new do |s|
  s.add_dependency 'faraday'
  s.add_dependency 'hashie'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'

  s.authors = ['Elise Worthy']
  s.description = %q{An API for my Wedding app - an adaptation of cstrahan's ChattinApi.}
  s.email = 'elise.worthy@gmail.com'
  s.files = `git ls-files`.split("\n")
  s.homepage = 'https://github.com/eliseworthy/wedding_api'
  s.name = 'wedding_api'
  s.rdoc_options = ['--charset=UTF-8']
  s.require_paths = ['lib']
  s.required_rubygems_version = Gem::Requirement.new('>= 1.3.6')
  s.summary = s.description
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = WeddingApi::VERSION
end
