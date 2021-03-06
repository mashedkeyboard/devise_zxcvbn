# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'devise_zxcvbn/version'

Gem::Specification.new do |spec|
  spec.name          = "devise_zxcvbn"
  spec.version       = DeviseZxcvbn::VERSION
  spec.authors       = ["Bit Zesty", "mashedkeyboard"]
  spec.email         = ["info@bitzesty.com", "curtis@mashedkeyboard.me"]
  spec.description   = %q{This gems works with devise to provide backend password strength checking via zxcvbn-ruby to reject weak passwords }
  spec.summary       = %q{Devise plugin to reject weak passwords}
  spec.homepage      = "https://github.com/mashedkeyboard/devise_zxcvbn"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "activemodel"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec_junit_formatter"
  spec.add_development_dependency "byebug"

  spec.add_runtime_dependency "devise"
  spec.add_runtime_dependency "zxcvbn-ruby"
end
