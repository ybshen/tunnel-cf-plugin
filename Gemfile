source "http://rubygems.org"

#############
# WARNING: Separate from the Gemspec. Please update both files
#############

gemspec

gem "cfoundry"#, :git => "git://github.com/cloudfoundry/cfoundry.git", :submodules => true

group :development, :test do
  gem "cf", :git => "git://github.com/cloudfoundry/cf.git"
  gem "rake"
end

group :test do
  gem "rspec", "~> 2.11"
  gem "webmock", "~> 1.9"
  gem "fakefs", "~> 0.4.2"
end
