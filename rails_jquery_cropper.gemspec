$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'rails_jquery_cropper/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'rails_jquery_cropper'
  s.version     = RailsJqueryCropper::VERSION
  s.authors     = ['Anton Antonov']
  s.email       = ['anton.synd.antonov@gmail.com']
  s.homepage    = 'https://github.com/syndbg/rails_jquery_cropper'
  msg = 'Integrates fengyuanchen\'s jQuery cropper with Rails\' asset pipeline'
  s.summary     = msg
  s.description = msg
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '>= 4.0.0'
  s.add_dependency 'jquery-rails'
end
