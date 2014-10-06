# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "nats-client"
  spec.version       = "0.1.0"
  spec.authors       = ["Jack Chen (chendo)"]
  spec.email         = ["github@chen.do"]
  spec.summary       = %q{A NATS Client that doesn't require eventmachine}
  spec.description   = %q{A NATS Client that doesn't require eventmachine.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "timers", "= 4.0.1"
end
