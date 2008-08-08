require 'spec/rake/spectask'

task :default => :spec

Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
end

desc "generate a gem: in general, github should do this for you"
task :gem do
  spec = eval(File.read(File.dirname(__FILE__) + "/fakeui.gemspec"))
  Gem::Builder.new(spec).build
end