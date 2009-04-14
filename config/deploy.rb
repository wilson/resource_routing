set :domain, "taigan-staging"
set :repository, "git://github.com/wilson/resource_routing.git"

set :mongrel_environment, "production"
set :rails_env, "production"
host "taigan-staging", :app, :db, :web, :primary

set :application, "routing"
set(:deploy_to) { "/data/#{application}" }

set :mongrel_port, 7000
set :mongrel_servers, 3
set :mongrel_group, "taigan"
set :mongrel_user, "taigan"
set :mongrel_log_file, "/data/routing/shared/log/mongrel.log"
set :mongrel_pid_file, "/var/run/mongrel/mongrel.pid"
set :web_command, "sudo /etc/init.d/nginx"

