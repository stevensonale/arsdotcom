set :application, 'alexstevenson.com'
set :user, 'p627047r'
set :runner, user
set :domain, '66.84.0.139'
set :server_type, :thin
set :thin_port, '20950'
set :deploy_to, '/home/p627047r/apps/blogonhr'
set :scm, :git
set :repository,  'git@github.com:stevensonale/arsdotcom.git'
role :app, application 
role :web, application
set :deploy_via, :remote_cache
set :scm_username, 'stevensonale'
#set :scm_passphrase, 'rat68soo'
set :scm_verbose, true
ssh_options[:forward_agent] = false
set :branch, 'master'
set :use_sudo, false
default_run_options[:pty] = true
ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "id_rsa-admin")] 

# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

#role :web, 'your web-server here'                         # Your HTTP server, Apache/etc
#role :app, 'your app-server here'                         # This may be the same as your `Web` server
#role :db,  'your primary db-server here', :primary => true # This is where Rails migrations will run
#role :db,  'your slave db-server here'

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

#task to restart thin
namespace :deploy do
  %w(start stop restart).each do |action| 
     desc "#{action} the Thin processes"  
     task action.to_sym do
       find_and_execute_task("thin:#{action}")
    end
  end 
end


namespace :thin do  
  %w(start stop restart).each do |action| 
  desc "#{action} the app's Thin Cluster"  
    task action.to_sym, :roles => :app do  
      run "thin #{action} -c #{deploy_to}/current -C #{deploy_to}/current/config/thin.yml" 
    end
  end
end




# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end