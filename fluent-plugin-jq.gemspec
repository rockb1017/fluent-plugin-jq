lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name    = "fluent-plugin-jq"
  spec.version = File.read('VERSION')
  spec.authors       = ['Splunk Inc.']
  spec.email         = ['DataEdge@splunk.com']

  spec.summary       = %q{Fluentd plugins uses the jq engine.}
  spec.description   = %q{fluent-plungin-jq is a collection of fluentd plugins which uses the jq engine to transform or format fluentd events.}
  spec.homepage      = "https://github.com/rockb1017/fluent-plugin-jq"
  spec.license       = "Apache-2.0"

  spec.files         = Dir.glob('*').select { |f| not (File.directory?(f) || f.start_with?('.')) } +
    Dir.glob('lib/**/**.rb') +
    Dir.glob('example/**/**')
  spec.test_files    = Dir.glob('test/**/**.rb')
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "test-unit", "~> 3.0"
  spec.add_development_dependency "coveralls", "~> 0.8"

  spec.add_runtime_dependency "fluentd", [">= 0.14.10", "< 2"]
  spec.add_runtime_dependency "multi_json", "~> 1.13"
end
