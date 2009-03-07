require "rubygems"
require "spec/rake/spectask"

Spec::Rake::SpecTask.new do |t|
  t.spec_opts = ['--options', "\"#{File.dirname(__FILE__)}/spec/spec.opts\""]
end

desc "Run the specs"
task :default => :spec