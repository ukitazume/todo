# ENV['GEM_PATH']="#{ENV['GEM_HOME']}:#{config.shared_path}/bundled_gems/ruby/1.9.1/gems"
require 'rubygems'
require 'dogapi'
dog = Dogapi::Client.new('4db33cdab1957ca8a48a50a7c364b5de', 'bc327ab47c86ecb17c0c7178350abec3c3a8d0b4')
dog.emit_event(Dogapi::Event.new('msg_text', :msg_title => 'Title'))
