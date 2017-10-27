# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'younility_styles/version'

Gem::Specification.new do |spec|
  spec.name          = 'younility_styles'
  spec.version       = YounilityStyles::VERSION
  spec.authors       = ['Younility Inc']
  spec.email         = ['developer@younility.com']

  spec.summary       = 'Style definitions for Younility web-apps'
  spec.homepage      = 'https://younility.githost.io/platform/younility-styles'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://10.250.2.142:9292'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'minitest-reporters'
  spec.add_development_dependency 'rubocop', '= 0.48.0'
  spec.add_development_dependency 'scss_lint', '= 0.52.0'
  spec.add_development_dependency 'rails', '~> 4.2'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'mini_racer'

  spec.add_runtime_dependency 'bootstrap', '4.0.0.alpha6'
end
