begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'rdoc/task'
require 'open-uri'

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'RailsJqueryCropper'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

Bundler::GemHelper.install_tasks

require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

task :update do
  js_url = 'https://cdn.rawgit.com/fengyuanchen/cropper/master/dist/cropper.js'
  css_url = 'https://cdn.rawgit.com/fengyuanchen/cropper/master/dist/cropper.css'

  js_path = 'vendor/assets/javascripts/cropper.js'
  css_path = 'vendor/assets//stylesheets/cropper.css'

  open(js_path, 'wb') do |f|
    latest = get_contents(js_url)
    f << latest unless latest.nil?
  end

  open(css_path, 'wb') do |f|
    latest = get_contents(css_url)
    f << latest unless latest.nil?
  end
end

def get_contents(url)
  begin
    open(url).read
  rescue OpenURI::HTTPError
    nil
  end
end

task default: :test
