
default_run_options[:pty] = true
  set :repository,  "git://github.com/dfiles/reunionprj.git"
  set :scm, "git"
  set :branch, "master"
  set :deploy_via, :remote_cache

# System Options
  set :use_sudo, false
  set :keep_releases, 3
  ssh_options[:forward_agent] = true
  set :user, :chs
  set :application, "production"
  set :deploy_to, "/home/chs/site/#{application}"

  #set :admin_runner, "chs"

  role :app, "www.chs1971.com"
  role :web, "www.chs1971.com" 
  role :db,  "www.chs1971.com", :primary => true

 namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end

  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end