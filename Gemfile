if RUBY_VERSION =~ /1.9/
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

source 'https://rubygems.org'

ruby "2.2.3"
gem 'rails', '~> 6.0.3', '>= 6.0.3.5'

gem 'ey_config', '0.0.6'
gem 'jquery-rails', '~> 4.0', '>= 4.0.1'
gem 'rails_autolink', '>= 1.1.6'
gem 'simple_form', '>= 4.0.0'
gem 'bundler', '1.11.2', :require => false
gem "delayed_job_active_record", ">= 4.1.3"
gem 'settingslogic'



group :assets do
  gem 'sass-rails', '>= 5.0.8'
  gem 'coffee-rails', '>= 4.2.2'
  gem 'uglifier'
end

platform :ruby do
  gem 'mysql2', '~> 0.3'
  gem 'pg', '~> 0.17'
  gem 'sqlite3', '1.3.10' # 1.3.9 broken on rbx

  gem 'newrelic_rpm', '~> 3.6'
  gem 'unicorn', '~> 4.7'
  # gem 'puma', '~> 2.6'
  gem 'json', '~> 1.8'
  gem 'psych', '~> 2.0'
  gem 'racc', '~> 1.4'
end

platforms :jruby do
  ar_jdbc_version = '~> 1.3'
  gem 'activerecord-jdbc-adapter', ar_jdbc_version
  gem 'activerecord-jdbcmysql-adapter', ar_jdbc_version
  gem 'activerecord-jdbcpostgresql-adapter', ar_jdbc_version
  gem 'activerecord-jdbcsqlite3-adapter', ar_jdbc_version
  gem 'jdbc-mysql', :require => false
  gem 'jdbc-sqlite3', :require => false
  gem 'jdbc-postgres', :require => false

  gem 'jruby-openssl', '~> 0.9'
  gem 'trinidad', '~> 1.4'
end

platform :rbx do
  gem 'rubysl', '~> 2.0'
  gem 'rubysl-test-unit', '~> 2.0', :require => false
end

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do

end
