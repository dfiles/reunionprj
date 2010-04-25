
default_run_options[:pty] = true
  set :repository,  "git://github.com/dfiles/reunionprj.git"
  set :scm, "git"
  set :branch, "master"
  set :deploy_via, :remote_cache

set :application, "production"
  set :deploy_to, "/home/chs/current/site/#{application}"
  set :user, "deploy"
  set :admin_runner, "deploy"

  role :app, "www.chs1971.com"
  role :web, "www.chs1971.com <http://www.chs1971.com/>"                                                                                                             
  role :db,  "www.chs1971.com", :primary => true

  namespace :deploy do
    desc "Restart Application"
    task :restart, :roles => :app do
      run "touch #{current_path}/tmp/restart.txt"
    end
    desc "Start Application -- not needed for Passenger"
    task :start, :roles => :app do
      # nothing -- need to override default cap start task when using Passenger
    end
  end
