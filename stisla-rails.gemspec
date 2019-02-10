require File.expand_path('../lib/stisla-rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'stisla-rails'
  s.version       = Stisla::Rails::VERSION
  s.authors       = ['Cahyadi Triyansyah']
  s.email         = ['sundi3yansyah@gmail.com']
  s.summary       = %q{Integrates the Stisla theme with the Rails assets pipeline}
  s.homepage      = 'https://github.com/SunDi3yansyah/stisla-rails'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
