on_app_master do
  require 'json'
  keys = JSON.parse(File.read("#{config.shared_path}/config/ey_services_config_deploy.json"))
  license_key = keys['New Relic']['license_key']
  app_name =  keys['base']['app_environment_name']
  run "#{config.current_path}/ey_bundler_binstubs/newrelic deployment --appname=\"#{app_name}\" --environment=#{config.environment_name} --user=\"#{config.deployed_by}\" --revision=#{config.active_revision} --license-key=#{license_key}"
end
