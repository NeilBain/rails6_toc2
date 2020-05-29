# Place in /config/puma/development.rb

rails_env = "development"
environment rails_env

app_dir = "/home/neilb/www/rails6_toc2"

bind  "tcp://0.0.0.0"
port 3000
pidfile "#{app_dir}/puma.pid"
state_path "#{app_dir}/puma.state"
directory "#{app_dir}/"

stdout_redirect "#{app_dir}/log/puma.stdout.log", "#{app_dir}/log/puma.stderr.log", true

workers 2
threads 1,2

daemonize true

activate_control_app "unix://#{app_dir}/pumactl.sock"

prune_bundler
