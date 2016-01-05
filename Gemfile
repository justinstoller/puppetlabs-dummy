# vim:ft=ruby

source ENV['GEM_SOURCE'] || "https://rubygems.org"

def location_for(place, version = nil)
  if place =~ /^(git[:@][^#]*)#(.*)/
    [fake_version, { :git => $1, :branch => $2}].compact
  elsif place =~ /^file:\/\/(.*)/
    ['>= 0', { :path => File.expand_path($1)}]
  else
    [place, version].compact
  end
end

group :development, :unit_tests do
  gem 'rspec-core', '3.1.7',     :require => false
  gem 'puppetlabs_spec_helper',  :require => false
  gem 'simplecov',               :require => false
  gem 'puppet_facts',            :require => false
  gem 'json',                    :require => false
  gem 'metadata-json-lint',      :require => false
  gem 'puppetlabs_spec_helper',  :require => false, :branch => 'compute_version'
  gem 'puppet-blacksmith',       :require => false, :branch => 'env_vars_for_forge'
end

group :system_tests do
  gem 'beaker-rspec', *location_for(ENV["BEAKER_RSPEC_VERSION"]),    :require => false
  gem 'beaker', *location_for(ENV["BEAKER_VERSION"]),                :require => false
  gem 'serverspec',                                                    :require => false
  gem 'beaker-puppet_install_helper',                                  :require => false
  gem 'master_manipulator',                                            :require => false
  gem 'beaker-hostgenerator', *location_for(ENV["BEAKER_VERSION"]),  :require => false
end



gem 'facter', *location_for(ENV['FACTER_GEM_VERSION']), require => false
gem 'puppet', *location_for(ENV['PUPPET_GEM_VERSION']), require => false

