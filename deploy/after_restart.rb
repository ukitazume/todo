on_app_master do
  require 'json'
  keys = JSON.parse(File.read("#{config.shared_path}/config/ey_services_config_deploy.json"))
  license_key = keys['New Relic']['license_key']
  run "#{config.current_path}/ey_bundler_binstubs/newrelic deployment --appname=#{config.app} --environment=#{config.environment_name} --user=\"#{config.deployed_by}\" --revision=#{config.active_revision} --license-key=#{license_key}"
end
