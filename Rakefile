require "rake"

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "tunnel-vmc-plugin/version"

task :default => :spec

desc "Run specs"
task :spec => ["bundler:install", "test:spec"]

desc "Run integration tests"
task :test => ["bundler:install", "test:integration"]

task :build do
  sh "gem build tunnel-vmc-plugin.gemspec"
end

task :install => :build do
  sh "gem install --local tunnel-vmc-plugin-#{VMCTunnel::VERSION}.gem"
end

task :uninstall do
  sh "gem uninstall tunnel-vmc-plugin"
end

task :reinstall => [:uninstall, :install]

task :release => :build do
  sh "gem push tunnel-vmc-plugin-#{VMCTunnel::VERSION}.gem"
end

namespace "bundler" do
  desc "Install gems"
  task "install" do
    sh("bundle install")
  end
end

namespace "test" do
  task "spec" do |t|
    # nothing
  end

  task "integration" do |t|
    sh("cd spec && bundle exec rake spec")
  end
end
