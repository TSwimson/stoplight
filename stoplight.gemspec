# coding: utf-8

lib = File.expand_path('lib', File.dirname(__FILE__))
$LOAD_PATH.push(lib) unless $LOAD_PATH.include?(lib)

require 'stoplight/version'

Gem::Specification.new do |gem|
  gem.name = 'stoplight'
  gem.version = Stoplight::VERSION
  gem.summary = 'Traffic control for code.'
  gem.description = 'An implementation of the circuit breaker pattern.'
  gem.homepage = 'https://github.com/orgsync/stoplight'
  gem.license = 'MIT'

  {
    'Cameron Desautels' => 'camdez@gmail.com',
    'Taylor Fausak' => 'taylor@fausak.me',
    'Justin Steffy' => 'steffy@orgsync.com'
  }.tap do |hash|
    gem.authors = hash.keys
    gem.email = hash.values
  end

  gem.files = %w(
    CHANGELOG.md
    LICENSE.md
    README.md
  ) + Dir.glob(File.join('lib', '**', '*.rb'))
  gem.test_files = Dir.glob(File.join('spec', '**', '*.rb'))

  gem.required_ruby_version = '>= 2.1'

  {
    'benchmark-ips' => '2.3',
    'bugsnag' => '4.0',
    'coveralls' => '0.8',
    'fakeredis' => '0.5',
    'hipchat' => '1.5',
    'honeybadger' => '2.5',
    'sentry-raven' => '1.2',
    'rake' => '11.1',
    'redis' => '4.1',
    'rspec' => '3.3',
    'rubocop' => '0.40.0',
    'slack-notifier' => '1.3',
    'timecop' => '0.8'
  }.each do |name, version|
    gem.add_development_dependency(name, "~> #{version}")
  end
end
