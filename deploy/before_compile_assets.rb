#run! "ln -s #{config.shared_path}/config/aws.yml #{config.release_path}/config/aws.yml"
run "mkdir -p #{config.release_path}/public/assets"
run "touch #{config.release_path}/public/assets/#{Time.now}"
