Gem::Specification.new do |s|
  s.name = 'fakeui'
  s.version = "0.1"
  s.summary = "a view stub framework for testing rubycocoa applications"
  s.has_rdoc = true
  s.files = ['README', 'Rakefile', 'lib/**/*', 'spec/**/*'].map {|d| Dir.glob(d)}.flatten
  s.extra_rdoc_files = ['README']
  s.require_path = 'lib'
  s.author = "Jeremy Lightsmith"
  s.email = "jeremy.lightsmith@gmail.com"
#  s.rubyforge_project = "fakeui"
  s.homepage = "http://onemanswalk.com/"
end
