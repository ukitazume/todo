on_app_master do
  require "ey_config"
  run "#{config.current_path}/ey_bundler_binstubs/newrelic deployment --appname=#{config.app} --environment=#{config.environment_name} --user=#{config.deployed_by} --revision=#{config.active_revision} --license_key=#{EY::Config.get("New Relic", 'license_key')}"
end
