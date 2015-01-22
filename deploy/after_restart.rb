on_utilities("sidekiq") do

  # var
  worker_count = 1
  sidekiq_timeout = 8

  sudo "monit unmonitor all -g #{config.app}_sidekiq"

  (0...worker_count).each do |i|
    pid_file = "/var/run/engineyard/sidekiq/#{config.app}/sidekiq_#{1}.pid"
    info "TERM sidekiq #{i}"
    run "kill -TERM `cat #{pid_file}`" if File.exist?(pid_file)
  end

  info "waiting for sidekiq timeout.. "
  sleep sidekiq_timeout
  info "monitor start"
  sudo "monit monitor all -g #{config.app}_sidekiq"
end
