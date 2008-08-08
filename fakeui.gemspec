Gem::Specification.new do |s|
  s.name = 'fakeui'
  s.version = "0.1"
  s.summary = "a view stub framework for testing rubycocoa applications"
  s.has_rdoc = true
  s.files = [
    'README', 
    'Rakefile', 
    'lib/fakeui', 
    'lib/fakeui.rb', 
    'lib/fakeui/outline_view.rb', 
    'lib/fakeui/tab_view.rb', 
    'lib/fakeui/table_view.rb', 
    'lib/fakeui/text_field.rb', 
    'lib/fakeui/text_view.rb', 
    'lib/fakeui/window.rb', 
    'spec/fakeui',
    'spec/fakeui/text_view_spec.rb',
    'spec/spec_helper.rb'
  ]
  s.extra_rdoc_files = ['README']
  s.require_path = 'lib'
  s.author = "Jeremy Lightsmith"
  s.email = "jeremy.lightsmith@gmail.com"
#  s.rubyforge_project = "fakeui"
  s.homepage = "http://onemanswalk.com/"
end
