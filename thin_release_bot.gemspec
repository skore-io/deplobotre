require 'trello_cap/version'

Gem::Specification.new do |s|
  s.name          = 'thin_release_bot'
  s.version       = TrelloCap::VERSION
  s.authors       = ['Carlos Leite', 'David Almeida']
  s.email         = ['leite@skore.io', 'david@skore.io']

  s.summary       = 'Integrate cap after deploy hook with Trello'
  s.description   = 'Integrate cap after deploy hook with Trello'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  s.require_paths = ['lib']

  s.add_dependency 'capistrano', '>= 3.0'
  s.add_dependency 'rest-client'
end
