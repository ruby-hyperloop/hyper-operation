# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hyper-operation/version'

Gem::Specification.new do |spec|
  spec.name          = 'hyper-operation'
  spec.version       = Hyperloop::Operation::VERSION
  spec.authors       = ['Mitch VanDuyn', 'Jan Biedermann']
  spec.email         = ['mitch@catprint.com', 'jan@kursator.com']
  spec.summary       = %q{Compose your business logic into isomorphic commands that sanitize and validate input. Write safe, reusable, and maintainable code for Ruby and Rails app}
  spec.homepage      = 'http://ruby-hyperloop.org'
  spec.license       = 'MIT'
  # spec.metadata      = {
  #   "homepage_uri" => 'http://ruby-hyperloop.org',
  #   "source_code_uri" => 'https://github.com/ruby-hyperloop/hyper-component'
  # }

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(gemfiles|examples|spec)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord', '>= 4.0.0'
  spec.add_dependency 'hyper-component', Hyperloop::Operation::VERSION
  spec.add_dependency 'hyperloop-config', Hyperloop::Operation::VERSION
  spec.add_dependency 'mutations'
  spec.add_dependency 'opal-activesupport', '~> 0.3.1'
  spec.add_dependency 'mini_racer', '~> 0.1.15'
  # https://github.com/discourse/mini_racer/issues/92
  spec.add_dependency 'libv8', '~> 6.3.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'database_cleaner'
  spec.add_development_dependency 'hyper-react', Hyperloop::Operation::VERSION
  spec.add_development_dependency 'hyper-spec', Hyperloop::Operation::VERSION
  spec.add_development_dependency 'mysql2'
  spec.add_development_dependency 'opal', '>= 0.11.0', '< 0.12.0'
  spec.add_development_dependency 'opal-browser', '~> 0.2.0'
  spec.add_development_dependency 'opal-rails', '~> 0.9.4'
  spec.add_development_dependency 'puma'
  spec.add_development_dependency 'pusher'
  spec.add_development_dependency 'pusher-fake'
  spec.add_development_dependency 'rails', '>= 4.0.0'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'react-rails', '>= 2.4.0', '< 2.5.0'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'rspec-steps', '~> 2.1.1'
  spec.add_development_dependency 'rspec-wait'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'timecop', '~> 0.8.1'
  spec.add_development_dependency 'pry-rescue'
end
