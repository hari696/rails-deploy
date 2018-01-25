set :branch, 'master'
set :stage, :production

# Setting RAILS_ENV environment variable on server
set :rails_env, :production
 
role :app, %w{root@139.59.93.164}

# Force rake through bundle exec
SSHKit.config.command_map[:rake] = "bundle exec rake"

# Force rails through bundle exec
SSHKit.config.command_map[:rails] = "bundle exec rails"

config.cache_classes = true
config.serve_static_assets = true
config.assets.compile = true
config.assets.digest = true