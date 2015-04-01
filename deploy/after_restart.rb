ENV['GEM_PATH']="#{ENV['GEM_HOME']}:/data/todo/shared/bundled_gems/ruby/1.9.1/gems"
require 'rubygems'
require 'dogapi'
dog = Dogapi::Client.new('api_key', 'application_key')
