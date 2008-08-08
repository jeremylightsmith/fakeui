require 'spec/rake/spectask'

task :default => :spec

Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
end

desc "generate a gem: in general, github should do this for you"
task :gem do
  `rm -rf *.gem`
  spec = eval(File.read(File.dirname(__FILE__) + "/fakeui.gemspec"))
  expected_files = ['README', 'Rakefile', 'lib/**/*', 'spec/**/*'].map {|d| Dir.glob(d)}.flatten
  unless spec.files.sort == expected_files.sort
    raise "expected gemspec to be \n\t#{expected_files.sort.inspect}\n" +
          "but was\n\t#{spec.files.sort.inspect}"
  end
  Gem::Builder.new(spec).build
end

desc "build and install gem"
task :install => :gem do
  `sudo gem install *.gem`
end
  