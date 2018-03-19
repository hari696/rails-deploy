set :branch, 'master'
set :stage, :production

# Setting RAILS_ENV environment variable on server
set :rails_env, :production
 
role :app, %w{root@192.168.0.1}

# Force rake through bundle exec
SSHKit.config.command_map[:rake] = "bundle exec rake"

# Force rails through bundle exec
SSHKit.config.command_map[:rails] = "bundle exec rails"
