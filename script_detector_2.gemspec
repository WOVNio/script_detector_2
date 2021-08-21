# frozen_string_literal: true

require_relative "lib/script_detector_2/version"

Gem::Specification.new do |spec|
  spec.name          = "script_detector_2"
  spec.version       = ScriptDetector2::VERSION
  spec.authors       = ["Aaron Madlon-Kay"]
  spec.email         = ["aaron@madlon-kay.com"]

  spec.summary       = "Improved utility library for determining if string is Traditional Chinese, Simplified Chinese, Japanese or Korean"
  spec.homepage      = "https://github.com/amake/script_detector_2"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/amake/script_detector_2.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
