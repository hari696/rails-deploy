set :branch, 'master'
set :stage, :production

# Setting RAILS_ENV environment variable on server
set :rails_env, :production

set :normalize_asset_timestamps, %{public/images public/javascripts public/stylesheets}
 
role :app, %w{root@159.203.93.201}

# Force rake through bundle exec
SSHKit.config.command_map[:rake] = "bundle exec rake"

# Force rails through bundle exec
SSHKit.config.command_map[:rails] = "bundle exec rails"


# namespace :deploy do

#   desc 'Before bundle'
#   task :before_bundle do
#     on roles(:app), in: :sequence, wait: 5 do
#       within release_path do
#         with rails_env: fetch(:rails_env) do
#           execute "cd #{release_path} && rm -rf public/uploads"
#           execute "ln -s #{shared_path}/uploads #{release_path}/public/"
#         end
#       end
#     end
#   end

#   desc 'Restart application'
#   task :restart do
#     on roles(:app), in: :sequence, wait: 5 do
#       execute "chmod 777 -R #{shared_path}/tmp"
#       execute "chmod 777 -R #{shared_path}/uploads"
#       execute "sudo service nginx restart"
#       # execute "sudo touch #{File.join(current_path,'tmp','restart.txt')}"
#     end
#   end

#   before "bundler:install", 'deploy:before_bundle'
#   after :finishing, 'deploy:restart'
#   after :finishing, 'deploy:cleanup'

#   # after :bundle, 'deploy:after_bundle'
# end 