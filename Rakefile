require "bundler/gem_tasks"
require "rake/testtask"

task default: "help"

desc "Help"
task :help do
  puts <<HELP
All of these processes are taken by rake, below is the full list:

#{%x[rake -T]}

HELP
end

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

desc "Loaded path"
task :load_path do
  %w(lib test).each do |path|
    $LOAD_PATH.unshift(File.expand_path("../#{path}", __FILE__))
  end
end

desc "Remove temporary files"
task :clean do
  %x{rm -rf *.gem doc pkg}
end

desc "Build the gem"
task :gem do
  %x{gem build stisla-rails.gemspec}
end

desc "Build the Stisla resources"
task :stisla do
  %x{ruby stisla.rb}
end
