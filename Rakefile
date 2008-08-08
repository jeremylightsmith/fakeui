task :gem do
  spec = eval(File.read(File.dirname(__FILE__) + "/fakeui.gemspec"))
  Gem::Builder.new(spec).build
end