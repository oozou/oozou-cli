# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'oozou/cli/version'

Gem::Specification.new do |spec|
  spec.name          = "oozou-cli"
  spec.version       = Oozou::CLI::VERSION
  spec.authors       = ["Constantin Hofstetter"]
  spec.email         = ["constantin@oozou.com"]

  spec.summary       = %q{OOZOU command line interface to maintain and initialize new projects}
  spec.description   = %q{OOZOU CLI sole goal is to make project creation and maintenance a little easier. Start with `oozou help` to see all commands.}
  spec.homepage      = "https://oozou.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
  spec.add_dependency "parseconfig"
  # spec.add_dependency "pry"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

end
