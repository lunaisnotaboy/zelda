# frozen_string_literal: true

require_relative "lib/zelda/version"

Gem::Specification.new do |spec|
  spec.name          = "zelda"
  spec.version       = Zelda::VERSION
  spec.authors       = ["lunaisnotaboy"]
  spec.email         = ["her@mint.lgbt"]

  spec.summary       = "a simple framework written in ruby"
  spec.description   = "an easy to use web framework written in ruby"
  spec.homepage      = "https://github.com/lunaisnotaboy/zelda"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/lunaisnotaboy/zelda"
  spec.metadata["changelog_uri"] = "https://github.com/lunaisnotaboy/zelda/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "colorize", "~> 0.8.1"
  spec.add_dependency "http", "~> 4.4", ">= 4.4.1"
end
