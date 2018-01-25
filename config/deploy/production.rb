set :branch, 'master'
set :stage, :production

# Setting RAILS_ENV environment variable on server
set :rails_env, :production
 
role :app, %w{root@139.59.37.218}

# Force rake through bundle exec
SSHKit.config.command_map[:rake] = "bundle exec rake"

# Force rails through bundle exec
SSHKit.config.command_map[:rails] = "bundle exec rails"
