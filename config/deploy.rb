# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'moloney_collection'
set :repo_url, 'git@github.com:greggparrish/moloney_collection.git'
set :deploy_to, '/home/ubuntu/public/web/moloney'
set :deploy_user, 'ubuntu'
  
set :rails_env, "deploy" 
set :keep_releases, 5

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :finishing, 'deploy:cleanup'

end
