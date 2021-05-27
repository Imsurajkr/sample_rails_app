

set :application, "sample_rails_app"
set :repo_url, "https://github.com/Imsurajkr/sample_rails_app.git"
set :branch, "capistrano-deploy"
set :deploy_to, "/home/suraj/#{fetch :application}"
append :linked_files, "config/master.key"
#set :keep_releases, 5
set :log_level, :info
set :pty, true
set :format, :pretty

# I assume your plugins directory is at /home/suraj/rbenv/plugins
#    shims directory at /home/suraj/rbenv/shims
#    and so on ... Adapt the following to your situation

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=/usr/bin/rbenv"
#set :default_env, {
#    path: '/home/suraj/.rbenv/plugins/ruby-build/bin:/home/suraj/.rbenv/shims:/home/suraj/.rbenv/bin:$PATH',
#    rbenv_root: '/home/suraj/.rbenv/version/2.6.3'
#}
# set :rbenv_roles, :all
# set :rbenv_ruby, '2.6.3'
# set :rbenv_ruby_dir, '/home/suraj/.rbenv/versions/2.6.3'
# set :rbenv_custom_path, '/home/suraj/.rbenv'

