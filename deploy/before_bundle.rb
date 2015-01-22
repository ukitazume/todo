on_utilities("sidekiq") do
  worker_count = 1

  (0...worker_count).each do |i|
    pid_file = "/var/run/engineyard/sidekiq/#{config.app}/sidekiq_#{i}.pid"
    run "kill -USR1 `cat #{pid_file}`" if File.exist?(pid_file)
  end
end
