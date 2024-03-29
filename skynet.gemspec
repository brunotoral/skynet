lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "skynet/version"

Gem::Specification.new do |spec|
  spec.name          = "skynet-android-generator"
  spec.version       = Skynet::VERSION
  spec.authors       = ["Bruno Toral"]
  spec.email         = ["brunotoral89@gmail.com"]

  spec.summary       = %q{Skynet Gerador de Androids}
  spec.description   = %q{A Skynet gera androids únicos e com uma missão.}
  spec.homepage      = "https://github.com/brunotoral/skynet"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/brunotoral/skynet"
  spec.metadata["changelog_uri"] = "https://github.com/brunotoral/skynet"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
