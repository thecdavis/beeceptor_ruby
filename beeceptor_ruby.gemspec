# frozen_string_literal: true

require_relative 'lib/beeceptor_ruby/version'

Gem::Specification.new do |spec|
  spec.name = 'beeceptor_ruby'
  spec.version = BeeceptorRuby::VERSION
  spec.authors = ['Chris Davis']

  spec.summary = 'Beeceptor REST API Client for Ruby'
  spec.description = "Allows users to use Beeceptor's REST API."
  spec.homepage = 'https://github.com/chrisdavis179/beeceptor_ruby'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday'
  spec.add_dependency 'json'
  spec.add_dependency 'rspec', '~> 3.7'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
